class RbtsController < ApplicationController
  def index
    @rbts = Rbt.all

    render("rbt_templates/index.html.erb")
  end

  def show
    @rbt = Rbt.find(params.fetch("id_to_display"))

    render("rbt_templates/show.html.erb")
  end

  def new_form
    @rbt = Rbt.new

    render("rbt_templates/new_form.html.erb")
  end

  def create_row
    @rbt = Rbt.new

    @rbt.full_name = params.fetch("full_name")
    @rbt.bcba_id = params.fetch("bcba_name")
    @rbt.service_location = params.fetch("service_location")
    @rbt.address = params.fetch("address")

    if @rbt.valid?
      @rbt.save

      redirect_to("/rbts", :notice => "RBT created successfully.")
    else
      render("rbt_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @rbt = Rbt.find(params.fetch("prefill_with_id"))

    render("rbt_templates/edit_form.html.erb")
  end

  def update_row
    @rbt = Rbt.find(params.fetch("id_to_modify"))

    @rbt.full_name = params.fetch("full_name")
    @rbt.service_location = params.fetch("service_location")
    @rbt.address = params.fetch("address")

    if @rbt.valid?
      @rbt.save

      redirect_to("/rbts/#{@rbt.id}", :notice => "RBT updated successfully.")
    else
      render("rbt_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @rbt = Rbt.find(params.fetch("id_to_remove"))

    @rbt.destroy

    redirect_to("/rbts", :notice => "RBT deleted successfully.")
  end
end
