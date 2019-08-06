require 'httparty'


class Conformer
  include HTTParty


# NOTE:  data is string

  # convert SSN/ITIN w 123456789 format
  def conform_ssn(n)
    n = n.gsub(/[^0-9]/ ,"")
    if n.length != 9
      return "error"
    else
      return n
    end
  end

  # convert SSN/ITIN to 123-45-6789 format
  def conform_s_s_n(n)
    n = conform_ssn(n)
    n.insert(3,'-').insert(-5,'-')
  end

  # is an SSN number?  (note: excludes ITINs)
  def is_ssn(n)
    n = conform_ssn(n)
    !(n.length != 9 || n[0..2] == '000' || n[3..4] == '00' || n[5..8] == "0000" || n[0..2].to_i.between?(734,749) || n[0..2].to_i > 772)
  end

  # is a ITIN number?
  def is_itin(n)
    n = conform_ssn(n)
    n.length == 9 && n[0] == '9' && n[3].to_i.between?(7,8) && n[5..8] != "0000"
  end

  # convert EIN to 123456789 format
  def conform_ein(n)
    n = n.gsub(/[^0-9]/ ,"")
    if n.length != 9
      return "error"
    else
      return n
    end
  end

  # convert EIN to 12-3456789 format
  def conform_ei_n(n)
    n = conform_ein(n)
    n.insert(2,'-')
  end


end
