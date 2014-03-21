get '/surveys' do
	@surveys = Survey.all
	erb  :"surveys/index"
end

get '/surveys/:id/results' do
	@survey = Survey.find(params[:id])
	@responses = @survey.questions[0].responses
  @responses_hash = Hash.new(0)
  @responses.each { |response|
            @responses_hash[response.answer] += 1 }
  @responses_hash.each { |key , value| puts "#{key} #{value}"}


	erb :"/surveys/results"
end

get '/surveys/:id' do
	@survey = Survey.find(params[:id])
	erb :"surveys/show"
end


