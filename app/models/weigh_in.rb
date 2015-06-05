class WeighIn < ActiveRecord::Base
  validates :date, presence: true, uniqueness: true

  def self.lost
    WeighIn.order(:date)
    WeighIn.first.weight - WeighIn.last.weight
  end


end
