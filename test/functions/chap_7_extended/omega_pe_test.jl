@testset "Omega Pe Function Tests" begin

  @test isdefined(Plasmas, :omega_pe) == true

  expected_value = 5.64e11

  actual_value = Plasmas.omega_pe()

  actual_value /= sqrt( Plasmas.symbol_dict["n_e"] )

  actual_value *= 1u"s"

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=1e-2)

  expected_value = 8.0e11

  cur_species = Plasmas.Species(Plasmas.electron, 2u"n20", 0u"keV")

  actual_value = Plasmas.omega_pe(cur_species)

  actual_value *= 1u"s"

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
