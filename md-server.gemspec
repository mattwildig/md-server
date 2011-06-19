spec = Gem::Specification.new do |s|
  s.name = 'md-server'
  s.version = '0.0.3'
  s.summary = 'Simple server to show you what your markdown and other templates looks like when converted to html.'
  s.files = ['md-server']
  s.add_dependency 'rack'
  s.bindir = '.'
  s.executables = %w{md-server}
end
