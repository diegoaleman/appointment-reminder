class Appointment < ApplicationRecord
  require 'fake_reminder.rb'

  belongs_to :physician
  belongs_to :patient
  after_save :send_reminder

  def send_reminder(send_to=nil)
    if self.reminder
      reminder = FakeReminder.new

      if send_to.eql?('patient') or send_to.nil?
        patient_reminder(reminder)
      end

      if send_to.eql?('physician') or send_to.nil?
        physician_reminder(reminder)
      end
    end
  end

  private

  def patient_reminder(reminder)
    reminder.send_reminder('patient', self.patient.email, self.physician.name)
  end

  def physician_reminder(reminder)
    reminder.send_reminder('physician', self.physician.email, self.patient.name)
  end
end
