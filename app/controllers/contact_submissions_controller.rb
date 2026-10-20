class ContactSubmissionsController < ApplicationController
  def create
    @contact_submission = ContactSubmission.new(contact_submission_params)

    if @contact_submission.save
      begin
        ContactSubmissionMailer.notify_admin(@contact_submission).deliver_now
      rescue StandardError => e
        Rails.logger.error("Contact submission email failed: #{e.message}")
      end

      redirect_to contact_path, notice: "Thanks! Your message has been received."
    else
      @contact_submission = ContactSubmission.new(contact_submission_params)
      render "pages/contact", status: :unprocessable_entity
    end
  end

  private

  def contact_submission_params
    params.require(:contact_submission).permit(:name, :email, :phone, :company, :message)
  end
end
