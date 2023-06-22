Gem::Specification.new do |spec|
	spec.name        = 'structverse'
	spec.version     = '1.0'
	spec.date        = '2023-06-21'
	spec.summary     = 'Structverse'
	spec.description = 'Utility for traversing hashes and arrays.'
	spec.authors     = ["Mike O'Sullivan"]
	spec.email       = 'mike@idocs.com'
	spec.homepage    = 'https://github.com/mikosullivan/structverse'
	spec.license     = 'MIT'
	
	spec.add_development_dependency 'json', '~> 1.0'
    
    spec.files = [
		'lib/structverse.rb',
		'README.md',
	]
end