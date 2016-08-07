spec = Gem::Specification.new do |s|
  s.name = 'md-server'
  s.version = '0.0.5'
  s.summary = 'Simple server to show you what your markdown and other templates looks like when converted to html.'
  s.files = %w{md-server} + Dir['lib/**/*.rb']
  s.add_dependency 'rack'
  s.add_dependency 'rack-contrib'
  s.add_dependency 'tilt'
  s.add_dependency 'kramdown'
  s.bindir = '.'
  s.executables = %w{md-server}
  s.authors= ['Matt Wildig']
end
