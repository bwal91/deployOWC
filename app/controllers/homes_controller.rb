class HomesController < ApplicationController
  before_action :authenticate_user!, :only => [:public_calendar, :board_members]
  load_and_authorize_resource
  # Home Page
  def index
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
    respond_to do |format|
        format.js
    end
  end
  def schools
    respond_to do |format|
        format.js
    end
  end
  def residency
    respond_to do |format|
        format.js
    end
  end
  def accomodations
    respond_to do |format|
        format.js
    end
  end
  def safe_environments
    respond_to do |format|
        format.js
    end
  end
  def transportation
    respond_to do |format|
        format.js
    end
  end
  def banking
    respond_to do |format|
        format.js
    end
  end
  def pets
    respond_to do |format|
        format.js
    end
  end
    # end
  # Bangalore dropdown
  def life_in
    render :template => "homes/bangalore/life_in"
  end
  # life links
    # start
  def festivals
    respond_to do |format|
        format.js
    end
  end
  def pests
    respond_to do |format|
        format.js
    end
  end
  def life_other
    respond_to do |format|
        format.js
    end
  end
  def shopping
    respond_to do |format|
        format.js
    end
  end
  def activities
    respond_to do |format|
        format.js
    end
  end
  def sightseeing
    respond_to do |format|
        format.js
    end
  end
  def life_publication
    respond_to do |format|
        format.js
    end
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
    render :template => "homes/membership/pubMem/member_magazine"
  end
  def in_and_out
    render :template => "homes/membership/pubMem/in_and_out"
  end
  def greeting_cards
    render :template => "homes/membership/pubMem/greeting_cards"
  end
    # End
  def public_calendar
    render :template => "homes/membership/public_calendar"
  end
  # Memebership dropdown nav bar
  def volunteer
    render :template => "homes/membership/volunteer"
  end
    # Start
  def job_openings
    render :template => "homes/membership/volMem/job_openings"
  end
  def volunteer_app
    render :template => "homes/membership/volMem/volunteer_app"
  end
  def volunteer_form
    render :template => "homes/membership/volMem/volunteer_form"
  end
    # End
  # Our Work dropdown navigation bar
  def charities
    render :template => "homes/ourWork/charities"
  end
    # Start
  def charity_map
    render :template => "homes/ourWork/charity/charities"
  end
    # end
  # Our Work dropdown navigation bar
  def contributions
    render :template => "homes/ourWork/contributions"
  end
  def contribution_reports
    render :template => "homes/ourWork/contributions/contributions"
  end
  # Our Work dropdown navigation bar
  def fundraising
    render :template => "homes/ourWork/fundraising"
  end
  def fundraising_news
    render :template => "homes/ourWork/fund/fundraising_news"
  end
  def fundraising_reports
    render :template => "homes/ourWork/fund/fundraising_reports"
  end
  # Our Work dropdown navigation bar
  def ssg # Social Support Group
    render :template => "homes/ourWork/ssg"
  end
  def ssg_news
    render :template => "homes/ourWork/ssg/ssg_news"
  end
  def ssg_stories
    render :template => "homes/ourWork/ssg/ssg_stories"
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
  def board_members
  end
end
