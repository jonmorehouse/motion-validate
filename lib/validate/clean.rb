module Validate
  class Clean

    class << self

      REGEX = {
        :phone_number => /\D/,
      }
      LOWERCASE = [:username, :email_address] 

      REGEX.each do |key, regex|
        define_method key do |input|
          return input.gsub(regex, '')
        end
      end

      LOWERCASE.each do |key, regex|
        define_method key do |input|
          return input.downcase
        end
      end
    end
  end
end

