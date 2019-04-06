"""
    field_subs(cur_value, cur_x, cur_y, cur_z, cur_t)

Lorem ipsum dolor sit amet.
"""
function field_subs(cur_value, cur_x, cur_y, cur_z, cur_t)
  cur_value = subs(
    cur_value,
    symbol_dict["x"] => cur_x / 1u"m",
    symbol_dict["y"] => cur_y / 1u"m",
    symbol_dict["z"] => cur_z / 1u"m",
    symbol_dict["t"] => cur_t / 1u"s"
  )

  cur_value
end
