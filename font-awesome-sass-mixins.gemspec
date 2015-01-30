Gem::Specification.new do |s|
	s.name = 'font-awesome-sass-mixins'
	s.version = '0.1.2'
	s.platform = Gem::Platform::RUBY
	s.licenses = ['MIT']
	s.summary = 'Font Awesome SASS mixins for pure SASS usage.'
	s.description = ''
	s.author = 'Peter M. Elias'
	s.authors = ['Peter M. Elias']
	s.email = 'petermelias@gmail.com'
	s.homepage = 'https://github.com/petermelias/font-awesome-sass-mixins'

	s.files = `git ls-files`.split("\n")
	s.test_files = `git ls-files -- test/*`.split("\n")
	s.require_paths = ['lib']

  s.add_runtime_dependency 'sass'
end