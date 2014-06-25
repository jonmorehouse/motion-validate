describe "Validate" do

  describe "phone number" do

    before do
      @valid = ["414)444-4121",
                "(513) 410-7771",
                "1 231 433-4444", 
                "1 (531) 410-7771"]

      @invalid = ["414+444-4212",
                  "not a number"]
    end

    it "should return a string for validated numbers" do
      @valid.each do |number|
        Validate::Validate.is_phone_number(number).should.not.be.nil 
        Validate::Validate.is_phone_number(number).class.should.be.same_as String      
      end
    end

    it "should return nil for invalid numbers" do
      @invalid.each do |number|
        Validate::Validate.is_phone_number(number).should.be.nil
      end
    end

  end

  describe "email address" do

    before do
      @valid = ["morehousej09@gmail.com"]
      @invalid = ["morehousej09gmail.com"]
    end

    it "should return a string for valid email addresses" do

      @valid.each do |email|
        Validate::Validate.is_email_address(email).should.not.be.nil
        Validate::Validate.is_email_address(email).class.should.be.same_as String      
      end

    end

    it "shoud return nil for invalid email addresses" do
      @invalid.each do |email|
        Validate::Validate.is_email_address(email).should.be.nil
      end
    end
  end

  describe "usernames" do

    before do
      @valid = ["morehousej09", 
                "123", 
                "123456789111315"]

      @invalid = ["1234567891011121314151617", 
                  "12", 
                  "jon!"]
    end

    it "should return a string for valid usernames" do
      @valid.each do |username| 
        Validate::Validate.is_username(username).should.not.be.nil
        Validate::Validate.is_username(username).class.should.be.same_as String
      end
    end

    it "should return nil for invalid usernames" do
      @invalid.each do |username|
        Validate::Validate.is_username(username).should.be.nil
      end
    end
  end

end
