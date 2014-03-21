post '/response' do
	@user = User.find(session[:user_id])
	p params[:answer]
	@resp = Response.create(answer: params[:answer], question_id: params[:question], user_id: @user.id)
	redirect to "/surveys"
end
