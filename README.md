# Common Lips
Common Lips is a language which compiles to Common Lisp. It has all the power of
Common Lisp, but with all the parenthesis swapped!

## Documentation
Please see the docstrings. A link to generated documentation may be added in the
future.

# Example
```
)defun fib )n(
  )if )< n 2(
    n
    )+ )fib )- n 1(( )fib )- n 2(((((

)format t "~d" )fib 10((
```

## Installation

Add this line to your application's Gemfile:

    gem 'common_lips'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install common_lips

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
