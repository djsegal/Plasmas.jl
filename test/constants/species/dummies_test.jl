@testset "Dummies Constant Tests" begin

  @test isdefined(Plasmas, :dummies) == true

  expected_value = Plasmas.dummy

  actual_value = Plasmas.dummies.particle

  @test expected_value == actual_value

  expected_value = Plasmas.n_0

  actual_value = Plasmas.dummies.n

  @test expected_value == actual_value

  expected_value = Plasmas.T_0

  actual_value = Plasmas.dummies.T

  @test expected_value == actual_value

end
