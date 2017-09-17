@testset "Species Type Tests" begin

  @test isdefined(Plasmas, :Species) == true

  test_density = 2u"n20"

  test_temperature = 3u"keV"

  cur_species = Plasmas.Species(Plasmas.dummy, test_density, test_temperature)

  @test cur_species.n == test_density

  @test cur_species.T == test_temperature

  @syms test_density test_temperature

  test_density *= 1u"n20"

  test_temperature *= 1u"keV"

  cur_species = Plasmas.Species(Plasmas.dummy, test_density, test_temperature)

  @test cur_species.n == test_density

  @test cur_species.T == test_temperature

end
