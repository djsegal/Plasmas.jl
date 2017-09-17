@testset "Electron Constant Tests" begin

  @test isdefined(Plasmas, :electron) == true

  expected_value = 9.109e-31

  actual_value = Plasmas.electron.m / 1u"kg"

  @test isapprox(expected_value, actual_value, rtol=1e-2)

  expected_value = -Unitful.q / 1u"C"

  actual_value = Plasmas.electron.q / 1u"C"

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
