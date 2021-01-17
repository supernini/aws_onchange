# AwsOnchange
A simple gem to start watch a specific field in a model.
When this field is update, an action is call


## Getting started
Add this line to your application's Gemfile:

```ruby
gem 'aws_onchange'
```

And then execute:
```bash
$ bundle install
```

Or install it yourself as:
```bash
$ gem install aws_onchange
```

## Usage
```
aws_onchange :checked_field => [:field1, :field3], :method => :update_action, :oncreate => true
```
Add this line on the model and replace field1, field_3 with the field
checked_field: array of checked field
method: name of the called method in case of change
oncreate: If set to true the previous method is also call on creation

### Example

```
class MyModels < ActiveRecord::Base
  aws_onchange :checked_field => [:field1, :field3], :method => :update_action, :oncreate => true

  def update_action
    #action to do
  end
end
```
## History
v 2.0 - Janvier 2021 ... time fly
Update for rails 6

v 1.0 - November 2010
Add-on to use check easily change on some model, and running action

see wiki for more detailled information : http://wiki.github.com/supernini/aws_onchange/

## Contributor
You want to contribute ? I need to finish the test

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
