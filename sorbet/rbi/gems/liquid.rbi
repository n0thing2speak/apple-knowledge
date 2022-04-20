# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/liquid/all/liquid.rbi
#
# liquid-4.0.3

module Liquid
  def self.cache_classes; end
  def self.cache_classes=(arg0); end
end
class Liquid::ParseTreeVisitor
  def add_callback_for(*classes, &block); end
  def children; end
  def initialize(node, callbacks); end
  def self.for(node, callbacks = nil); end
  def visit(context = nil); end
end
class Liquid::Lexer
  def initialize(input); end
  def tokenize; end
end
class Liquid::Parser
  def argument; end
  def consume(type = nil); end
  def consume?(type); end
  def expression; end
  def id?(str); end
  def initialize(input); end
  def jump(point); end
  def look(type, ahead = nil); end
  def variable_signature; end
end
class Liquid::I18n
  def deep_fetch_translation(name); end
  def initialize(path = nil); end
  def interpolate(name, vars); end
  def locale; end
  def path; end
  def t(name, vars = nil); end
  def translate(name, vars = nil); end
end
class Liquid::I18n::TranslationError < StandardError
end
class Liquid::Drop
  def [](method_or_key); end
  def context=(arg0); end
  def inspect; end
  def invoke_drop(method_or_key); end
  def key?(_name); end
  def liquid_method_missing(method); end
  def self.invokable?(method_name); end
  def self.invokable_methods; end
  def to_liquid; end
  def to_s; end
end
class Liquid::TablerowloopDrop < Liquid::Drop
  def col0; end
  def col; end
  def col_first; end
  def col_last; end
  def first; end
  def increment!; end
  def index0; end
  def index; end
  def initialize(length, cols); end
  def last; end
  def length; end
  def rindex0; end
  def rindex; end
  def row; end
end
class Liquid::ForloopDrop < Liquid::Drop
  def first; end
  def increment!; end
  def index0; end
  def index; end
  def initialize(name, length, parentloop); end
  def last; end
  def length; end
  def name; end
  def parentloop; end
  def rindex0; end
  def rindex; end
end
class String
  def to_liquid; end
end
class Symbol
  def to_liquid; end
end
class Array
  def to_liquid; end
end
class Hash
  def to_liquid; end
end
class Numeric
  def to_liquid; end
end
class Range
  def to_liquid; end
end
class Time
  def to_liquid; end
end
class DateTime < Date
  def to_liquid; end
end
class Date
  def to_liquid; end
end
class TrueClass
  def to_liquid; end
end
class FalseClass
  def to_liquid; end
end
class NilClass
  def to_liquid; end
end
class Liquid::Error < StandardError
  def line_number; end
  def line_number=(arg0); end
  def markup_context; end
  def markup_context=(arg0); end
  def message_prefix; end
  def template_name; end
  def template_name=(arg0); end
  def to_s(with_prefix = nil); end
end
class Liquid::ArgumentError < Liquid::Error
end
class Liquid::ContextError < Liquid::Error
end
class Liquid::FileSystemError < Liquid::Error
end
class Liquid::StandardError < Liquid::Error
end
class Liquid::SyntaxError < Liquid::Error
end
class Liquid::StackLevelError < Liquid::Error
end
class Liquid::TaintedError < Liquid::Error
end
class Liquid::MemoryError < Liquid::Error
end
class Liquid::ZeroDivisionError < Liquid::Error
end
class Liquid::FloatDomainError < Liquid::Error
end
class Liquid::UndefinedVariable < Liquid::Error
end
class Liquid::UndefinedDropMethod < Liquid::Error
end
class Liquid::UndefinedFilter < Liquid::Error
end
class Liquid::MethodOverrideError < Liquid::Error
end
class Liquid::InternalError < Liquid::Error
end
class Liquid::Interrupt
  def initialize(message = nil); end
  def message; end
end
class Liquid::BreakInterrupt < Liquid::Interrupt
end
class Liquid::ContinueInterrupt < Liquid::Interrupt
end
class Liquid::Strainer
  def initialize(context); end
  def invoke(method, *args); end
  def self.add_filter(filter); end
  def self.create(context, filters = nil); end
  def self.filter_methods; end
  def self.global_filter(filter); end
  def self.invokable?(method); end
end
class Liquid::Expression
  def self.parse(markup); end
end
class Liquid::Expression::MethodLiteral
  def initialize(method_name, to_s); end
  def method_name; end
  def to_liquid; end
  def to_s; end
