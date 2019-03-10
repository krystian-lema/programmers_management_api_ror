Rails.application.routes.draw do
  resources :paradigms
  resources :languages do
    member do
      # PUT /languages/{id}/paradigms/rel/{fk}
      put 'paradigms/rel/:paradigm_id', action: :add_paradigm
    end
  end
  resources :programmers do
    member do
      # PUT /programmers/{id}/languages/rel/{fk}
      put 'languages/rel/:language_id', action: :add_language
    end
  end

  resources :teams do
    collection do
      # GET /teams/include_all_data
      get :include_all_data, action: :include_all_data
    end
  end
end
