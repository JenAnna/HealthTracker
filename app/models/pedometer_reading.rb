class PedometerReading < ActiveRecord::Base
  def calories
    self.steps/20
  end

  def miles
    self.steps/2000
  end
end
