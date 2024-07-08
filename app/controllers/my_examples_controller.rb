class MyExamplesController < ApplicationController
  def get_random_fortune
    fortunes.sample
  end

  def generate_lotto_numbers
    numbers = (1..60).to_a.sample(6)
    numbers.uniq
  end

  def increment_visit_count
    visit_count += 1
  end

  fortune = get_random_fortune
  lotto_numbers = generate_lotto_numbers

  puts "Your fortune for today: #{fortune}"
  puts "Lotto numbers:#{lotto_numbers.join(", ")}"
  puts "Visit count:#{visit_count}"

  render json: { message: "Your fortune is" }
end
