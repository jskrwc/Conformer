module Conformer
  module Abbreviations

    STATE_ABBR_TO_NAME = {
      'AL' => 'Alabama',
      'AK' => 'Alaska',
      'AS' => 'America Samoa',
      'AZ' => 'Arizona',
      'AR' => 'Arkansas',
      'CA' => 'California',
      'CO' => 'Colorado',
      'CT' => 'Connecticut',
      'DE' => 'Delaware',
      'DC' => 'District of Columbia',
      'FM' => 'Federated States Of Micronesia',
      'FL' => 'Florida',
      'GA' => 'Georgia',
      'GU' => 'Guam',
      'HI' => 'Hawaii',
      'ID' => 'Idaho',
      'IL' => 'Illinois',
      'IN' => 'Indiana',
      'IA' => 'Iowa',
      'KS' => 'Kansas',
      'KY' => 'Kentucky',
      'LA' => 'Louisiana',
      'ME' => 'Maine',
      'MH' => 'Marshall Islands',
      'MD' => 'Maryland',
      'MA' => 'Massachusetts',
      'MI' => 'Michigan',
      'MN' => 'Minnesota',
      'MS' => 'Mississippi',
      'MO' => 'Missouri',
      'MT' => 'Montana',
      'NE' => 'Nebraska',
      'NV' => 'Nevada',
      'NH' => 'New Hampshire',
      'NJ' => 'New Jersey',
      'NM' => 'New Mexico',
      'NY' => 'New York',
      'NC' => 'North Carolina',
      'ND' => 'North Dakota',
      'OH' => 'Ohio',
      'OK' => 'Oklahoma',
      'OR' => 'Oregon',
      'PW' => 'Palau',
      'PA' => 'Pennsylvania',
      'PR' => 'Puerto Rico',
      'RI' => 'Rhode Island',
      'SC' => 'South Carolina',
      'SD' => 'South Dakota',
      'TN' => 'Tennessee',
      'TX' => 'Texas',
      'UT' => 'Utah',
      'VT' => 'Vermont',
      'VI' => 'Virgin Island',
      'VA' => 'Virginia',
      'WA' => 'Washington',
      'WV' => 'West Virginia',
      'WI' => 'Wisconsin',
      'WY' => 'Wyoming'
    }


    # hash key = month no., value = ['name' => [abbr1, abbr2...]
    # eg-  '1':['January', 'Jan', 'Jany', Jnry]
    # nb key = month number, value[0] = month name
    MONTHS_NUM_NAME_ABBRS = {
      '1' => ['January'] + %w(Jan Jany Jnry Ja),
      '2' => ['February'] + %w(Feb Febr Fby),
      '3' => ['March'] + %w(Mar),
      '4' => ['April'] + %w(Apr Aprl Apl),
      '5' => ['May'] + %w(My),
      '6' => ['June'] + %w(Jun),
      '7' => ['July'] + %w(Jul Jly ),
      '8' => ['August'] + %w(Aug Au),
      '9' => ['September'] + %w(Sep Sept Septbr),
      '10' => ['October'] + %w(Oct Octo Octbr),
      '11' => ['November'] + %w(Nov Novem Nvmbr),
      '12' => ['December'] + %w(Dec Decem Dcmbr)
    }
  end
end
