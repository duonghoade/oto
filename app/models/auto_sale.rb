class AutoSale < ActiveRecord::Base
  belongs_to :user
  has_one :auto
  accepts_nested_attributes_for :auto, :allow_destroy => true
end
