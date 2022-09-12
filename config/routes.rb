Rails.application.routes.draw do

  root "public/users#top"
  devise_for :user,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }
  namespace :public do
    resources :users,only:[:show, :top, :destroy, :index, :edit, :update]
    devise_scope :user do
      post 'users/guest_sign_in', to: '/public/sessions#guest_sign_in'
    end
    resources :questions,only:[:index, :show, :new, :create]
    resources :homes,only:[:index, :show]
    resources :subjects,only:[:new, :create, :edit, :update]
    resources :child_subjects,only:[:new, :create, :edit, :update]

  end

end