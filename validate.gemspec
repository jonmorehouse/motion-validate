require './lib/version.rb'

Gem::Specification.new do |gem|

  gem.name = "validate"
  gem.version = Validate::VERSION
  gem.authors = ["Jon Morehouse"]
  gem.email = ["morehousej09@gmail.com"]
  gem.homepage = "https://github.com/jonmorehouse/motion-validate"
  gem.license = "MIT"
  gem.summary = "Ruby Motion Validate wrapper"
  gem.description = "
    A ruby motion wrapper for successfully using validate in your project
  "

  # files
  gem.files = `git ls-files`.split($\)
  gem.test_files = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ["lib"]

end
