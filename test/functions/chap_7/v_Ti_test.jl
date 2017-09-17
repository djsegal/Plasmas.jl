@testset "V Ti Function Tests" begin

  @test isdefined(Plasmas, :v_Ti) == true

  expected_value = sqrt(2)

  actual_value = Plasmas.v_Ti()

  actual_value /= Plasmas.omega_pi()

  actual_value /= Plasmas.lambda_Di()

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
