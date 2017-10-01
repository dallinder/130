def decipher(name)
  breaker = { 'a'=>'n', 'b'=>'o', 'c'=>'p', 'd'=>'q', 'e'=>'r', 'f'=>'s', 'g'=>'t', 'h'=>'u', 'i'=>'v', 'j'=>'w', 'k'=>'x', 'l'=>'y', 'm'=>'z' }
  name = name.downcase!.chars

  name.map do |letter|
    if breaker.keys.include?(letter)
      breaker[letter]
    elsif breaker.values.include?(letter)
      breaker.key(letter)
    else
      ' '
    end
  end.join.split.map(&:capitalize).join(' ')
end

ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

ENCRYPTED_PIONEERS.each do |pioneer|
  p decipher(pioneer)
end
