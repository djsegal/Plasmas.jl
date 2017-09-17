@testset "V T Function Tests" begin

  @test isdefined(Plasmas, :v_T) == true

  expected_value = sqrt(2)

  actual_value = Plasmas.v_T()

  actual_value /= Plasmas.omega_p()

  actual_value /= Plasmas.lambda_D()

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
