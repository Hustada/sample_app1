  require 'spec_helper'

  describe "Authentication" do

    subject { page }

    describe "signin page" do
      before { visit signin_path }

      it { should have_content('Sign in') }
      it { should have_title('Sign in') }
    end

    describe 'signin' do
      before { visit signin_path }

      describe "with invalid information" do
        before { click_button "Sign in" }

        it { should have_title('Sign in') }
        it { should have_selector('div.alert.alert-error') }

      describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.alert-error') }
        end

      describe "with valid information" do

        before do
          visit signup_path
          fill_in "Name",         with: "Example User"
          fill_in "Email",        with: "user@example.com"
          fill_in "Password",     with: "foobar"
          fill_in "Password confirmation", with: "foobar"
        end
      end
    end
  end
end