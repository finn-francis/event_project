require 'rails_helper'

RSpec.describe Attendance, type: :model do
  before do
    extend UserData
    @ability = Ability.new(@user_one)
  end

  it "should prevent unauthorized users from deleting comments" do
    expect(@ability.can?(:delete, @comment_one)).to eq(false)
  end
end
