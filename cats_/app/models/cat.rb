class Cat < ApplicationRecord
  CAT_COLORS = ["Black", "Tabby", "Brown", "Calico", "Ginger"]
  validates :color, presence: true, inclusion: { in: CAT_COLORS }
  validates :birth_date, presence: true
  validates :name, presence: true
  validates :sex, presence: true, includsion: { in: ["M", "F"] }
  validate :birth_date_cannot_be_future

  def birth_date_cannot_be_future
    if birth_date.present? && birth_date > Date.today
      errors.add(:birth_date, "cant be in the future")
    end
  end

  def time_ago_in_words
  end

end
