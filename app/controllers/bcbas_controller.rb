class BcbasController < ApplicationController
  def index
    @bcbas = Bcba.all

    render("bcba_templates/index.html.erb")
  end

  def show
    @bcba = Bcba.find(params.fetch("id_to_display"))

    render("bcba_templates/show.html.erb")
  end

  def new_form
    @bcba = Bcba.new

    render("bcba_templates/new_form.html.erb")
  end

  def create_row
    @bcba = Bcba.new

    @bcba.full_name = params.fetch("full_name")
    @bcba.address = params.fetch("address")

    if @bcba.valid?
      @bcba.save

      redirect_to("/bcbas", :notice => "Bcba created successfully.")
    else
      render("bcba_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @bcba = Bcba.find(params.fetch("prefill_with_id"))

    render("bcba_templates/edit_form.html.erb")
  end

  def update_row
    @bcba = Bcba.find(params.fetch("id_to_modify"))
    
    @bcba.full_name = params.fetch("full_name")
    @bcba.address = params.fetch("address")

    if @bcba.valid?
      @bcba.save

      redirect_to("/bcbas/#{@bcba.id}", :notice => "Bcba updated successfully.")
    else
      render("bcba_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @bcba = Bcba.find(params.fetch("id_to_remove"))

    @bcba.destroy

    redirect_to("/bcbas", :notice => "Bcba deleted successfully.")
  end
end
