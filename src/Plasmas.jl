module Plasmas
  import Julz
  using OrdinaryDiffEq

  cd("$(dirname(@__FILE__))/..") do
    include("../config/bootload.jl")
  end

  function main()
    load_input("input.jl", true)

    open("output.jl", "w") do cur_file
      write(cur_file, "output = []")
    end

    println("done.")
  end
end
