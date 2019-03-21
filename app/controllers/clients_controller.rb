class ClientsController < ApplicationController
  def index
    @clients = Client.all

    render("client_templates/index.html.erb")
  end

  def show
    @client = Client.find(params.fetch("id_to_display"))
    @weeks = Week.all

    render("client_templates/show.html.erb")
  end

  def new_form
    @client = Client.new

    render("client_templates/new_form.html.erb")
  end

  def create_row
    @client = Client.new

    @client.full_name = params.fetch("full_name")
    @client.address = params.fetch("address")
    @client.age_band = params.fetch("age_band")
    @client.functioning_status = params.fetch("functioning_status")
    @client.service_location = params.fetch("service_location")

    if @client.valid?
      @client.save

      redirect_to("/clients", :notice => "Client created successfully.")
    else
      render("client_templates/new_form_with_errors.html.erb")
    end
    
  end

  def edit_form
    @client = Client.find(params.fetch("prefill_with_id"))

    render("client_templates/edit_form.html.erb")
  end

  def update_row
    @client = Client.find(params.fetch("id_to_modify"))

    @client.full_name = params.fetch("full_name")
    @client.address = params.fetch("address")
    @client.age_band = params.fetch("age_band")
    @client.functioning_status = params.fetch("functioning_status")
    @client.service_location = params.fetch("service_location")
    @client.insurance_id = params.fetch("insurance_id")

    if @client.valid?
      @client.save

      redirect_to("/clients/#{@client.id}", :notice => "Client updated successfully.")
    else
      render("client_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @client = Client.find(params.fetch("id_to_remove"))

    @client.destroy

    redirect_to("/clients", :notice => "Client deleted successfully.")
  end

  def client_week
    @client = Client.find(params.fetch("client_id"))
    @week = Week.find(params.fetch("week_id"))
    @slots = Slot.all
    
    # @week.week_of = params.fetch("week_of")
    
    render("client_templates/client_week.html.erb")
  end

end
