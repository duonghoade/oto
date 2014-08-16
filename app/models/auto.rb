class Auto < ActiveRecord::Base
  belongs_to :auto_sale
  has_many :photos
    accepts_nested_attributes_for :photos, :allow_destroy => true
end
