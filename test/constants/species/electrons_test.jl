@testset "Electrons Constant Tests" begin

  @test isdefined(Plasmas, :electrons) == true

  expected_value = Plasmas.electron

  actual_value = Plasmas.electrons.particle

  @test expected_value == actual_value

  expected_value = Plasmas.n_e

  actual_value = Plasmas.electrons.n

  @test expected_value == actual_value

  expected_value = Plasmas.T_e

  actual_value = Plasmas.electrons.T

  @test expected_value == actual_value

end
