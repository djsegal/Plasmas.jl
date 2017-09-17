"""
    plasma_parameter()

Lorem ipsum dolor sit amet.
"""
function plasma_parameter()
  cur_lambda_D = 4 / 3 * pi

  cur_lambda_D *= electrons.n

  cur_lambda_D *= lambda_De() ^ 3

  cur_lambda_D = cur_lambda_D |> NoUnits

  cur_lambda_D
end
