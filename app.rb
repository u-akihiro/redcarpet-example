require 'bundler'

Bundler.require

get '/' do
	erb :index
end

post '/html' do
	#erb :html

	markdown = params[:markdown]
	redcarpet = Redcarpet::Markdown.new Redcarpet::Render::HTML
	@html = redcarpet.render markdown
end
