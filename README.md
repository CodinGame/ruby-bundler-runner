# ruby-rspec-runner

# What it Does

This Ruby2.4 runner This runner works with a Ruby project built with bundler. It will run `bundler exec` for every `rspec` command.

# How to Use

In order to use this runner for your project, edit the `codingame.yml` file and add the following lines to your project:

    runner:
      name: codingame/ruby-rspec-runner
      version: 1.0.1

# Compatibility

This builder can be used for any ruby project with a `Gemfile` containing an entry for `rspec`.

Compatible with `ruby-bundler-builder`.

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

In the lesson, the unit test can be called using:

`@[Test unittest: bowling]({"stubs":["lib/bowling.rb"], "command":"spec/bowling_spec.rb"})`
