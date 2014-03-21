post '/response' do
	@response = Response.create(answer: params[:answer])
	redirect to "/surveys"
end
