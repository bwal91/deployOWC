Rails.application.routes.draw do
  get '/', to: 'homes#index' # Home page
  get '/back', to: 'homes#index' # Back button option
  post '/login', to: 'homes#login'
  # Bangalore drop down navigation bar
  get '/moving_to', to: 'homes#moving_to'
  get '/what_to_do', to: 'homes#what_to_do'
  get '/life_in', to: 'homes#life_in'
  # Membership dropdown navigation bar
  get '/member_info', to: 'homes#member_info'
  get '/new_member', to: 'homes#new_member' # New Memeber Info, Benefits, etc.
  get '/renew', to: 'homes#renew' # Renew membership here
  get '/publication', to: 'homes#publication'
  get '/volunteer', to: 'homes#volunteer'
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

  # resources :users do
  #   get :autocomplete_:recipients_:first_name,:last_name, :on => :collection
  # end
  # get '/import', to: 'users#index'
  get '/autofill', to: 'users#index'
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
    get :autocomplete_recipients_name, :on => :collection
    member do
      post :reply
      post :trash
      post :untrash
    end
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
