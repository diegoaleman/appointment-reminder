class FakeReminder
  def send_reminder(type, email, doctor_name, patient_name)
    if type.eql?('patient')
      puts "Sending email to #{email} ... remember your appointment with dr #{doctor_name}"
    else
      puts "Sending email to #{email} ... remember your appointment with the patient: #{patient_name}"
    end
  end
end
