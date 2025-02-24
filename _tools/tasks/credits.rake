# frozen_string_literal: true

GITHUB_REPO = %r{https://github\.com/([.\-_a-zA-Z0-9]+)/([.\-_a-zA-Z0-9]+)}

# KramdownVisitor is a helper class to visit the nodes in a Markdown/Kramdown document in the repository.
# You are able to specify the types of element you would like to restrict to.
class KramdownVisitor
  attr_accessor :visitor, :types

  def initialize(types = nil)
    self.types = types
  end

  def visit(element, &visitor)
    visitor.call(element) if types&.include?(element.type)

    element.children.each { |e| visit(e, &visitor) }
  end
end

desc 'update credits file from all repos'
task :credits do
  document = Kramdown::Document.new(File.read(File.join(BASE_PATH, 'README.md')))
  visitor = KramdownVisitor.new [:a]
  links = ['hack-different/apple-knowledge']

  visitor.visit(document.root) do |element|
    match = GITHUB_REPO.match(element.attr['href'])
    links << "#{match[1]}/#{match[2]}" if match
  end

  links.delete 'papers-we-love/papers-we-love'

  github = Octokit::Client.new(access_token: ENV['HOMEBREW_GITHUB_API_TOKEN'])
  credits = {}

  links.each do |repo|
    credits[repo] = { 'contributors' => github.contributors(repo).map { |c| c.to_h.stringify_keys } }
  rescue Octokit::Forbidden
    # TODO: GitHub won't work when its a fork of something large (like linux) - we could grab the org members
    # in leau which is usually what is meant
    break
  end

  puts credits.inspect

  File.write(File.join(BASE_PATH, '_data', 'credits.yaml'), credits.to_yaml)
end
