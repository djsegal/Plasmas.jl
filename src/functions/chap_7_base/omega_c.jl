"""
    omega_c(cur_m=m_0, cur_q=q_0, cur_B=B_0)

Lorem ipsum dolor sit amet.
"""
function omega_c(cur_m=m_0, cur_q=q_0, cur_B=B_0)
  cur_omega_c = abs(cur_q)

  cur_omega_c *= cur_B

  cur_omega_c /= cur_m

  cur_omega_c = uconvert(u"s^-1", cur_omega_c)

  cur_omega_c
end

function omega_c(cur_species::Species, cur_B_0=B_0)
  omega_c(
    cur_species.particle.m,
    cur_species.particle.q,
    cur_B_0
  )
end
