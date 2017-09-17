@testset "V Te Function Tests" begin

  @test isdefined(Plasmas, :v_Te) == true

  expected_value = sqrt(2)

  actual_value = Plasmas.v_Te()

  actual_value /= Plasmas.omega_pe()

  actual_value /= Plasmas.lambda_De()

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
