require 'httparty'
require 'conformer/abbreviations'

module Conformer
  extend self

# NOTE:  pass a string to methods

  ERRORMESSAGE = "INVALID INPUT"
  # can customize, trying make generically useful (validation/exceptions are better raised and handled in the program utitlizing this gem)

  # convert SSN/ITIN w 123456789 format
  def conform_ssn(n)
    n = n.gsub(/[^0-9]/ ,"")
    if n.length != 9
      return ERRORMESSAGE
    else
      return n
    end
  end

  # convert SSN/ITIN to 123-45-6789 format
  def conform_s_s_n(n)
    n = conform_ssn(n)
    if n != ERRORMESSAGE
      n = n.insert(3,'-').insert(-5,'-')
    else
      return n
    end
  end

  # is a SSN number?  (note: excludes ITINs)
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
      return ERRORMESSAGE
    else
      return n
    end
  end

  # convert EIN to 12-3456789 format
  def conform_ei_n(n)
    n = conform_ein(n)
    if n != ERRORMESSAGE
      n = n.insert(2,'-')
    end
    return n
  end


  # convert phone number to 1234567890 format
  #  *NOTE converts letters to #'s';  removes leading "1"
  def conform_phone(n)
    n = n.upcase.tr('ABCDEFGHIJKLMNOPQRSTUVWXYZ','22233344455566677778889999')
    n = n.gsub(/[^0-9]/ ,"")
    n[0] = "" if n[0] == '1'
    if n.length != 10
      return ERRORMESSAGE
    else
      return n
    end
  end

  # convert phone number to 123-456-7890 format
  #  *NOTE converts letters to #'s';  removes leading "1"
  def conform_phone_num(n)
    n = conform_phone(n)
    if n != ERRORMESSAGE
      n = n.insert(3,'-').insert(-5,'-')
    end
    return n
  end

  # state/territory full name from 2 letter abbreviation
  def state_name_fr_abbr(st)
    state = Abbreviations::STATE_ABBR_TO_NAME[st.upcase]
    state.nil? ? ERRORMESSAGE : state
  end

  # state/territory 2 letter abbreviation from full name
  def st_abbr_fr_name(state)
    st = Abbreviations::STATE_ABBR_TO_NAME.key(state.titlecase)
    st.nil? ? ERRORMESSAGE : st
  end

  # month, if given month's number
  def month_fr_num(n)
    month = Abbreviations::MONTHS_NUM_NAME_ABBRS[n]
    month.nil? ? ERRORMESSAGE : month[0]
  end

  # gets number of month (string) given month name or abbreviation
  # NOTE: cleans up input string (removes non-letter/number characters)
  def month_num_fr_month(mo)
    mo = mo.titlecase.gsub(/[^0-9A-Za-z]/, "")
    month_arr = Abbreviations::MONTHS_NUM_NAME_ABBRS.find {|key, value| value.include? mo}
    month_arr.nil? ? ERRORMESSAGE :  month_arr[0]
  end

  # gets name of month given month name or abbreviation
  # NOTE: cleans up input string (removes non-letter/number characters)
  def month_fr_mo(mo)
    mo = mo.titlecase.gsub(/[^0-9A-Za-z]/, "")
    month_arr = Abbreviations::MONTHS_NUM_NAME_ABBRS.find {|key, value| value.include? mo}
    month_arr.nil? ? ERRORMESSAGE :  month_arr[1][0]
  end

end
