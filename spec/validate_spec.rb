describe "Validate" do

  describe "phone number" do

    before do
      @phone_numbers = [
        '414)444-4121',
        '(513) 410-7771',
        '1 231 433-4444',
      ]

    end

    it "should return true for validated phone numbers" do
      @phone_numbers.each do |number|
        Validate::Validate.is_phone_number(number).should.not.be.nil 
      end
    end

  end

  describe "email address" do

    before do

      @emails = [
        'morehousej09@gmail.com'
      ]
      @invalid_emails = [
        'morehousej09gmail.com'
      ]

    end

    it "should return a string for valid email addresses" do

      @emails.each do |email|
        Validate::Validate.is_email_address(email).should.not.be.nil
      end

    end

    it "shoud return nil for invalid email addresses" do

      @invalid_emails.each do |email|
        Validate::Validate.is_email_address(email).should.be.nil
      end
    end
  end

  describe "username" do

    before do



    end

  end


end
