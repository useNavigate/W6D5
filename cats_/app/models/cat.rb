class Cat < ApplicationRecord
  CAT_COLORS = ["Black", "Tabby", "Brown", "Calico", "Ginger"]
  validates :color, presence: true, inclusion: { in: CAT_COLORS }
  validates :birth_date, presence: true
  validates :name, presence: true
  validates :sex, presence: true, includsion: { in: ["M", "F"] }

  def :birth_date_cannot_be_future

    # if :birth_date  = "#{t.year}-#{t.month}-#{t.day}"
  end
end
