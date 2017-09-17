@testset "Omega Ci Function Tests" begin

  @test isdefined(Plasmas, :omega_ci) == true

  expected_value = 4.79e7

  actual_value = Plasmas.omega_ci()

  actual_value /= ( Plasmas.symbol_dict["B_0"] )

  actual_value *= 1u"s"

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
