get '/surveys' do
	@surveys = Survey.all
	erb  :"surveys/index"
end

get '/surveys/:id/results' do
	@survey = Survey.find(params[:id])
	@responses = @survey.questions[0].responses
	erb :"/surveys/results"
end

get '/surveys/:id' do
	@survey = Survey.find(params[:id])
	erb :"surveys/show"
end


