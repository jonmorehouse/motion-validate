describe "Clean" do
  describe "phone number" do

    before do
      @conversions = [{:input => "1(531) 410-7771",
                       :output => "15314107771"},
      ]

    end

    it "should remove any non-numeric characters" do

      @conversions.each do |phone|
        Validate::Clean.phone_number(phone[:input]).should.equal phone[:output]
      end
    end
  end
end
