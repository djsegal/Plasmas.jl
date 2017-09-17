@testset "Particle Type Tests" begin

  @test isdefined(Plasmas, :Particle) == true

  @test_throws MethodError Plasmas.Particle()

  test_mass = 2u"kg"

  test_charge = 3u"C"

  cur_particle = Plasmas.Particle(test_mass, test_charge)

  @test cur_particle.m == test_mass

  @test cur_particle.q == test_charge

  @syms test_mass test_charge

  test_mass *= 1u"kg"

  test_charge *= 1u"C"

  cur_particle = Plasmas.Particle(test_mass, test_charge)

  @test cur_particle.m == test_mass

  @test cur_particle.q == test_charge

end
