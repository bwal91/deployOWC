Rails.application.routes.draw do
  get '/', to: 'homes#index' # Home page
  get '/back', to: 'homes#index' # Back button option
  post '/login', to: 'homes#login'
  # Bangalore dropdown navigation bar
  get '/moving_to', to: 'homes#moving_to'
  # Moving to Bangalore Links
    # Start
  get '/healthcare', to: 'homes#healthcare'
  get '/schools', to: 'homes#schools'
  get '/residency', to: 'homes#residency'
  get '/accomodations', to: 'homes#accomodations'
  get '/safe_environments', to: 'homes#safe_environments'
  get '/transportation', to: 'homes#transportation'
  get '/banking', to: 'homes#banking'
  get '/pets', to: 'homes#pets'
    # end
  # Bangalore dropdown nav bar
  get '/life_in', to: 'homes#life_in'
    # Start
  get '/pests', to: 'homes#pests'
  get '/life_other', to: 'homes#life_other'
  get '/shopping', to: 'homes#shopping'
  get '/activities', to: 'homes#activities'
  get '/sightseeing', to: 'homes#sightseeing'
  get '/life_publication', to: 'homes#life_publication'
    # end
  # Membership dropdown navigation bar
  get '/new_member', to: 'homes#new_member' # New Memeber Info, Benefits, etc.
    # Start
  get '/member_info', to: 'homes#member_info'
  get '/new_member_app', to: 'homes#new_member_app'
  get '/payment_gateway', to: 'homes#payment_gateway'
    # end
  get '/renew_membership', to: 'homes#renew_membership' # Renew membership here
  get '/renew_form', to: 'homes#renew_form'
  # Membership dropdown nav bar
  get '/publication', to: 'homes#publication'
    # Start
  get '/member_magazine', to: 'homes#member_magazine'
  get '/in_and_out', to: 'homes#in_and_out'
  get '/greeting_cards', to: 'homes#greeting_cards'
    # End
  # Membership dropdown nav bar 
  get '/volunteer', to: 'homes#volunteer'
  get '/public_calendar', to: 'homes#public_calendar'
  # Our Work dropdown navigation bar
  # get '/charities', to: 'homes#charities'
  get '/contributions', to: 'homes#contributions'
  get '/fundraising', to: 'homes#fundraising'
  get '/ssg', to: 'homes#ssg' # Social Support Group
  # Members Only dropdown navigation bar
  get '/chat_room', to: 'chat_rooms#index'
  get '/calendar', to: 'calendars#index'
  get '/board_members', to: 'users#board_members'
  # get '/payments/'
  # get '/admin/'
  # About options bottom of page
  get '/owc_club_info', to: 'homes#owc_club_info'
  get '/mission_statement', to: 'homes#mission_statement'
  get '/journey', to: 'homes#journey'
  # Contact Us bottom of page
  get '/contact', to: 'homes#contact'
  # match '/contacts', to: 'contacts#new', via: 'get'
  # resources "contacts", only: [:new, :create]

  get '/payments', to: 'payments#index'
  		resources :payments do
		collection {post :import}
	end

  resources :users do
  collection {post :import}
  end
  get '/import', to: 'users#index'
  # resources :messages
  # resources :conversations, only: [:index, :show, :destroy]

  resources :chat_rooms, only: [:new, :create, :show, :index]

  mount ActionCable.server => '/cable'

  # Mailbox Folder Routes
  get "/mailbox/inbox" => "messages#inbox", as: :messages_inbox
  get "/mailbox/sent" => "messages#sent", as: :messages_sent
  get "/mailbox/trash" => "messages#trash", as: :messages_trash

  #Mailbox Conversations
  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
