"""
    v_T(cur_m=m_0, cur_T=T_0)

Lorem ipsum dolor sit amet.
"""
function v_T(cur_m=m_0, cur_T=T_0)
  cur_v_T = sqrt(
    2 * cur_T / cur_m
  )

  cur_v_T = uconvert(u"m/s", cur_v_T)

  cur_v_T
end

function v_T(cur_species::Species)
  v_T(cur_species.particle.m, cur_species.T)
end
