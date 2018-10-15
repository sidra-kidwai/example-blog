class Article < ApplicationRecord
  ÷scope :created_before, ->(time) { where("created_at < ?", time) }
  attr_accessor :terms_and_conditions
  validates :terms_and_conditions, acceptance: true


  has_many :comments, -> { order('posted_at DESC') }, dependent: :destroy
  has_many :pictures, as: :imageable, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  # validates :text, presence: true, if: "title.nil?"

  def self.created_before(time)
    where("created_at < ?", time)
  end

end
