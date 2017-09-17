@testset "Omega P Function Tests" begin

  @test isdefined(Plasmas, :omega_p) == true

  expected_value = 5.64e11

  expected_value *= sqrt( Unitful.me / 1u"kg" )

  expected_value /= ( Unitful.q / 1u"C" )

  actual_value = Plasmas.omega_p()

  actual_value /= sqrt( Plasmas.symbol_dict["n_0"] )

  actual_value *= sqrt( Plasmas.symbol_dict["m_0"] )

  actual_value /= ( Plasmas.symbol_dict["q_0"] )

  actual_value *= 1u"s"

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
