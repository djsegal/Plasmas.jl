@testset "Lambda Di Function Tests" begin

  @test isdefined(Plasmas, :lambda_Di) == true

  expected_value = 2.35e-5

  actual_value = Plasmas.lambda_Di()

  actual_value *= sqrt( Plasmas.symbol_dict["n_i"] )

  actual_value /= sqrt( Plasmas.symbol_dict["T_i"] )

  actual_value /= 1u"m"

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=5e-4)

end
