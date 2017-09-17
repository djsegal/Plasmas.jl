@testset "Lambda De Function Tests" begin

  @test isdefined(Plasmas, :lambda_De) == true

  expected_value = 2.35e-5

  actual_value = Plasmas.lambda_De()

  actual_value *= sqrt( Plasmas.symbol_dict["n_e"] )

  actual_value /= sqrt( Plasmas.symbol_dict["T_e"] )

  actual_value /= 1u"m"

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=5e-4)

  expected_value = 6.4e-5

  cur_species = Plasmas.Species(Plasmas.electron, 2u"n20", 15u"keV")

  actual_value = Plasmas.lambda_De(cur_species)

  actual_value /= 1u"m"

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
