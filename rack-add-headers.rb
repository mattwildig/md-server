class AddHeaders
  
  def initialize(app, headers)
    @app = app
    @injected_headers = headers
  end
  
  def call(env)
    status, headers, body = @app.call(env)
    headers.merge! @injected_headers
    [status, headers, body]
    
  end
end
    