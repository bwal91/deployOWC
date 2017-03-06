class HomesController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!, :only => [:public_calendar, :board_members]
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
    respond_to do |format|
        format.js
    end
  end
  def new_member_app
    respond_to do |format|
        format.js
    end
  end
  def benefits
    respond_to do |format|
        format.js
    end
  end
    # end
  # Membership dropdown nav bar
  def renew_membership
    render :template => "homes/membership/renew_membership"
  end
  def renew_form
    respond_to do |format|
        format.js
    end
  end
  # Membership dropdown nav bar
  def publication
    render :template => "homes/membership/publication"
  end
    # Start
  def member_magazine
    respond_to do |format|
        format.js
    end
  end
  def in_and_out
    respond_to do |format|
        format.js
    end
  end
  def greeting_cards
    respond_to do |format|
        format.js
    end
  end
  def other_publication
    respond_to do |format|
        format.js
    end
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
    respond_to do |format|
        format.js
    end
  end
  def volunteer_form
    respond_to do |format|
        format.js
    end
  end
    # End
  # Our Work dropdown navigation bar
  def charities
    render :template => "homes/ourWork/charities"
  end
    # Start
  def charities_list
    respond_to do |format|
        format.js
    end
  end
  def charity_map
    respond_to do |format|
        format.js
    end
  end
    # end
  # Our Work dropdown navigation bar
  def contributions
    render :template => "homes/ourWork/contributions"
  end
  def report2016
    respond_to do |format|
        format.js
    end
  end
  def report2017
    respond_to do |format|
        format.js
    end
  end
  def contribution_reports
    respond_to do |format|
        format.js
    end
  end
  # Our Work dropdown navigation bar
  def fundraising
    render :template => "homes/ourWork/fundraising"
  end
  def fundraising_news
    respond_to do |format|
        format.js
    end
  end
  def fundraising_reports
    respond_to do |format|
        format.js
    end
  end
  # Our Work dropdown navigation bar
  def ssg # Social Support Group
    render :template => "homes/ourWork/ssg"
  end
  def ssg_news
    respond_to do |format|
        format.js
    end
  end
  def ssg_stories
    respond_to do |format|
        format.js
    end
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
