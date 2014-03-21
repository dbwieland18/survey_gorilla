get '/users/new' do
	erb :"/users/new"
end

post '/users' do
	@user = User.new(name: params[:name], email: params[:email], password_digest: params[:password])
	if @user.save
		session[:user_id] = @user.id
		redirect_to "/"
	else
		erb :"/users/new"
	end
end
