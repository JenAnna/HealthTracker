class WeighIn < ActiveRecord::Base
  validates :date, uniqueness: true

  # before_save :date
  # def self.date_format
  #   p datefield.strftime("%y%m%d")
  # end
    # self.date = self.each do |w|
    #   if self.date.strftime("%y%m%d") == w.date.strftime("%y%m%d")
    #     raise errors
    #   else
    #     self.save
    #   end
  # end

  def self.lost
    WeighIn.order(:date)
    WeighIn.first.weight - WeighIn.last.weight
  end


end
