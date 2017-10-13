"""
    default_subs(cur_value)

Lorem ipsum dolor sit amet.
"""
function default_subs(cur_value)
  cur_v_0 = symbol_dict["v_0"]

  cur_v_para_frac = default_values["v_para_frac"]
  cur_v_perp_frac = sqrt( 1.0 - cur_v_para_frac ^ 2 )

  cur_value = subs(
    cur_value,
    symbol_dict["v_para"] => cur_v_0 * cur_v_para_frac,
    symbol_dict["v_perp"] => cur_v_0 * cur_v_perp_frac
  )

  cur_value = subs(
    cur_value,
    default_values
  )

  cur_value
end
