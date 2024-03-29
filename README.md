# Conformer
![Conformer Logo](https://github.com/jskrwc/Conformer/blob/master/Conformer_Logo.png)
By [knopf.io/)


**Conformer** is intended to be a flexible tool to help normalize various data to standardized formats.  Eg. SSN, date, name, phone numbers, addresses, email etc. It will format, and in some case validate data (by referencing online sources or incoporating standard parameters e.g. domain name has a valid root, or SSN has valid prefix).

The basic goal of **Conformer** is to take care of the many of the mundane formatting issues that frequently arise.  Rather than continuously reinventing the wheel (or spending time googling the wheel), useful and common data formatting methods can be aggregated here.  


## Installation

Add it to your Gemfile:

```ruby
gem 'conformer'
```

Run the following command to install it:

```console
bundle install
```


## Usage

**Conformer** is essentially a collection of methods.  Call the methods on the data you wish to format, and the data will be returned in that particular format.  The method nomenclature is hopefully useful, and often sufficient to inform what will be returned. Methods are named with form **conform-_methodname_**

For example, the method `conform_ssn(input)` will return  `'123456789'`

for inputs of `123-45-6789`, `123.45.6789`, `123 45 6789` etc...`

Similarly, the method `conform_s_s_n(input)` will return `'123-45-6789'` for those same inputs.





To start using **Conformer** you just have to call the desired method passing a single string argument

By default, all arguments are a single _string_.



## Available methods

The following table shows the available methods in the gem, some sample input and outputs.


Method             | Sample inputs                                   | Output                    | Notes
-------------------|-------------------------------------------------|---------------------------|----------------------
conform_ssn()      | '123456789', '123-45-6789', '123 45 6789'       | `'123456789'`             | works for ITIN's too
conform_ssn()      | '12789', 'asf-DE-fd12', '123-456-7899'          | `ERRORMESSAGE`            |  
conform\_s\_s\_n() | '123456789', '123-45-6789', '123 45 6789'       | `'123-45-6789'`           | works for ITIN's too
conform\_s\_s\_n() | '12789', 'asf-DE-fd12', '123-456-7899'          | `ERRORMESSAGE`            |
is_ssn()           | '123456789', '123-45-6789', '123 45 6789'       | `true`                    |
is_ssn()           |  '000-12-3456', '12-00-3456' '912-75-5678'      | `false`                   | nb. returns false for ITIN's
is_itin()          | '987-78-4321', '901-82-1234'                    | `true`                    |
is_itin()          |  '000-12-3456', '12-00-3456' '912-34-5678'      | `false`                   |
conform_ein()      | '123456789', '123-45-6789', '123 45 6789'       | `'123456789'`             |
conform\_ei\_n()   | '123456789', '123-45-6789', '123 45 6789'       | `'12-3456789'`            |
conform_phone()    | '1 800-CALL-NOW', '202.555.1212', etc           | `'800-225-5669'` `202-555-1212`| nb. removes leading '1', translates letters to numbers
state_name_fr_abbr | 'AZ', 'GU'                                      | `'Arizona'` `'Guam'`      |
st_abbr_fr_name    | 'California', 'iowa', 'Marshall Islands'        | `'CA'` `'IA'` `'MH'`      |
month_fr_num()     | '3', '5', '12'                                  | `March` `May` `December`  |
month_num_fr_month | 'January', 'October'                            | `'1'` `'10'`              |
month_fr_mo        | 'Sep', 'Sep.', 'Sept.', 'Sept', 'sep'           | `'September'`             |
---


Note: invalid inputs are returned as "ERRORMESSAGE" - which can be customized.  The default is "INVALID INPUT"
This gem is intended to be generically useful -- validation/exceptions are better raised and handled in the program utilizing this gem as appropriate for the specific needs of that program)




### Bug reports

If you discover any bugs, feel free to create an issue on GitHub. Please add as much information as
possible to help us in fixing the potential bug. We also encourage you to help even more by forking and
sending us a pull request.

https://github.com/jskrwc/conformer/issues

## Maintainers

* Jim Knopf (https://github.com/jskrwc)




## License

MIT License.
