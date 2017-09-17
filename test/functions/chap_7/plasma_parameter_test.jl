@testset "Plasma Parameter Function Tests" begin

  @test isdefined(Plasmas, :plasma_parameter) == true

  expected_value = 4 / 3 * pi

  actual_value = Plasmas.plasma_parameter()

  actual_value *= Unitful.q ^ 3

  actual_value /= sqrt(Plasmas.eps_0) ^ 3

  actual_value *= sqrt(Plasmas.n_e)

  actual_value /= sqrt(Plasmas.T_e) ^ 3

  actual_value = actual_value |> NoUnits

  actual_value = SymPy.N(actual_value)

  @test isapprox(expected_value, actual_value, rtol=5e-4)

  expected_value = 5.4e6

  actual_value = Plasmas.plasma_parameter()

  actual_value *= sqrt(Plasmas.symbol_dict["n_e"])

  actual_value /= sqrt(Plasmas.symbol_dict["T_e"]) ^ 3

  @test isapprox(expected_value, actual_value, rtol=1e-2)

end
