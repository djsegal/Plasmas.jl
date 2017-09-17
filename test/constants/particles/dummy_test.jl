@testset "Dummy Constant Tests" begin

  @test isdefined(Plasmas, :dummy) == true

  expected_value = Plasmas.m_0 / 1u"kg"

  actual_value = Plasmas.dummy.m / 1u"kg"

  @test isapprox(expected_value, actual_value, rtol=1e-2)

  expected_value = Plasmas.q_0 / 1u"C"

  actual_value = Plasmas.dummy.q / 1u"C"

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
