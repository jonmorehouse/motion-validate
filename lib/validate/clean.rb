puts "ASDF"
module Validate
  class Clean

    class << self

      REGEX = {
        :phone_number => /\D/,
      }

      REGEX.each do |key, regex|
        define_method key do |input|
          return input.gsub(regex, '')
        end
      end
    end
  end
end

