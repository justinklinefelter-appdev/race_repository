require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:user_races) }

    it { should have_many(:comments) }

    end

    describe "InDirect Associations" do

    it { should have_many(:races) }

    end

    describe "Validations" do
      
    end
end
