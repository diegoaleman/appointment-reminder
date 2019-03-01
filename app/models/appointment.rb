class Appointment < ApplicationRecord
  require 'fake_reminder.rb'

  belongs_to :physician
  belongs_to :patient
  after_save :print_message

  def print_message
    if self.reminder
      reminder = FakeReminder.new
      reminder.send_reminder('patient', self.patient.email, self.physician.name, '')
      reminder.send_reminder('physician', self.physician.email, '', self.patient.name)
    end
  end
end
