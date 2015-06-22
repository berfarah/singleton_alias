# SingletonAlias

I wrote this as a gem just because I'm doing this all the time to make my classes more concise.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'singleton_alias'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install singleton_alias

## Usage

```ruby
class MyClass
  include SingletonAlias
  singleton_alias :my_method

  def initialize(some, arguments)
    @some = some
    @arguments = arguments
  end

  def my_method
    "#{@some} + #{@arguments}"
  end
end

MyClass.my_method('some', 'arguments')
# => "some + arguments"

# Same as calling:
MyClass.new('some', 'arguments').my_method
# => "some + arguments"
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/singleton_alias/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
