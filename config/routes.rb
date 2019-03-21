Rails.application.routes.draw do

  root "weeks#index"

  #------------------------------

  # Routes for the Week resource:

  # CREATE
  get("/weeks/new", { :controller => "weeks", :action => "new_form" })
  post("/create_week", { :controller => "weeks", :action => "create_row" })

  # READ
  get("/weeks", { :controller => "weeks", :action => "index" })
  get("/weeks/:id_to_display", { :controller => "weeks", :action => "show" })

  # UPDATE
  get("/weeks/:prefill_with_id/edit", { :controller => "weeks", :action => "edit_form" })
  post("/update_week/:id_to_modify", { :controller => "weeks", :action => "update_row" })

  # DELETE
  get("/delete_week/:id_to_remove", { :controller => "weeks", :action => "destroy_row" })

  #------------------------------

  # Routes for the Slot resource:

  # CREATE
  get("/slots/new", { :controller => "slots", :action => "new_form" })
  post("/create_slot", { :controller => "slots", :action => "create_row" })

  # READ
  get("/slots", { :controller => "slots", :action => "index" })
  get("/slots/:id_to_display", { :controller => "slots", :action => "show" })

  # UPDATE
  get("/slots/:prefill_with_id/edit", { :controller => "slots", :action => "edit_form" })
  post("/update_slot/:id_to_modify", { :controller => "slots", :action => "update_row" })

  # DELETE
  get("/delete_slot/:id_to_remove", { :controller => "slots", :action => "destroy_row" })

  #------------------------------

  # Routes for the Bcba availability resource:

  # CREATE
  get("/bcba_availabilities/new", { :controller => "bcba_availabilities", :action => "new_form" })
  post("/create_bcba_availability", { :controller => "bcba_availabilities", :action => "create_row" })

  # READ
  get("/bcba_availabilities", { :controller => "bcba_availabilities", :action => "index" })
  get("/bcba_availabilities/:id_to_display", { :controller => "bcba_availabilities", :action => "show" })

  # UPDATE
  get("/bcba_availabilities/:prefill_with_id/edit", { :controller => "bcba_availabilities", :action => "edit_form" })
  post("/update_bcba_availability/:id_to_modify", { :controller => "bcba_availabilities", :action => "update_row" })

  # DELETE
  get("/delete_bcba_availability/:id_to_remove", { :controller => "bcba_availabilities", :action => "destroy_row" })

  #------------------------------

  # Routes for the Rbt availability resource:

  # CREATE
  get("/rbt_availabilities/new", { :controller => "rbt_availabilities", :action => "new_form" })
  post("/create_rbt_availability", { :controller => "rbt_availabilities", :action => "create_row" })

  # READ
  get("/rbt_availabilities", { :controller => "rbt_availabilities", :action => "index" })
  get("/rbt_availabilities/:id_to_display", { :controller => "rbt_availabilities", :action => "show" })

  # UPDATE
  get("/rbt_availabilities/:prefill_with_id/edit", { :controller => "rbt_availabilities", :action => "edit_form" })
  post("/update_rbt_availability/:id_to_modify", { :controller => "rbt_availabilities", :action => "update_row" })

  # DELETE
  get("/delete_rbt_availability/:id_to_remove", { :controller => "rbt_availabilities", :action => "destroy_row" })

  #------------------------------

  # Routes for the Client availability resource:

  # CREATE
  get("/client_availabilities/new", { :controller => "client_availabilities", :action => "new_form" })
  post("/create_client_availability", { :controller => "client_availabilities", :action => "create_row" })

  # READ
  get("/client_availabilities", { :controller => "client_availabilities", :action => "index" })
  get("/client_availabilities/:id_to_display", { :controller => "client_availabilities", :action => "show" })

  # UPDATE
  get("/client_availabilities/:prefill_with_id/edit", { :controller => "client_availabilities", :action => "edit_form" })
  post("/update_client_availability/:id_to_modify", { :controller => "client_availabilities", :action => "update_row" })

  # DELETE
  get("/delete_client_availability/:id_to_remove", { :controller => "client_availabilities", :action => "destroy_row" })

  #------------------------------

  # Routes for the Team resource:

  # CREATE
  get("/teams/new", { :controller => "teams", :action => "new_form" })
  post("/create_team", { :controller => "teams", :action => "create_row" })

  # READ
  get("/teams", { :controller => "teams", :action => "index" })
  get("/teams/:id_to_display", { :controller => "teams", :action => "show" })

  # UPDATE
  get("/teams/:prefill_with_id/edit", { :controller => "teams", :action => "edit_form" })
  post("/update_team/:id_to_modify", { :controller => "teams", :action => "update_row" })

  # DELETE
  get("/delete_team/:id_to_remove", { :controller => "teams", :action => "destroy_row" })

  #------------------------------

  # Routes for the Client resource:

  # CREATE
  get("/clients/new", { :controller => "clients", :action => "new_form" })
  post("/create_client", { :controller => "clients", :action => "create_row" })

  # READ
  get("/clients", { :controller => "clients", :action => "index" })
  get("/clients/:id_to_display", { :controller => "clients", :action => "show" })
  get("/clients/:client_id/weeks/:week_id", { :controller => "clients", :action => "client_week" })

  # UPDATE
  get("/clients/:prefill_with_id/edit", { :controller => "clients", :action => "edit_form" })
  post("/update_client/:id_to_modify", { :controller => "clients", :action => "update_row" })

  # DELETE
  get("/delete_client/:id_to_remove", { :controller => "clients", :action => "destroy_row" })

  #------------------------------

  # Routes for the Rbt resource:

  # CREATE
  get("/rbts/new", { :controller => "rbts", :action => "new_form" })
  post("/create_rbt", { :controller => "rbts", :action => "create_row" })

  # READ
  get("/rbts", { :controller => "rbts", :action => "index" })
  get("/rbts/:id_to_display", { :controller => "rbts", :action => "show" })

  # UPDATE
  get("/rbts/:prefill_with_id/edit", { :controller => "rbts", :action => "edit_form" })
  post("/update_rbt/:id_to_modify", { :controller => "rbts", :action => "update_row" })

  # DELETE
  get("/delete_rbt/:id_to_remove", { :controller => "rbts", :action => "destroy_row" })

  #------------------------------

  # Routes for the Bcba resource:

  # CREATE
  get("/bcbas/new", { :controller => "bcbas", :action => "new_form" })
  post("/create_bcba", { :controller => "bcbas", :action => "create_row" })

  # READ
  get("/bcbas", { :controller => "bcbas", :action => "index" })
  get("/bcbas/:id_to_display", { :controller => "bcbas", :action => "show" })

  # UPDATE
  get("/bcbas/:prefill_with_id/edit", { :controller => "bcbas", :action => "edit_form" })
  post("/update_bcba/:id_to_modify", { :controller => "bcbas", :action => "update_row" })

  # DELETE
  get("/delete_bcba/:id_to_remove", { :controller => "bcbas", :action => "destroy_row" })

  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
