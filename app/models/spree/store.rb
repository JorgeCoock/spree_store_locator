class Spree::Store < ActiveRecord::Base
  validates :address1, :city, :country, :state, :zip, presence: true

  scope :state_ordered, -> { order('state ASC') }



  def full_street_address
    "#{address1}, #{address2}, #{city}, #{state} #{zip}, #{country}"
  end

end
