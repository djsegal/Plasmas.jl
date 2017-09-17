symbol_list = []

append!(symbol_list, ["B_0"])

for cur_symbol in symbol_list
  symbol_dict[cur_symbol] = symbols(cur_symbol, positive=true)
end

B_0 = symbol_dict["B_0"] * 1u"T"
