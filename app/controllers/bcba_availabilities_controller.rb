class BcbaAvailabilitiesController < ApplicationController
  def index
    @bcba_availabilities = BcbaAvailability.all
    @bcbas = Bcba.all
    @slots = Slot.all

    render("bcba_availability_templates/index.html.erb")
  end

  def show
    @bcba_availability = BcbaAvailability.find(params.fetch("id_to_display"))

    render("bcba_availability_templates/show.html.erb")
  end

  def new_form
    @bcba_availability = BcbaAvailability.new

    render("bcba_availability_templates/new_form.html.erb")
  end

  def create_row
    @bcba_availability = BcbaAvailability.new

    @bcba_availability.bcba_id = params.fetch("bcba_id")
    @bcba_availability.slot_id = params.fetch("slot_id")

    if @bcba_availability.valid?
      @bcba_availability.save

      redirect_back(:fallback_location => "/bcba_availabilities", :notice => "Bcba availability created successfully.")
    else
      render("bcba_availability_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @bcba_availability = BcbaAvailability.find(params.fetch("prefill_with_id"))

    render("bcba_availability_templates/edit_form.html.erb")
  end

  def update_row
    @bcba_availability = BcbaAvailability.find(params.fetch("id_to_modify"))

    @bcba_availability.bcba_id = params.fetch("bcba_id")
    @bcba_availability.slot_id = params.fetch("slot_id")

    if @bcba_availability.valid?
      @bcba_availability.save

      redirect_to("/bcba_availabilities/#{@bcba_availability.id}", :notice => "Bcba availability updated successfully.")
    else
      render("bcba_availability_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @bcba_availability = BcbaAvailability.find(params.fetch("id_to_remove"))

    @bcba_availability.destroy

    redirect_back(:fallback_location => "/bcba_availabilities", :notice => "Bcba availability deleted successfully.")
  end
end
