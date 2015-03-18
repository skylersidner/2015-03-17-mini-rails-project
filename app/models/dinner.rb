class Dinner < ActiveRecord::Base
  attr_accessible :main_source, :sauce, :starch, :veggie
end