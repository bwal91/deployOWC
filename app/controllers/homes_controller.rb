class HomesController < ApplicationController
  skip_before_action :authenticate_user!
  load_and_authorize_resource
  # Home Page
  def index
    @me = User.find(75)
    session[:user_id] = @me.id
  end
  def login
  end
  # Bangalore dropdown bar
  def moving_to
    render :template => "homes/bangalore/moving_to"
  end
  # Moving to Bangalore links
    # start
  def healthcare
    render :template => "homes/bangalore/m2/healthcare"
  end
  def schools
    render :template => "homes/bangalore/m2/schools"
  end
  def residency
    render :template => "homes/bangalore/m2/residency"
  end
  def accomodations
    render :template => "homes/bangalore/m2/accomodations"
  end
  def safe_environments
    render :template => "homes/bangalore/m2/safe_environments"
  end
  def transportation
    render :template => "homes/bangalore/m2/transportation"
  end
  def banking
    render :template => "homes/bangalore/m2/banking"
  end
  def pets
    render :template => "homes/bangalore/m2/pets"
  end
    # end
  # Bangalore dropdown
  def life_in
    render :template => "homes/bangalore/life_in"
  end
  # life links
    # start
  def pests
    render :template => "homes/bangalore/life/pests"
  end
  def life_other
    render :template => "homes/bangalore/life/life_other"
  end
  def shopping
    render :template => "homes/bangalore/life/shopping"
  end
  def activities
    render :template => "homes/bangalore/life/activities"
  end
  def sightseeing
    render :template => "homes/bangalore/life/sightseeing"
  end
  def life_publication
    render :template => "homes/bangalore/life/life_publication"
  end
    # end
  # Membership dropdown navigation bar
  def new_member
    render :template => "homes/membership/new_member"
  end
    # Start
  def member_info
    render :template => "homes/membership/newMem/member_info"
  end
  def new_member_app
    render :template => "homes/membership/newMem/new_member_app"
  end
  def payment_gateway
    render :template => "homes/membership/payment_gateway"
  end
    # end
  # Membership dropdown nav bar
  def renew_membership
    render :template => "homes/membership/renew_membership"
  end
  def renew_form
    render :template => "homes/membership/renew/renew_form"
  end
  # Membership dropdown nav bar
  def publication
    render :template => "homes/membership/publication"
  end
    # Start
  def member_magazine
  end
  def in_and_out
  end
  def greeting_cards
  end
    # End
  # Memebership dropdown nav bar
  def volunteer
    render :template => "homes/membership/volunteer"
  end
  def public_calendar
    render :template => "homes/membership/public_calendar"
  end
    # Start
  def job_open
  end
  def volunteer_app
  end
    # End
  # Our Work dropdown navigation bar
  def charities
    render :template => "homes/ourWork/charities"
  end
  def contributions
    render :template => "homes/ourWork/contributions"
  end
  def fundraising
    render :template => "homes/ourWork/fundraising"
  end
  def ssg # Social Support Group
    render :template => "homes/ourWork/ssg"
  end
  # About options on bottom of pages
  def owc_club_info
    render :template => "homes/aboutUs/owc_club_info"
  end
  def mission_statement
    render :template => "homes/aboutUs/mission_statement"
  end
  def journey
    render :template => "homes/aboutUs/journey"
  end
  # Contact Us
  def contact
    render :template => "homes/contactUs/contact"
  end
  def executive_comittee
    render :template => "homes/contactUs/executive_comittee"
  end
  def trustee
    render :template => "homes/contactUs/trustee"
  end
end
