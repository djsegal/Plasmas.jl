using Unitful
using Unitful.DefaultSymbols

cd = Base.cd

eps_0 = Unitful.ϵ0
mu_0 = uconvert(u"T*m/MA", Unitful.μ0)

module PlasmaUnits
  using Unitful
  import Unitful.DefaultSymbols

  Unitful.@unit n20 "n20" PlasmaDensity 1e20/Unitful.m^3 false
  Unitful.@unit b "b" Barn 1e-28*Unitful.m^2 true
end

@derived_dimension PlasmaDensity Unitful.𝐋^-3
@derived_dimension PlasmaTemperature Unitful.𝐌*Unitful.𝐋^2*Unitful.𝐓^-2

Unitful.register(PlasmaUnits)
Unitful.register(Plasmas)
