Gem::Specification.new do |s|
  s.name = 'Blackjack'
  s.version = '0.0.1'
  s.date = '2013-06-15'
  s.summary = "A blackjack bot for Cloudsdale.org"
  s.description = "The first half of 'Blackjack and Hookers'"
  s.authors = ["Aethe"]
  s.email = 'aethe@cloudsdale.org'
  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.homepage = 'https://www.cloudsdale.org'

  s.add_runtime_dependency 'cloudsdale'
  s.add_runtime_dependency 'trollop'
end
