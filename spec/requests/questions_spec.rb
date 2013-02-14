require 'spec_helper'

describe "Question Pages" do
	subject { page }

	describe "ask page" do
		before { visit ask_path }
		it { should have_selector('h1',    :text => 'Ask a question') }
		it { should have_selector('title', :text => full_title('Ask a question')) }
		it { should have_selector('input', :placeholder => 'Ask a question') }
		# it "should have the content 'Questions Help'" do
	  	#	visit ask_path
	  	#	page.should have_content('help')
	  	# end
	end
	describe "ask question form" do
		before { visit ask_path }

	    let(:submit) { "Post" }

	    describe "with invalid information" do
	      it "should not add a question" do
	        expect { click_button submit }.not_to change(Question, :count)
	      end
	    end

	    describe "with valid information" do
	      before do
	        fill_in "Question", :with => "What is what?"
	      end

	      it "should create a a new question" do
	        expect { click_button submit }.to change(Question, :count).by(1)
	      end
	    end
	end

end
