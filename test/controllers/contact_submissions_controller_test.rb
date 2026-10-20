require "test_helper"

class ContactSubmissionsControllerTest < ActionDispatch::IntegrationTest
  test "contact form saves the submission and sends an email" do
    assert_difference("ContactSubmission.count", 1) do
      post "/contact_submissions", params: {
        contact_submission: {
          name: "Jane Doe",
          email: "jane@example.com",
          phone: "555-1234",
          company: "Example Inc",
          message: "Interested in a new project."
        }
      }
    end

    assert_redirected_to contact_path
    assert_equal ["altitudetechsystems@gmail.com"], ActionMailer::Base.deliveries.last.to
  end
end
