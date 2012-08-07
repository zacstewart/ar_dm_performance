require 'test_helper'
require 'rails/performance_test_help'

class WidgetsTest < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
  self.profile_options = { :runs => 100, :metrics => [:wall_time, :memory],
                           :output => 'tmp/performance', :formats => [:flat] }

  def test_widgets
    puts Widget.count
    Widget.all
  end

  def test_widgets_longer_than_10
    Widget.where('length > ?', 10).all
  end

end
