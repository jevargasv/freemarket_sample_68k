class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  # association
  belongs_to :user
  belongs_to :category
  has_many :item_images
  accepts_nested_attributes_for :item_images, allow_destroy: true
  has_many :item_images
  # belongs_to :category

  # validation
  validates :name,             presence: true, length: {maximum: 40}
  validates :price,            presence: true
  validates :content,          presence: true, length: {maximum: 1000}
  validates :condition,        presence: true
  validates :shipping,         presence: true
  validates :shipping_area,    presence: true
  validates :days_to_ship,     presence: true
  validates :shipping_method,  presence: true
  validates :status,           presence: true
end
