module TimeagoHelper

  def javascript_path
    asset_path 'moment.js'
  end
  
  def context
    @context ||= V8::Context.new
  end

  def load_context
    context.load javascript_path
  end

  def relative_time time
    context.eval "moment(#{time}, 'YYYYMMDD').fromNow()"
  end
end
