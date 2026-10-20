class ContactSubmissionMailer < ApplicationMailer
  default from: "noreply@altitudetechsystems.com"

  def notify_admin(contact_submission)
    @contact_submission = contact_submission

    mail(
      to: "altitudetechsystems@gmail.com",
      subject: "New contact submission from #{@contact_submission.name}"
    )
  end
end
