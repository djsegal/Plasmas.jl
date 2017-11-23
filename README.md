# Plasmas

[![Build Status](https://travis-ci.org/djsegal/Plasmas.jl.svg?branch=master)](https://travis-ci.org/djsegal/Plasmas.jl) [![codecov.io](http://codecov.io/github/djsegal/Plasmas.jl/coverage.svg?branch=master)](http://codecov.io/github/djsegal/Plasmas.jl?branch=master)

[![](https://img.shields.io/badge/docs-stable-blue.svg)](https://djsegal.github.io/Plasmas.jl/stable) [![](https://img.shields.io/badge/docs-latest-blue.svg)](https://djsegal.github.io/Plasmas.jl/latest)

# Description

Core plasma physics library built from material in:

+ [J. P. Freidberg's Plasma Physics and Fusion Energy](https://amazon.com/Plasma-Physics-Fusion-Jeffrey-Freidberg/dp/0521733170)
+ [F. F. Chen's Introduction to Plasma Physics](https://amazon.com/Introduction-Plasma-Physics-Francis-Chen/dp/1475704615)

# Usage

```
Pkg.add("Plasmas")
using Plasmas

v_Ti() 
# => 309390.302861861*sqrt(T_i) m s^-1

omega_ce() 
# => 175882002360.212*B_0 s^-1

r_L()
# => 1.2657711565682e-8*sqrt(2)*sqrt(T_0)*sqrt(m_0)/(B_0*q_0) m
```
