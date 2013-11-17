require 'sinatra'
require './book_percentage_calculator'

get '/comparison' do 
  book_url_1 = params["book_url_1"]
  book_url_2 = params["book_url_2"]
  

  # puts StringPercentagesCalculator.calculate(string_1, string_2) # => 33%
  # puts StringPercentagesCalculator.calculate(string_2, string_1) # => 50%

  book_string_1 = open(book_url_1).read
  book_string_2 = open(book_url_2).read
  # puts book_string_1
  # puts book_string_2

  #StringPercentagesCalculator.calculate(book_string_2, book_string_1)
  erb :comparison, locals: {
    string: StringPercentagesCalculator.calculate(book_string_1, book_string_2),
    book_url_1: book_url_1,
    book_url_2: book_url_2
  }

end


get '/' do
  erb :form
end
