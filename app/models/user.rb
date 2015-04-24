class User < ActiveRecord::Base
  has_many :message
  has_many :contact
  validates :email, uniqueness: true

  def self.bulk_insert
    alpha = ("a".."z").to_a
    1.upto(10000).each do |x|
      user=User.new
      user.email = "#{alpha.sample(4).join}_#{x}@gmail.com"
      user.name = alpha.sample(5).join
      user.password = user.name
      user.save
    end
  end

end
