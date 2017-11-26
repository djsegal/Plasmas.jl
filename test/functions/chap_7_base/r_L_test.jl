# focus: true
@testset "R L Function Tests" begin

  @test isdefined(Plasmas, :r_L) == true

  println(322)
  expected_value = 1.07e-4
  println(222222)
  expected_value /= sqrt( Unitful.me / 1u"kg" )
  println(2939)
  expected_value *= ( Unitful.q / 1u"C" )
  println(3222)
  actual_value = Plasmas.r_L()
  println(2121212)
  actual_value *= Plasmas.symbol_dict["B_0"]
  println(88888)
  println(eltype(Plasmas.symbol_dict["T_0"]))
    println(eltype(actual_value))
  actual_value /= sqrt( Plasmas.symbol_dict["T_0"] )
  println(223232)
  actual_value /= sqrt( Plasmas.symbol_dict["m_0"] )
  println(58585)
  actual_value *= ( Plasmas.symbol_dict["q_0"] )
  println(1234124123)
  actual_value /= 1u"m"
  println(2134123)
  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
