module Rack
  class CorsAllowFonts
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, body = @app.call(env)
      if env['PATH_INFO'].to_s =~ /\.(woff|ttf)\z/
        headers['Access-Control-Allow-Origin'] ||= '*'
      end
      [status, headers, body]
    end
  end
end
