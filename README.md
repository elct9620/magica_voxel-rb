# MagicaVoxel

The [MagicaVoxel](https://ephtracy.github.io/) `.vox` reader written in Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'magica_voxel'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install magica_voxel

## Usage

```ruby
require 'magica_voxel'

vox = MagicaVoxel::File.new('chr_knight.vox')

puts "Format: #{vox.format}"
puts "Version: {vox.version}"

vox.root.each do |chunk|
  if chunk.is_a?(MagicaVoxel::Node)
    # Read content inside chunk
    puts "Node hidden: #{chunk.hidden?}"
  else
    # Read children in chunk
    chunk.each do |child|
      # ...
    end
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/elct9620/magica_voxel-rb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/elct9620/magica_voxel-rb/blob/main/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the MagicaVoxel project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/elct9620/magica_voxel-rb/blob/main/CODE_OF_CONDUCT.md).
