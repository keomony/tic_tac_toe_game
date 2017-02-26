def play_with_inputs(output, input, users_inputs)
  output.readline
  users_inputs.each do |user_input|
    3.times {output.readline}
    input.puts user_input; output.readline
  end
end
