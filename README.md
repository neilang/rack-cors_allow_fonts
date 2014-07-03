# Rack::CorsAllowFonts

Hello weary ruby developer. I know why you're here. It is late in the day, you've pushed the site to production. A happy moment. There are high fives all round the office. Then you see it. Fonts. Firefox. CDN. WTF.

Don't worry, this gem has got your back. It is not a permanent solution, but a stopgap so you can get back to the party.

## How it works

This gem is a middleware hack until you have time to properly implement CORS. It will intercept requests for paths ending in .woff and .tiff and append `Access-Control-Allow-Origin: *` to the response header.

## Installation

If you are using rails add this line to your Gemfile:

    gem 'rack-cors_allow_fonts', github: 'neilang/rack-cors_allow_fonts'

Then in `production.rb` you will need to include the rack middleware, somewhere near the top of the stack:

    config.middleware.insert_before(Rack::Cache, Rack::CorsAllowFonts)


Finally, you need to refresh your CDN (e.g. CloudFront) cache so it can detect the header change.
