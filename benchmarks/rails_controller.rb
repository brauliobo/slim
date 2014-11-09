require 'active_support/all'
require 'action_view'
require 'action_view/template'
require 'action_view/template/handlers/erb'
require 'action_dispatch'
require 'action_controller'

class RailsController < ActionController::Base
  include ActionView::Helpers::RenderingHelper

  def show_with_locals file, context
    render file: file, locals: {header: context.header, item: context.item}
  end
  def show_with_vars file, context
    @header = context.header
    @item = context.item
    render file: file
  end

end

