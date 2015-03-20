class Story < ActiveRecord::Base
	has_many :scenes
	has_many :assets
end
