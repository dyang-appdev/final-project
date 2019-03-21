class WeeksController < ApplicationController
  def index
    @weeks = Week.all

    render("week_templates/index.html.erb")
  end

  def show
    @week = Week.find(params.fetch("id_to_display"))

    render("week_templates/show.html.erb")
  end

  def new_form
    @week = Week.new

    render("week_templates/new_form.html.erb")
  end

  def create_row
    @week = Week.new

    @week.week_of = params.fetch("week_of")

    if @week.valid?
      @week.save

      redirect_back(:fallback_location => "/weeks", :notice => "Week created successfully.")
    else
      render("week_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @week = Week.find(params.fetch("prefill_with_id"))

    render("week_templates/edit_form.html.erb")
  end

  def update_row
    @week = Week.find(params.fetch("id_to_modify"))

    @week.week_of = params.fetch("week_of")

    if @week.valid?
      @week.save

      redirect_to("/weeks/#{@week.id}", :notice => "Week updated successfully.")
    else
      render("week_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @week = Week.find(params.fetch("id_to_remove"))

    @week.destroy

    redirect_to("/weeks", :notice => "Week deleted successfully.")
  end
  
  # def client_week
  #   @client = Client.find(params.fetch("id_to_display"))
  #   @week = Week.find(params.fetch("id_to_display"))
  #   @slots = Slot.all
    
  #   # @week.week_of = params.fetch("week_of")
    
  #   render("client_templates/client_week.html.erb")
  # end
end
