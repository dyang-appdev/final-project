class RbtAvailabilitiesController < ApplicationController
  def index
    @rbt_availabilities = RbtAvailability.all
    @rbts = Rbt.all
    @slots = Slot.all

    render("rbt_availability_templates/index.html.erb")
  end

  def show
    @rbt_availability = RbtAvailability.find(params.fetch("id_to_display"))

    render("rbt_availability_templates/show.html.erb")
  end

  def new_form
    @rbt_availability = RbtAvailability.new

    render("rbt_availability_templates/new_form.html.erb")
  end

  def create_row
    @rbt_availability = RbtAvailability.new

    @rbt_availability.rbt_id = params.fetch("rbt_id")
    @rbt_availability.slot_id = params.fetch("slot_id")

    if @rbt_availability.valid?
      @rbt_availability.save

      redirect_back(:fallback_location => "/rbt_availabilities", :notice => "Rbt availability created successfully.")
    else
      render("rbt_availability_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @rbt_availability = RbtAvailability.find(params.fetch("prefill_with_id"))

    render("rbt_availability_templates/edit_form.html.erb")
  end

  def update_row
    @rbt_availability = RbtAvailability.find(params.fetch("id_to_modify"))

    @rbt_availability.rbt_id = params.fetch("rbt_id")
    @rbt_availability.slot_id = params.fetch("slot_id")

    if @rbt_availability.valid?
      @rbt_availability.save

      redirect_to("/rbt_availabilities/#{@rbt_availability.id}", :notice => "Rbt availability updated successfully.")
    else
      render("rbt_availability_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @rbt_availability = RbtAvailability.find(params.fetch("id_to_remove"))

    @rbt_availability.destroy

    redirect_back(:fallback_location => "/rbt_availabilities", :notice => "Rbt availability deleted successfully.")
  end
end
