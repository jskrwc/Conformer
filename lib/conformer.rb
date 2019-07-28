require 'httparty'


class Conformer
  include HTTParty

  # convert to SSN w 123456789 format
  def conform_ssn(n)
    n = n.gsub(/[^0-9]/ ,"")
    if n.length != 9 return "error"
    return n
  end

  # convert to SSN w 123-45-6789 format
  def conform_s_s_n(n)
    n = conform_ssn(n)
    n.insert(3,'-').insert(-4,'-')
  end

  # is SSN number?  (includes ITINs)
  def is_SSN(n)
    n = conform_ssn(n)
    !(n.length != 9 || n(0..2) == '000' || n(3..4) == '00' || n(6..9) ="0000" ||
      n(0..2).between?(734,749) || n(0..2) > 772)
  end

  # is ITIN number?
  def is_itn(n)
    n = conform_ssn(n)
    n.is_SSN? && n(0) = '9' && n(3).between(7,8)
  end


end
