@testset "Omega C Function Tests" begin

  @test isdefined(Plasmas, :omega_c) == true

  expected_value = 1.76e11

  expected_value *= ( Unitful.me / 1u"kg" )

  expected_value /= ( Unitful.q / 1u"C" )

  actual_value = Plasmas.omega_c()

  actual_value /= ( Plasmas.symbol_dict["B_0"] )

  actual_value *= ( Plasmas.symbol_dict["m_0"] )

  actual_value /= ( Plasmas.symbol_dict["q_0"] )

  actual_value *= 1u"s"

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