end
class Liquid::Context
  def [](expression); end
  def []=(key, value); end
  def add_filters(filters); end
  def apply_global_filter(obj); end
  def clear_instance_assigns; end
  def environments; end
  def errors; end
  def evaluate(object); end
  def exception_renderer; end
  def exception_renderer=(arg0); end
  def find_variable(key, raise_on_not_found: nil); end
  def global_filter; end
  def global_filter=(arg0); end
  def handle_error(e, line_number = nil); end
  def initialize(environments = nil, outer_scope = nil, registers = nil, rethrow_errors = nil, resource_limits = nil); end
  def internal_error; end
  def interrupt?; end
  def invoke(method, *args); end
  def key?(key); end
  def lookup_and_evaluate(obj, key, raise_on_not_found: nil); end
  def merge(new_scopes); end
  def partial; end
  def partial=(arg0); end
  def pop; end
  def pop_interrupt; end
  def push(new_scope = nil); end
  def push_interrupt(e); end
  def registers; end
  def resource_limits; end
  def scopes; end
  def squash_instance_assigns_with_environments; end
  def stack(new_scope = nil); end
  def strainer; end
  def strict_filters; end
  def strict_filters=(arg0); end
  def strict_variables; end
  def strict_variables=(arg0); end
  def template_name; end
  def template_name=(arg0); end
  def warnings; end
end
module Liquid::ParserSwitching
  def markup_context(markup); end
  def parse_with_selected_parser(markup); end
  def strict_parse_with_error_context(markup); end
end
class Liquid::Tag
  def blank?; end
  def initialize(tag_name, markup, parse_context); end
  def line_number; end
  def name; end
  def nodelist; end
  def options; end
  def parse(_tokens); end
  def parse_context; end
  def raw; end
  def render(_context); end
  def self.new(*arg0, ****); end
  def self.parse(tag_name, markup, tokenizer, options); end
  def tag_name; end
  include Liquid::ParserSwitching
end
class Liquid::Block < Liquid::Tag
  def blank?; end
  def block_delimiter; end
  def block_name; end
  def initialize(tag_name, markup, options); end
  def nodelist; end
  def parse(tokens); end
  def parse_body(body, tokens); end
  def render(context); end
  def unknown_tag(tag, _params, _tokens); end
end
class Liquid::BlockBody
  def blank?; end
  def check_resources(context, node_output); end
  def create_variable(token, parse_context); end
  def initialize; end
  def nodelist; end
  def parse(tokenizer, parse_context); end
  def raise_missing_tag_terminator(token, parse_context); end
  def raise_missing_variable_terminator(token, parse_context); end
  def registered_tags; end
  def render(context); end
  def render_node_to_output(node, output, context, skip_output = nil); end
  def whitespace_handler(token, parse_context); end
end
class Liquid::Document < Liquid::BlockBody
  def parse(tokens, parse_context); end
  def self.parse(tokens, parse_context); end
  def unknown_tag(tag, parse_context); end
end
class Liquid::Variable
  def evaluate_filter_expressions(context, filter_args, filter_kwargs); end
  def filters; end
  def filters=(arg0); end
  def initialize(markup, parse_context); end
  def lax_parse(markup); end
  def line_number; end
  def line_number=(arg0); end
  def markup_context(markup); end
  def name; end
  def name=(arg0); end
  def options; end
  def parse_context; end
  def parse_filter_expressions(filter_name, unparsed_args); end
  def parse_filterargs(p); end
  def raw; end
  def render(context); end
  def strict_parse(markup); end
  def taint_check(context, obj); end
  include Liquid::ParserSwitching
end
class Liquid::Variable::ParseTreeVisitor < Liquid::ParseTreeVisitor
  def children; end
end
class Liquid::VariableLookup
  def ==(other); end
  def evaluate(context); end
  def initialize(markup); end
  def lookups; end
  def name; end
  def self.parse(markup); end
  def state; end
end
class Liquid::VariableLookup::ParseTreeVisitor < Liquid::ParseTreeVisitor
  def children; end
end
class Liquid::RangeLookup
  def evaluate(context); end
  def initialize(start_obj, end_obj); end
  def self.parse(start_markup, end_markup); end
  def to_integer(input); end
end
class Liquid::BlankFileSystem
  def read_template_file(_template_path); end
end
class Liquid::LocalFileSystem
  def full_path(template_path); end
  def initialize(root, pattern = nil); end
  def read_template_file(template_path); end
  def root; end
  def root=(arg0); end
