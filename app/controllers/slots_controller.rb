class SlotsController < ApplicationController
  def index
    @slots = Slot.all
    @clients = Client.all

    render("slot_templates/index.html.erb")
  end

  def show
    @slot = Slot.find(params.fetch("id_to_display"))

    render("slot_templates/show.html.erb")
  end

  def new_form
    @slot = Slot.new

    render("slot_templates/new_form.html.erb")
  end

  def create_row
    
    @slot = Slot.new

    @slot.slot_start = Chronic.parse(params[:slot_start])
    @slot.stot_end = Chronic.parse(params[:slot_end])
    
    # @slot.slot_start = params.fetch("slot_start")
    # @slot.slot_end = params.fetch("slot_end")
    @slot.week_id = params.fetch("week_id")

    if @slot.valid?
      @slot.save

      redirect_back(:fallback_location => "/slots", :notice => "Slot created successfully.")
    else
      render("slot_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @slot = Slot.find(params.fetch("prefill_with_id"))

    render("slot_templates/edit_form.html.erb")
  end

  def update_row
    @slot = Slot.find(params.fetch("id_to_modify"))

    @slot.slot_start = params.fetch("slot_start")
    @slot.slot_end = params.fetch("slot_end")
    @slot.week_id = params.fetch("week_id")

    if @slot.valid?
      @slot.save

      redirect_to("/slots/#{@slot.id}", :notice => "Slot updated successfully.")
    else
      render("slot_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @slot = Slot.find(params.fetch("id_to_remove"))

    @slot.destroy

    redirect_to("/slots", :notice => "Slot deleted successfully.")
  end
end
