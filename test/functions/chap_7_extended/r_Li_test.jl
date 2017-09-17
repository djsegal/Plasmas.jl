@testset "R Li Function Tests" begin

  @test isdefined(Plasmas, :r_Li) == true

  expected_value = 6.46e-3

  actual_value = Plasmas.r_Li()

  actual_value *= Plasmas.symbol_dict["B_0"]

  actual_value /= sqrt( Plasmas.symbol_dict["T_i"] )

  actual_value /= 1u"m"

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

  expected_value = 5.0e-3

  cur_species = Plasmas.Species(Plasmas.deuteron, 0u"n20", 15u"keV")

  actual_value = Plasmas.r_Li(cur_species)

  actual_value /= 1u"m"

  actual_value = SymPy.subs(actual_value, Plasmas.symbol_dict["B_0"] => 5)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
