@testset "Triton Constant Tests" begin

  @test isdefined(Plasmas, :triton) == true

  expected_value = 5.008e-27

  actual_value = Plasmas.triton.m / 1u"kg"

  @test isapprox(expected_value, actual_value, rtol=1e-2)

  expected_value = Unitful.q / 1u"C"

  actual_value = Plasmas.triton.q / 1u"C"

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
