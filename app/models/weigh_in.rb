class WeighIn < ActiveRecord::Base
  validates :date, presence: true, uniqueness: {scope: :user_id}
  validates :user_id, presence: true

  def self.lost
    WeighIn.order(:date)
    WeighIn.first.weight - WeighIn.last.weight
  end


end
