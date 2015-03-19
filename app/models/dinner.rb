class Dinner < ActiveRecord::Base
  attr_accessible :main_source, :sauce, :starch, :veggie
  
  validates :main_source, presence: true
  validates :sauce, presence: true
  validates :starch, presence: true
  validates :veggie, presence: true
end