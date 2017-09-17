@testset "Deuteron Constant Tests" begin

  @test isdefined(Plasmas, :deuteron) == true

  expected_value = 3.343e-27

  actual_value = Plasmas.deuteron.m / 1u"kg"

  @test isapprox(expected_value, actual_value, rtol=1e-2)

  expected_value = Unitful.q / 1u"C"

  actual_value = Plasmas.deuteron.q / 1u"C"

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
