class MyExamplesController < ApplicationController
  def get_random_fortune
    fortunes = [
      "You are the best!",
      "You suck!",
      "You will win in life!",
    ]
    render json: { fortune: fortunes.sample }
  end

  def generate_lotto_numbers
    numbers = (1..60).to_a.sample(6)
    numbers.uniq

    render json: { lotto_numbers: numbers }
  end

  def increment_visit_count
    visit_count += 1

    render json: { count: count }
  end
end
