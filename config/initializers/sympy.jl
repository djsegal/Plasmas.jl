using SymPy

symbol_list = []

append!(symbol_list, ["T_0", "T_e", "T_i"])
append!(symbol_list, ["n_0", "n_e", "n_i"])

append!(symbol_list, ["m_0", "q_0"])

symbol_dict = Dict()
for cur_symbol in symbol_list
  symbol_dict[cur_symbol] = symbols(cur_symbol, positive=true)
end

m_0 = symbol_dict["m_0"] * 1u"kg"
q_0 = symbol_dict["q_0"] * 1u"C"

n_0 = symbol_dict["n_0"] * 1u"n20"
T_0 = symbol_dict["T_0"] * 1u"keV"

n_e = symbol_dict["n_e"] * 1u"n20"
T_e = symbol_dict["T_e"] * 1u"keV"

n_i = symbol_dict["n_i"] * 1u"n20"
T_i = symbol_dict["T_i"] * 1u"keV"
