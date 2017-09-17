"""
    omega_p(cur_m=m_0, cur_q=q_0, cur_n=n_0)

Lorem ipsum dolor sit amet.
"""
function omega_p(cur_m=m_0, cur_q=q_0, cur_n=n_0)
  cur_omega_p = (
    abs(cur_q) ^ 2 / eps_0
  )

  cur_omega_p *= (
    cur_n / cur_m
  )

  cur_omega_p = sqrt(cur_omega_p)

  cur_omega_p = uconvert(u"s^-1", cur_omega_p)

  cur_omega_p
end

function omega_p(cur_species::Species)
  omega_p(
    cur_species.particle.m,
    cur_species.particle.q,
    cur_species.n
  )
end

