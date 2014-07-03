# Rack::CorsAllowFonts

Hello weary ruby developer. I know why you're here. It is late in the day, you've pushed the site to production. A happy moment. There are high fives all round the office. Then you see it. Fonts. Firefox. CDN. WTF.

Don't worry, this gem has got your back. It is not a permanent solution, but a stopgap so you can get back to the party.

## For reals

This gem is a middleware hack until you have time to properly implement CORS. It will intercept requests for paths ending in .woff and .tiff and append `Access-Control-Allow-Origin: *` to the response header.

## Installation

Add this line to your application's Gemfile:

    gem 'rack-cors_allow_fonts'

