"""
    r_L(cur_m=m_0, cur_q=q_0, cur_T=T_0, cur_B_0=B_0)

Lorem ipsum dolor sit amet.
"""
function r_L(cur_m=m_0, cur_q=q_0, cur_T=T_0, cur_B_0=B_0)
  println(123)
  cur_r_L = (
    2 * cur_m * cur_T
  )
  println(321)
  cur_r_L = sqrt(cur_r_L)
  println(444)
  cur_r_L /= (
    abs(cur_q) * cur_B_0
  )
  println(555)
  cur_r_L = uconvert(u"m", cur_r_L)
  println(663)
  cur_r_L
end

function r_L(cur_species::Species, cur_B_0=B_0)
    println(0222)
  r_L(
    cur_species.particle.m,
    cur_species.particle.q,
    cur_species.T,
    cur_B_0
  )
end

