module Validate
  class Validate

    class << self
      REGEX = {
        :email_address => /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/,
        :phone_number => /^(?:(?:\(?(?:00|\+)([1-4]\d\d|[1-9]\d?)\)?)?[\-\.\ \\\/]?)?((?:\(?\d{1,}\)?[\-\.\ \\\/]?){0,})(?:[\-\.\ \\\/]?(?:#|ext\.?|extension|x)[\-\.\ \\\/]?(\d+))?$/,
        :username => /^[a-z0-9_-]{3,16}$/,
        :password => /^[a-z0-9_-]{6,18}$/,
        :ip_address => /^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/
      }

      REGEX.each do |key, value|
        define_method key do |input|
          return input.match(REGEX[key])
        end
        alias_method "is_#{key.to_s}", key
      end
    end
  end
end


