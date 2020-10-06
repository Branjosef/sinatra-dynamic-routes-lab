require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do 
    @num = params[:number].to_i 
    @num = (@num**2).to_s
    "#{@num}"
  end

  get '/say/:number/:phrase' do   #repeats the phrase as a string by :number
    @num = params[:number].to_i 
    @phrase = params[:phrase]
    @output = @phrase * @num
    "#{@output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

  end 

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation].downcase
    @num1 = params[:number1].to_i 
    @num2 = params[:number2].to_i 
    case @operation
      when "add"
        @total = @num1 + @num2 
      when "subtract"
        @total = @num1 - @num2 
      when "multiply"
        @total = @num1 * @num2 
      when "divide"
        @total = @num1 / @num2 
    end

    "#{@total.to_s}"

  end

end