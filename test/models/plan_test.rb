require 'test_helper'

class PlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  describe Plan do
    it "succeeds in default test" do
      1.must_equal 1
    end

    it "must has a name and belongs to a user" do
      p = Plan.create(user_id: 1)
      p.valid?.must_equal false

      p2 = Plan.create(name: "Shopping")
      p2.valid?.must_equal false
    end

    it "has two plans in database" do
      Plan.count.must_equal 2
    end

    it "must has an estimated time if it is short-term" do
      p = Plan.create(name: "Shopping", user_id: 1, term: "short")
      p.valid?.must_equal false
    end
  end
  

end
