class Doctor

  @@all=[]

attr_accessor :name

def initialize(name)
  @name=name
  @@all<<self
end

def self.all
  @@all
end

def appointments
  Appointment.all.select{|appointments| appointments.doctor==self}
end

def new_appointment(patient, date)
  Appointment.new(date, patient, self)
end

def patients
  appointments.map do |appointment|
    appointment.patient
  end
end






end
