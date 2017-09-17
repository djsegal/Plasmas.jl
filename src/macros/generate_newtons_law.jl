"""
    @generate_newtons_law

Lorem ipsum dolor sit amet.
"""
macro generate_newtons_law(cur_particle=dummy, cur_E=E, cur_B=B)
  quote
    function (t, u, du)
      if eltype(u) == SymPy.Sym
        r, v = copy(u[1:3]), copy(u[4:6])
        du = Array{Any}(6)
      else
        r, v = u[1:3], u[4:6]
      end

      r *= 1u"m"
      v *= 1u"m/s"

      x, y, z, = r
      dx, dy, dz = v

      du[1] = dx
      du[2] = dy
      du[3] = dz

      charge_to_mass = $(esc(cur_particle)).q
      charge_to_mass /= $(esc(cur_particle)).m

      E_field = $(esc(cur_E))
      B_field = $(esc(cur_B))

      du[4] = field_subs(E_field.x, x, y, z, t)
      du[5] = field_subs(E_field.y, x, y, z, t)
      du[6] = field_subs(E_field.z, x, y, z, t)

      B_field_x = field_subs(B_field.x, x, y, z, t)
      B_field_y = field_subs(B_field.y, x, y, z, t)
      B_field_z = field_subs(B_field.z, x, y, z, t)

      du[4] += dy * B_field_z - dz * B_field_y
      du[5] += dz * B_field_x - dx * B_field_z
      du[6] += dx * B_field_y - dy * B_field_x

      du[4:6] .*= charge_to_mass

      du ./= 1u"m/s"
      du[4:6] .*= 1u"s"

      for cur_index in 4:6
        du[cur_index] = du[cur_index] |> NoUnits
      end

      du
    end
  end
end
