class FormMailerPreview < ActionMailer::Preview
  def new_problem
    FormMailer.new_problem(Problem.first)
  end

  def new_contact
    FormMailer.new_contact(Contact.first)
  end

  def new_request
    FormMailer.new_request(Request.first)
  end

end