end
class Liquid::ResourceLimits
  def assign_score; end
  def assign_score=(arg0); end
  def assign_score_limit; end
  def assign_score_limit=(arg0); end
  def initialize(limits); end
  def reached?; end
  def render_length; end
  def render_length=(arg0); end
  def render_length_limit; end
  def render_length_limit=(arg0); end
  def render_score; end
  def render_score=(arg0); end
  def render_score_limit; end
  def render_score_limit=(arg0); end
  def reset; end
end
class Liquid::Template
  def apply_options_to_context(context, options); end
  def assigns; end
  def errors; end
  def initialize; end
  def instance_assigns; end
  def parse(source, options = nil); end
  def profiler; end
  def registers; end
  def render!(*args); end
  def render(*args); end
  def resource_limits; end
  def root; end
  def root=(arg0); end
  def self.default_exception_renderer; end
  def self.default_exception_renderer=(arg0); end
  def self.default_resource_limits; end
  def self.error_mode; end
  def self.error_mode=(arg0); end
  def self.file_system; end
  def self.file_system=(obj); end
  def self.parse(source, options = nil); end
  def self.register_filter(mod); end
  def self.register_tag(name, klass); end
  def self.tags; end
  def self.taint_mode; end
  def self.taint_mode=(arg0); end
  def tokenize(source); end
  def warnings; end
  def with_profiling(context); end
end
class Liquid::Template::TagRegistry
  def [](tag_name); end
  def []=(tag_name, klass); end
  def delete(tag_name); end
  def each(&block); end
  def initialize; end
  def lookup_class(name); end
  include Enumerable
end
module Liquid::StandardFilters
  def abs(input); end
  def append(input, string); end
  def apply_operation(input, operand, operation); end
  def at_least(input, n); end
  def at_most(input, n); end
  def capitalize(input); end
  def ceil(input); end
  def compact(input, property = nil); end
  def concat(input, array); end
  def date(input, format); end
  def default(input, default_value = nil); end
  def divided_by(input, operand); end
  def downcase(input); end
  def escape(input); end
  def escape_once(input); end
  def first(array); end
  def floor(input); end
  def h(input); end
  def join(input, glue = nil); end
  def last(array); end
  def lstrip(input); end
  def map(input, property); end
  def minus(input, operand); end
  def modulo(input, operand); end
  def newline_to_br(input); end
  def nil_safe_casecmp(a, b); end
  def nil_safe_compare(a, b); end
  def plus(input, operand); end
  def prepend(input, string); end
  def raise_property_error(property); end
  def remove(input, string); end
  def remove_first(input, string); end
  def replace(input, string, replacement = nil); end
  def replace_first(input, string, replacement = nil); end
  def reverse(input); end
  def round(input, n = nil); end
  def rstrip(input); end
  def size(input); end
  def slice(input, offset, length = nil); end
  def sort(input, property = nil); end
  def sort_natural(input, property = nil); end
  def split(input, pattern); end
  def strip(input); end
  def strip_html(input); end
  def strip_newlines(input); end
  def times(input, operand); end
  def truncate(input, length = nil, truncate_string = nil); end
  def truncatewords(input, words = nil, truncate_string = nil); end
  def uniq(input, property = nil); end
  def upcase(input); end
  def url_decode(input); end
  def url_encode(input); end
  def where(input, property, target_value = nil); end
end
class Liquid::StandardFilters::InputIterator
  def compact; end
  def concat(args); end
  def each; end
  def empty?; end
  def initialize(input); end
  def join(glue); end
  def reverse; end
  def uniq(&block); end
  include Enumerable
end
class Liquid::Condition
  def and(condition); end
  def attach(attachment); end
  def attachment; end
  def child_condition; end
  def child_relation; end
  def else?; end
  def equal_variables(left, right); end
  def evaluate(context = nil); end
  def initialize(left = nil, operator = nil, right = nil); end
  def inspect; end
  def interpret_condition(left, right, op, context); end
  def left; end
  def left=(arg0); end
  def operator; end
  def operator=(arg0); end
  def or(condition); end
  def right; end
  def right=(arg0); end
  def self.operators; end
end
class Liquid::Condition::ParseTreeVisitor < Liquid::ParseTreeVisitor
  def children; end
end
class Liquid::ElseCondition < Liquid::Condition
  def else?; end
  def evaluate(_context); end
end
module Liquid::Utils
  def self.slice_collection(collection, from, to); end
  def self.slice_collection_using_each(collection, from, to); end
  def self.to_date(obj); end
  def self.to_integer(num); end
  def self.to_number(obj); end
