class Book < ApplicationRecord
  validates :full_name, presence: true, allow_blank: false
  has_many  :authors
  accepts_nested_attributes_for :authors, reject_if: :all_blank, allow_destroy: true
  before_save :create_short_name, on: :create
  def create_short_name
    self.short_name = self.full_name.parameterize("_")
  end
end
