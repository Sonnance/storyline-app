class Asset < ActiveRecord::Base
	belongs_to :story
	has_many :rules

	TYPE_TOOL      = 0
	TYPE_EQUIPMENT = 1
	TYPE_KEY       = 2
	TYPE_COMPANION = 3

	def self.asset_types
		{
			TYPE_TOOL      => "Tool",
			TYPE_EQUIPMENT => "Equipment",
			TYPE_KEY       => "Key Item",
			TYPE_COMPANION => "Companion",
		}
	end

	def type_as_string
		case asset_type
			when TYPE_TOOL
				"Tool"
			when TYPE_EQUIPMENT
				"Equipment"
			when TYPE_KEY
				"Key Item"
			when TYPE_COMPANION
				"Companion"
		end
	end
end
