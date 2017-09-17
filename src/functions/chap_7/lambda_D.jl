"""
    lambda_D(cur_q=q_0, cur_n=n_0, cur_T=T_0)

Lorem ipsum dolor sit amet.
"""
function lambda_D(cur_q=q_0, cur_n=n_0, cur_T=T_0)
  cur_lambda_D = (
    eps_0 / abs(cur_q) ^ 2
  )

  cur_lambda_D *= (
    cur_T / cur_n
  )

  cur_lambda_D = sqrt(cur_lambda_D)

  cur_lambda_D = uconvert(u"m", cur_lambda_D)

  cur_lambda_D
end

function lambda_D(cur_species::Species)
  lambda_D(cur_species.particle.q, cur_species.n, cur_species.T)
end
