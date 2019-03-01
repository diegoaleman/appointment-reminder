class FakeReminder
  def send_reminder(type, email, name)
    if type.eql?('patient')
      puts "Sending email to #{email} ... remember your appointment with dr #{name}"
    else
      puts "Sending email to #{email} ... remember your appointment with the patient: #{name}"
    end
  end
end