end
class Liquid::Tokenizer
  def initialize(source, line_numbers = nil); end
  def line_number; end
  def shift; end
  def tokenize; end
end
class Liquid::ParseContext
  def [](option_key); end
  def depth; end
  def depth=(arg0); end
  def error_mode; end
  def initialize(options = nil); end
  def line_number; end
  def line_number=(arg0); end
  def locale; end
  def locale=(arg0); end
  def partial; end
  def partial=(value); end
  def partial_options; end
  def trim_whitespace; end
  def trim_whitespace=(arg0); end
  def warnings; end
end
class Liquid::Assign < Liquid::Tag
  def assign_score_of(val); end
  def blank?; end
  def from; end
  def initialize(tag_name, markup, options); end
  def render(context); end
  def to; end
end
class Liquid::Assign::ParseTreeVisitor < Liquid::ParseTreeVisitor
  def children; end
end
class Liquid::Break < Liquid::Tag
  def interrupt; end
end
class Liquid::Capture < Liquid::Block
  def blank?; end
  def initialize(tag_name, markup, options); end
  def render(context); end
end
class Liquid::Case < Liquid::Block
  def blocks; end
  def initialize(tag_name, markup, options); end
  def left; end
  def nodelist; end
  def parse(tokens); end
  def record_else_condition(markup); end
  def record_when_condition(markup); end
  def render(context); end
  def unknown_tag(tag, markup, tokens); end
end
class Liquid::Case::ParseTreeVisitor < Liquid::ParseTreeVisitor
  def children; end
end
class Liquid::Comment < Liquid::Block
  def blank?; end
  def render(_context); end
  def unknown_tag(_tag, _markup, _tokens); end
end
class Liquid::Continue < Liquid::Tag
  def interrupt; end
end
class Liquid::Cycle < Liquid::Tag
  def initialize(tag_name, markup, options); end
  def render(context); end
  def variables; end
  def variables_from_string(markup); end
end
class Liquid::Cycle::ParseTreeVisitor < Liquid::ParseTreeVisitor
  def children; end
end
class Liquid::Decrement < Liquid::Tag
  def initialize(tag_name, markup, options); end
  def render(context); end
end
class Liquid::For < Liquid::Block
  def collection_name; end
  def collection_segment(context); end
  def from; end
  def initialize(tag_name, markup, options); end
  def lax_parse(markup); end
  def limit; end
  def nodelist; end
  def parse(tokens); end
  def render(context); end
  def render_else(context); end
  def render_segment(context, segment); end
  def set_attribute(key, expr); end
  def strict_parse(markup); end
  def unknown_tag(tag, markup, tokens); end
  def variable_name; end
end
class Liquid::For::ParseTreeVisitor < Liquid::ParseTreeVisitor
  def children; end
end
class Liquid::If < Liquid::Block
  def blocks; end
  def initialize(tag_name, markup, options); end
  def lax_parse(markup); end
  def nodelist; end
  def parse(tokens); end
  def parse_binary_comparisons(p); end
  def parse_comparison(p); end
  def push_block(tag, markup); end
  def render(context); end
  def strict_parse(markup); end
  def unknown_tag(tag, markup, tokens); end
end
class Liquid::If::ParseTreeVisitor < Liquid::ParseTreeVisitor
  def children; end
end
class Liquid::Ifchanged < Liquid::Block
  def render(context); end
end
class Liquid::Include < Liquid::Tag
  def attributes; end
  def initialize(tag_name, markup, options); end
  def load_cached_partial(template_name, context); end
  def parse(_tokens); end
  def parse_context; end
  def read_template_from_file_system(context); end
  def render(context); end
  def template_name_expr; end
  def variable_name_expr; end
end
class Liquid::Include::ParseTreeVisitor < Liquid::ParseTreeVisitor
  def children; end
end
class Liquid::Increment < Liquid::Tag
  def initialize(tag_name, markup, options); end
  def render(context); end
end
class Liquid::Raw < Liquid::Block
  def blank?; end
  def ensure_valid_markup(tag_name, markup, parse_context); end
  def initialize(tag_name, markup, parse_context); end
  def nodelist; end
  def parse(tokens); end
  def render(_context); end
end
class Liquid::TableRow < Liquid::Block
  def attributes; end
  def collection_name; end
  def initialize(tag_name, markup, options); end
  def render(context); end
  def variable_name; end
end
class Liquid::TableRow::ParseTreeVisitor < Liquid::ParseTreeVisitor
  def children; end
end
class Liquid::Unless < Liquid::If
  def render(context); end
end
