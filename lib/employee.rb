class Employee < ActiveRecord::Base

  belongs_to :store

  validates :first_name,
    presence: true

  validates :last_name,
    presence: true

  validates :hourly_rate,
    numericality: {only_integer: true, less_than: 200, greater_than: 40}

  validates :store_id,
    presence: true

  after_create :generate_password

  private
  def generate_password
    password = (0...8).map { (65 + rand(26)).chr }.join
    Employee.find_by(id: self.id).update(
      password: password
    )
  end

end
