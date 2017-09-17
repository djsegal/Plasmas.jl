@testset "R L Function Tests" begin

  @test isdefined(Plasmas, :r_L) == true

  expected_value = 1.07e-4

  expected_value /= sqrt( Unitful.me / 1u"kg" )

  expected_value *= ( Unitful.q / 1u"C" )

  actual_value = Plasmas.r_L()

  actual_value *= Plasmas.symbol_dict["B_0"]

  actual_value /= sqrt( Plasmas.symbol_dict["T_0"] )

  actual_value /= sqrt( Plasmas.symbol_dict["m_0"] )

  actual_value *= ( Plasmas.symbol_dict["q_0"] )

  actual_value /= 1u"m"

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
