class PedometerReading < ActiveRecord::Base
  def calories
    self.steps/20
  end

  def miles
    self.steps/100
  end
end
