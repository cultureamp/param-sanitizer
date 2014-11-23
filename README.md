param-sanitizer
===============
[![Build Status](https://travis-ci.org/knoxknox/param-sanitizer.svg?branch=master)](https://travis-ci.org/knoxknox/param-sanitizer)

This gem allows you to sanitize request.
```ruby
# application_controller.rb
before_filter :filter_params!

def filter_params!
  ParamSanitizer.instance.execute(params)
end
```
It strips all HTML tags from user input recursively.
