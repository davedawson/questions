require 'spec_helper'

describe Answer do

  let(:question) { FactoryGirl.create(:question) }
  before { @answer = question.answer.build(content: "Lorem ipsum") }

  subject { @answer }

  it { should respond_to(:content) }
  it { should respond_to(:question_id) }
  its(:question) { should == answer }

  it { should be_valid }

  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Answer.new(question: question.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end

  describe "when user_id is not present" do
    before { @answer.question_id = nil }
    it { should_not be_valid }
  end
end