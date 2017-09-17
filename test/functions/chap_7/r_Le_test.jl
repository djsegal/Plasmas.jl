@testset "R Le Function Tests" begin

  @test isdefined(Plasmas, :r_Le) == true

  expected_value = 1.07e-4

  actual_value = Plasmas.r_Le()

  actual_value *= Plasmas.symbol_dict["B_0"]

  actual_value /= sqrt( Plasmas.symbol_dict["T_e"] )

  actual_value /= 1u"m"

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

  expected_value = 8.3e-5

  cur_species = Plasmas.Species(Plasmas.electron, 0u"n20", 15u"keV")

  actual_value = Plasmas.r_Le(cur_species)

  actual_value /= 1u"m"

  actual_value = SymPy.subs(actual_value, Plasmas.symbol_dict["B_0"] => 5)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
