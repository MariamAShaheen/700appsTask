class Author < ApplicationRecord
  extend FriendlyId
  friendly_id :last_name, use: [:slugged, :history]
  validates :first_name,:last_name, presence: true, allow_blank: false
  belongs_to  :book
  def should_generate_new_friendly_id?
   new_record?
  end
end
