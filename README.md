# ruby-bundler-runner

# How to Use

In order to use this runner for your project, edit the `codingame.yml` file and add the following lines to your project:
```yaml
runner:
    name: codingame/ruby-bundler-runner
    version: 1.1.0-2.4
```
## Example

In this example, the student is asked to write a method to keep score for a bowling game `hit()` (file `lib/bowling.rb`):

```ruby
class Bowling
	attr_reader :score
	def hit(pin_count)
    #Write code here
	end
end
```

In order to test the answer, the following unit test is created (file `spec/bowling_spec.rb`):
```ruby
require 'bowling'
RSpec.describe Bowling, "#score" do
	context "with no strikes or spares" do
		it "sums the pin count" do
			bowling = Bowling.new
			20.times { bowling.hit(4) }
			expect(bowling.score).to eq 80
		end
	end
end
```

We include `rspec`, the popular unit testing tool by adding the dependency in a `Gemfile` at the project root as specified in the [official documentation](http://bundler.io/man/gemfile.5.html):
```ruby
source 'https://rubygems.org'
gem 'rspec', '~> 3.0'
```

In the lesson, the unit test can be called using:

`@[Test unittest: bowling]({"stubs":["lib/bowling.rb"], "command":"bundle exec bin/rspec --format doc -I lib/ spec/bowling_spec.rb"})`
