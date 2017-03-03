Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  devise_scope :user do
    get '/login', :to => 'devise/sessions#new', :as => :login
    post '/login_user', :to => 'devise/sessions#create', :as => :login_user
    get '/logout', :to => 'devise/sessions#destroy', :as => :destroy_session
    post '/request_reset', :to => 'devise/passwords#edit', :as => :request_reset
    get '/change_password', :to => 'devise/passwords#new', :as => :change_password
  end
  root to: 'homes#index' # Home page
  get '/back', to: 'homes#index' # Back button option
  # Bangalore dropdown navigation bar*
  get '/moving_to', to: 'homes#moving_to'
  # Moving to Bangalore Links
    # Start
  get '/healthcare', to: 'homes#healthcare'
  get '/schools', to: 'homes#schools'
  get '/residency', to: 'homes#residency'
  get '/accomodations', to: 'homes#accomodations', as: 'accomodations'
  get '/safe_environments', to: 'homes#safe_environments'
  get '/transportation', to: 'homes#transportation'
  get '/banking', to: 'homes#banking', as: 'banking'
  get '/pets', to: 'homes#pets'
    # end
  # Bangalore dropdown nav bar*
  get '/life_in', to: 'homes#life_in'
    # Start
  get '/pests', to: 'homes#pests'
  get '/shopping', to: 'homes#shopping'
  get '/activities', to: 'homes#activities'
  get '/festivals', to: 'homes#festivals'
    # end
  # Membership dropdown navigation bar*
  get '/new_member', to: 'homes#new_member' # New Memeber Info, Benefits, etc.
    # Start
  get '/member_info', to: 'homes#member_info'
  get '/new_member_app', to: 'homes#new_member_app'
  get '/payment_gateway', to: 'homes#payment_gateway'
    # end
  get '/renew_membership', to: 'homes#renew_membership' # Renew membership here
  get '/renew_form', to: 'homes#renew_form'
  # Membership dropdown nav bar*
  get '/publication', to: 'homes#publication'
    # Start
  get '/member_magazine', to: 'homes#member_magazine'
  get '/in_and_out', to: 'homes#in_and_out'
  get '/greeting_cards', to: 'homes#greeting_cards'
    # End
  # Membership dropdown nav bar*
  get '/volunteer', to: 'homes#volunteer'
    # Start
  get '/job_openings', to: 'homes#job_openings'
  get '/volunteer_form', to: 'homes#volunteer_form'
    # end
    # Membership nav bar*
  get '/public_calendar', to: 'homes#public_calendar'
  # Our Work dropdown navigation bar*
  get '/charities', to: 'homes#charities'
    # Start
  get '/charity_map', to: 'homes#chairty_map'
    # end
  # Our Work dropdown navigation bar*
  get '/contributions', to: 'homes#contributions'
    # Start
  get '/contribution_reports', to: 'homes#reports'
    # end
  # Our Work dropdown navigation bar*
  get '/fundraising', to: 'homes#fundraising'
    # Start
  get '/fundraising_news', to: 'homes#fundraising_news'
  get '/fundraising_reports', to: 'homes#fundraising_reports'
    # end
  # Our Work dropdown navigation bar*
  get '/ssg', to: 'homes#ssg' # Social Support Group
    # Start
  get '/ssg_news', to: 'homes#ssg_news'
  get '/ssg_stories', to: 'homes#ssg_stories'
    # end
  # Members Only dropdown navigation bar*
  get '/chat_room', to: 'chat_rooms#index'
  get '/calendar', to: 'calendars#index'
  get '/board_members', to: 'users#board_members'
  # About options bottom of page
  get '/owc_club_info', to: 'homes#owc_club_info'
  get '/mission_statement', to: 'homes#mission_statement'
  get '/journey', to: 'homes#journey'
  # Contact Us bottom of page
  get '/contact', to: 'homes#contact'
  # match '/contacts', to: 'contacts#new', via: 'get'
  # resources "contacts", only: [:new, :create]
  get '/profile', to: 'users#profile'

  get '/payments', to: 'payments#index'
  		resources :payments do
		collection {post :import}
	end

  # resources :users do
  #   get :autocomplete_:recipients_:first_name,:last_name, :on => :collection
  # end
  # get '/import', to: 'users#index'
  get '/autofill', to: 'users#index'
  # resources :messages
  # resources :conversations, only: [:index, :show, :destroy]



  mount ActionCable.server => '/cable'

# mailbox folder routes
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  # conversations
  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
