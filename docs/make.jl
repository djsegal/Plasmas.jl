using Documenter, Plasmas

makedocs(
  modules = [Plasmas],
  format = :html,
  sitename = "Plasmas.jl",
  pages = Any[
    "Home" => "index.md",
    "Code" => "code.md",
    "Glossary" => "glossary.md"
  ]
)

deploydocs(
  repo = "github.com/djsegal/Plasmas.jl.git",
  target = "build",
  deps = nothing,
  make = nothing
)
