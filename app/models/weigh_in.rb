class WeighIn < ActiveRecord::Base

  def self.lost
    WeighIn.order(:date)
    WeighIn.first.weight - WeighIn.last.weight
  end

  
end
