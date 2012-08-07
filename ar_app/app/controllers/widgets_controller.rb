class WidgetsController < ApplicationController
  #def index
    #@widgets = Widget.last(10)
  #end

  def index
    @widgets = Widget.order('length DESC').last(10)
  end
end
