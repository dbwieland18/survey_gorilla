get '/surveys' do
	@surveys = Survey.all
	erb  :"surveys/index"
end

get '/surveys/:id' do
	@survey = Survey.find(params[:id])
	erb :"surveys/show"
end

# Show the form to create a new survey (new)
get "/surveys/new" do
  erb :"surveys/new"
  erb :"questions/new"
  erb :"possible_choices/new"
end

# Create a new survey (create)
post "/surveys" do
  @survey = Survey.new(params)
  if @survey.save
    redirect to("/surveys/#{@survey.id}")
  else
    erb :"surveys/new"
  end
end
