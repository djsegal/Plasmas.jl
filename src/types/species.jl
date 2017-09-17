"""
    Species(particle, n, T)

Lorem ipsum dolor sit amet.
"""
type Species

  particle::Particle
  n::Union{PlasmaDensity, Quantity{SymPy.Sym, PlasmaDensity}}
  T::Union{PlasmaTemperature, Quantity{SymPy.Sym, PlasmaTemperature}}

end
