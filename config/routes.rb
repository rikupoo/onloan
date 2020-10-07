Rails.application.routes.draw do
  root to: "items#index"
  devise_for :companies,
    path: '',
    path_names: {
      sign_up: '',
      sign_in: 'login',
      sign_out: 'logout',
      registration: "signup",
    },
    controllers: {
      registrations: "companies/registrations",
      sessions: "companies/sessions"
    }
    resources :items,only: [:new,:create,:destroy,:index,:show]
end
