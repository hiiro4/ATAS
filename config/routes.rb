Rails.application.routes.draw do

  root "devise/users#top"
  devise_for :user,skip: [:passwords], controllers: {
  registrations: "devise/registrations",
  sessions: 'devise/sessions'
}
  namespace :devise do
    resources :users,only:[:show, :top, :destroy, :index, :edit, :update]
    devise_scope :user do
      post 'users/guest_sign_in', to: '/devise/sessions#guest_sign_in'
    end
    resources :question,only:[:top, :show]
  end

end
