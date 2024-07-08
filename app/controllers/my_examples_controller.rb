class MyExamplesController < ApplicationController
  def fortune_method
    input = gets.chomp

    render json: { message: "Your fortune is" }
  end
end
