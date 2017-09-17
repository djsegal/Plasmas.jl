@testset "Lambda D Function Tests" begin

  @test isdefined(Plasmas, :lambda_D) == true

  expected_value = 2.35e-5

  expected_value *= ( Unitful.q / 1u"C" )

  actual_value = Plasmas.lambda_D()

  actual_value *= sqrt( Plasmas.symbol_dict["n_0"] )

  actual_value /= sqrt( Plasmas.symbol_dict["T_0"] )

  actual_value *= ( Plasmas.symbol_dict["q_0"] )

  actual_value /= 1u"m"

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=5e-4)

end
