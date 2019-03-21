class ClientAvailabilitiesController < ApplicationController
  def index
    @client_availabilities = ClientAvailability.all
    @clients = Client.all
    @slots = Slot.all

    render("client_availability_templates/index.html.erb")
  end

  def show
    @client_availability = ClientAvailability.find(params.fetch("id_to_display"))

    render("client_availability_templates/show.html.erb")
  end

  def new_form
    @client_availability = ClientAvailability.new

    render("client_availability_templates/new_form.html.erb")
  end

  def create_row
    @client_availability = ClientAvailability.new

    @client_availability.client_id = params.fetch("client_id")
    @client_availability.slot_id = params.fetch("slot_id")

    if @client_availability.valid?
      @client_availability.save

      redirect_back(:fallback_location => "/client_availabilities", :notice => "Client availability created successfully.")
    else
      render("client_availability_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @client_availability = ClientAvailability.find(params.fetch("prefill_with_id"))

    render("client_availability_templates/edit_form.html.erb")
  end

  def update_row
    @client_availability = ClientAvailability.find(params.fetch("id_to_modify"))

    @client_availability.client_id = params.fetch("client_id")
    @client_availability.slot_id = params.fetch("slot_id")

    if @client_availability.valid?
      @client_availability.save

      redirect_to("/client_availabilities/#{@client_availability.id}", :notice => "Client availability updated successfully.")
    else
      render("client_availability_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @client_availability = ClientAvailability.find(params.fetch("id_to_remove"))

    @client_availability.destroy

    redirect_back(:fallback_location => "/client_availabilities", :notice => "Client availability deleted successfully.")
  end
end
