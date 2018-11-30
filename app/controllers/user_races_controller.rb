class UserRacesController < ApplicationController
  def index
    @user_races = UserRace.all

    render("user_race_templates/index.html.erb")
  end

  def show
    @comment = Comment.new
    @user_race = UserRace.find(params.fetch("id_to_display"))

    render("user_race_templates/show.html.erb")
  end

  def new_form
    @user_race = UserRace.new

    render("user_race_templates/new_form.html.erb")
  end

  def create_row
    @user_race = UserRace.new

    @user_race.user_id = params.fetch("user_id")
    @user_race.race_id = params.fetch("race_id")
    @user_race.time = params.fetch("time")
    @user_race.body = params.fetch("body")
    @user_race.overall_place = params.fetch("overall_place")
    @user_race.age_group_place = params.fetch("age_group_place")

    if @user_race.valid?
      @user_race.save

      redirect_back(:fallback_location => "/user_races", :notice => "User race created successfully.")
    else
      render("user_race_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_race
    @user_race = UserRace.new

    @user_race.user_id = params.fetch("user_id")
    @user_race.race_id = params.fetch("race_id")
    @user_race.time = params.fetch("time")
    @user_race.body = params.fetch("body")
    @user_race.overall_place = params.fetch("overall_place")
    @user_race.age_group_place = params.fetch("age_group_place")

    if @user_race.valid?
      @user_race.save

      redirect_to("/races/#{@user_race.race_id}", notice: "UserRace created successfully.")
    else
      render("user_race_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @user_race = UserRace.find(params.fetch("prefill_with_id"))

    render("user_race_templates/edit_form.html.erb")
  end

  def update_row
    @user_race = UserRace.find(params.fetch("id_to_modify"))

    @user_race.user_id = params.fetch("user_id")
    @user_race.race_id = params.fetch("race_id")
    @user_race.time = params.fetch("time")
    @user_race.body = params.fetch("body")
    @user_race.overall_place = params.fetch("overall_place")
    @user_race.age_group_place = params.fetch("age_group_place")

    if @user_race.valid?
      @user_race.save

      redirect_to("/user_races/#{@user_race.id}", :notice => "User race updated successfully.")
    else
      render("user_race_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @user_race = UserRace.find(params.fetch("id_to_remove"))

    @user_race.destroy

    redirect_to("/users/#{@user_race.user_id}", notice: "UserRace deleted successfully.")
  end

  def destroy_row_from_race
    @user_race = UserRace.find(params.fetch("id_to_remove"))

    @user_race.destroy

    redirect_to("/races/#{@user_race.race_id}", notice: "UserRace deleted successfully.")
  end

  def destroy_row
    @user_race = UserRace.find(params.fetch("id_to_remove"))

    @user_race.destroy

    redirect_to("/user_races", :notice => "User race deleted successfully.")
  end
end
