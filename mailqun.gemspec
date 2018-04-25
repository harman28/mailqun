Gem::Specification.new do |spec|
  spec.name          = "mailqun"
  spec.version       = "0.1.3"
  spec.authors       = ["Harman Singh"]
  spec.email         = ["harman28@gmail.com"]

  spec.summary       = "Command line query tool for Mailgun, cos their website is rubbish."
  spec.description   = "Mailgun's website is stupid, so this script lets you query events from commandline."
  spec.homepage      = "https://github.com/harman28/mailqun"
  spec.license       = "MIT"
  spec.bindir        = "."
  spec.executables   = "mailqun"
  spec.require_paths = ['.']

  spec.add_dependency "colorize", "~> 0.8.1"
end
