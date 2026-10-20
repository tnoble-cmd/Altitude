class PagesController < ApplicationController
  def home
    @contact_submission = ContactSubmission.new
  end

  def about_us
  end

  def projects
  end

  def contact
    @contact_submission = ContactSubmission.new
  end
end
