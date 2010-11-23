spec = Gem::Specification.new do |s|
  s.name = 'md-server'
  s.version = '0.0.1.dev'
  s.summary = 'Simple server to show you what your markdown looks like when converted to html.'
  s.files = ['md-server']
  s.add_dependency 'sinatra'
  s.add_dependency 'rdiscount'
  s.bindir = '.'
  s.executables = %w{md-server}
end
