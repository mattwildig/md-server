require 'tilt'
require 'nice_html_converter'

class NiceKramdownTemplate < Tilt::KramdownTemplate

  def evaluate(scope, locals, &block)
    result, warnings = NiceHtmlConverter.convert(@engine.root, @engine.options)
    if warnings.length > 0
      puts warnings
    end
    @output ||= result
  end

end
