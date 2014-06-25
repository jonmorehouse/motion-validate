# Ruby Motion Validate
A Small helper gem for validating usernames, passwords, email addresses, ip addresses and phone numbers

## Installation

In your Gemfile
~~~ ruby
gem 'motion-validate' :github => 'jonmorehouse/motion-validate'
~~~

## Usage

### Username Validation

~~~ ruby

bad_username = "a!"
Validate::Validate.is_username(bad_username) # => nil
Validate::Validate.username(bad_username) # => nil

username = "rubymotion_hacker"
Validate::Validate.is_username(username) # => "rubymotion_hacker"

~~~

### Password Validation

~~~ ruby

password = "good_password"
Validate::Validate.password(password) # => "good_password"
Validate::Validate.is_password(password) # => "good_password"

~~~

### Email Address Validation

~~~ ruby

bad_email_address = "example.nodotcom"
Validate::Validate.is_email_address(bad_email_address) # => nil
Validate::Validate.email_address(bad_email_address) # => nil

~~~

### Phone Number Validation

~~~ ruby

bad_phone_number = "not a phone number"
phone_number = "1+ (513) 410-7771"

Validate::Validate.is_phone_number(bad_phone_number) # => nil
Validate::Validate.phone_number(bad_phone_number) # => nil

Validate::Validate.is_phone_number(phone_number) # => "1+ (513) 410-7771"
Validate::Validate.phone_number(phone_number) # => "1+ (513) 410-7771"

~~~

## Pipeline

1. Ability to specify valid characters
2. Ability to specify min/max lengths
3. Add more validations (ie: url, state, address, zip codes etc)
4. Ability to "clean" data (ie: "(542) 431-7771" -> "5424317771")


