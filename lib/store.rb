class Store < ActiveRecord::Base

  has_many :employees

  validates :name,
    presence: true,
    length: {minimum: 3}

  validates :annual_revenue,
    presence: true,
    numericality: {only_integer:true, greater_than: 0}

  validate :contains_mens_or_womens?

    def contains_mens_or_womens?
      if mens_apparel == false && womens_apparel == false
        errors.add(:mens_apparel, "Needs to carry Mens or Womens Apparel")
        errors.add(:womens_apparel, "Needs to carry Mens or Womens Apparel")
    end
  end

  before_destroy :destroyable?

  private

  def destroyable?
    if self.employees.count >= 1
      throw :abort
    else
      return true
    end
  end

end
