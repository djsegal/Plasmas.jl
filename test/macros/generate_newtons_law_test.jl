@testset "Generate Newtons Law Macro Tests" begin

  @test isdefined(Plasmas, Symbol("@generate_newtons_law")) == true

end
