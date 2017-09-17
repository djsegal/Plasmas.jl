@testset "Omega Ce Function Tests" begin

  @test isdefined(Plasmas, :omega_ce) == true

  expected_value = 1.76e11

  actual_value = Plasmas.omega_ce()

  actual_value /= ( Plasmas.symbol_dict["B_0"] )

  actual_value *= 1u"s"

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
