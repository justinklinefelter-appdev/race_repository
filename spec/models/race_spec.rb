require 'rails_helper'

RSpec.describe Race, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:user_races) }

    it { should belong_to(:event) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
