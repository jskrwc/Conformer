# Conformer
![Conformer Logo](https://github.com/jskrwc/conformer/conformer_logo.png)

By [knopf.io/)

A tool for normalizing and formatting various data in rails.
**Conformer** is ruby gem that conforms various data. The gem will normalize various data to standardized formats. Eg. SSN, date, name, phone numbers, addresses, email etc. Will format, and in some cases validate (link to online data, or incorporate standard parameters (e.g. domain name has a valid root, or SSN has valid prefix).

**Conformer** aims to be as flexible tool to help normalize various data to standardized formats.  Eg. SSN, date, name, phone numbers, addresses, email etc. Will format, and in some case validate (link to online or other data) e.g. domain plausible.
The basic goal of **Conformer** is to take care of the some of the mundane formatting problems that frequently arise.  Rather than continuously reinventing the wheel (or spending time googling the wheel), common data formatting issues can be aggregated here.  


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

**Conformer** is essentially a collection of methods.  Call the methods on the data you wish to format, and it will be returned in that particular format.  The method nomenclature is hopefully useful, and often sufficient to see what will be returned. Methods are named with form **conform-_methodname_**

For example, the method `conform_ssn(input)` will return `'123456789'`

for inputs of `123-45-6789`, `123.45.6789`, `123 45 6789` etc...`

Similarly, the method `conform_s_s_n(input)` will return `'123-45-6789'` for those same inputs.





To start using **Conformer** you just have to call the desired method passing a single string argument

By default, all arguments are a single string



## Available methods

The following table shows the available methods in the gem, some sample input and outputs.

Method             | Sample inputs                                   | Output                    | Notes
-------------------|-------------------------------------------------|---------------------------|----------------------
conform_ssn()      | '123456789', '123-45-6789', '123 45 6789'       | `'123456789'`             | works for ITIN's too
                   | '12789', 'asf-DE-fd12', '123-456-7899'          | `'error'`                 |
conform\_s\_s\_n() | '123456789', '123-45-6789', '123 45 6789'       | `'123-45-6789'` or `'err'`| works for ITIN's too
                   | '12789', 'asf-DE-fd12', '123-456-7899'          | `'error'`                 |
is_ssn()           | '123456789', '123-45-6789', '123 45 6789'       | `true`                    |
                   |  '000-12-3456', '12-00-3456' '912-75-5678'      | 'false'                   | nb. returns false for ITIN's
is_itin()          | '987-78-4321', '901-82-1234'                    | `true`                    |
                   |  '000-12-3456', '12-00-3456' '912-34-5678'      | 'false'                   |
conform_ein()      | '123456789', '123-45-6789', '123 45 6789'       | `'123456789'` or `'error'`|
conform\_ei\_n()   | '123456789', '123-45-6789', '123 45 6789'       | `'12-3456789'`or `'error'`|

---







### Bug reports

If you discover any bugs, feel free to create an issue on GitHub. Please add as much information as
possible to help us in fixing the potential bug. We also encourage you to help even more by forking and
sending us a pull request.

https://github.com/plataformatec/simple_form/issues

## Maintainers

* Jim Knopf (https://github.com/jskrwc)




## License

MIT License.
