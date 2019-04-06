using SymPy

symbol_list = []

append!(symbol_list, ["m_0", "q_0"])

append!(symbol_list, ["B_0", "E_0"])

append!(symbol_list, ["T_0", "T_e", "T_i"])
append!(symbol_list, ["n_0", "n_e", "n_i"])

append!(symbol_list, ["x", "y", "z", "t"])

append!(symbol_list, ["E_x", "E_y", "E_z", "E_t"])
append!(symbol_list, ["B_x", "B_y", "B_z", "B_t"])

append!(symbol_list, ["v_perp", "v_para", "v_0"])
append!(symbol_list, ["E_perp", "E_para"])

append!(symbol_list, ["theta", "phi"])

append!(symbol_list, ["omega_c_0", "omega_p_0"])

symbol_dict = Dict()
for cur_symbol in symbol_list
  symbol_dict[cur_symbol] = symbols(cur_symbol, positive=true)
end

m_0 = symbol_dict["m_0"] * 1u"kg"
q_0 = symbol_dict["q_0"] * 1u"C"

B_0 = symbol_dict["B_0"] * 1u"T"
E_0 = symbol_dict["E_0"] * 1u"V/m"

n_0 = symbol_dict["n_0"] * 1u"n20"
T_0 = symbol_dict["T_0"] * 1u"keV"

n_e = symbol_dict["n_e"] * 1u"n20"
T_e = symbol_dict["T_e"] * 1u"keV"

n_i = symbol_dict["n_i"] * 1u"n20"
T_i = symbol_dict["T_i"] * 1u"keV"

x = symbol_dict["x"] * 1u"m"
y = symbol_dict["y"] * 1u"m"
z = symbol_dict["z"] * 1u"m"
t = symbol_dict["t"] * 1u"s"

E_x = symbol_dict["E_x"] * 1u"V/m"
E_y = symbol_dict["E_y"] * 1u"V/m"
E_z = symbol_dict["E_z"] * 1u"V/m"
E_t = symbol_dict["E_t"] * 1u"V/m"

B_x = symbol_dict["B_x"] * 1u"T"
B_y = symbol_dict["B_y"] * 1u"T"
B_z = symbol_dict["B_z"] * 1u"T"
B_t = symbol_dict["B_t"] * 1u"T"

v_perp = symbol_dict["v_perp"] * 1u"m/s"
v_para = symbol_dict["v_para"] * 1u"m/s"

v_0 = symbol_dict["v_0"] * 1u"m/s"

E_perp = symbol_dict["E_perp"] * 1u"V/m"
E_para = symbol_dict["E_para"] * 1u"V/m"

theta = symbol_dict["theta"]
phi = symbol_dict["phi"]

omega_c_0 = symbol_dict["omega_c_0"] * 1u"1/s"
omega_p_0 = symbol_dict["omega_p_0"] * 1u"1/s"
