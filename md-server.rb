#!/usr/bin/env ruby

require 'sinatra'
require 'rdiscount'

set :views, Dir.getwd

get "/" do
  @files = Dir.glob "*.md"
  erb :index
end

get "/:file.md" do
  markdown params[:file].to_sym
end

__END__

@@index

<ul>
<% @files.each do |f| %>
  <%="<li><a href='#{f}'>#{f}</a></li>"%>
<%end%>
</ul>
  