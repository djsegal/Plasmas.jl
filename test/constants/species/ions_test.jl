@testset "Ions Constant Tests" begin

  @test isdefined(Plasmas, :ions) == true

  expected_value = Plasmas.deuteron

  actual_value = Plasmas.ions.particle

  @test expected_value == actual_value

  expected_value = Plasmas.n_i

  actual_value = Plasmas.ions.n

  @test expected_value == actual_value

  expected_value = Plasmas.T_i

  actual_value = Plasmas.ions.T

  @test expected_value == actual_value

end
