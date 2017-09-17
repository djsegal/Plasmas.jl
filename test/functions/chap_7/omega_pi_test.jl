@testset "Omega Pi Function Tests" begin

  @test isdefined(Plasmas, :omega_pi) == true

  expected_value = 9.33e9

  actual_value = Plasmas.omega_pi()

  actual_value /= sqrt( Plasmas.symbol_dict["n_i"] )

  actual_value *= 1u"s"

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
