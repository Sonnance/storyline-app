class Rule < ActiveRecord::Base
	belongs_to :asset
	belongs_to :scene

	STATE_QUANTITY   = 0
	STATE_DURABILITY = 1

	INEQUALITY_GREATER_THAN             = 0
	INEQUALITY_LESS_THAN                = 1
	INEQUALITY_GREATER_THAN_OR_EQUAL_TO = 2
	INEQUALITY_LESS_THAN_OR_EQUAL_TO    = 3
	INEQUALITY_EQUAL_TO                 = 4
	INEQUALITY_NOT_EQUAL_TO             = 5


	def self.rule_states
		{
			STATE_QUANTITY   => "Quantity",
			STATE_DURABILITY => "Durability",
		}
	end

	def self.rule_inequalities
		{
			INEQUALITY_GREATER_THAN             => ">",
			INEQUALITY_LESS_THAN                => "<",
			INEQUALITY_GREATER_THAN_OR_EQUAL_TO => ">=",
			INEQUALITY_LESS_THAN_OR_EQUAL_TO    => "<=",
			INEQUALITY_EQUAL_TO                 => "==",
			INEQUALITY_NOT_EQUAL_TO             => "!=",
		}
	end

	def state_as_string
		case state
			when STATE_QUANTITY 
				"quantity"
			when STATE_DURABILITY
				"durability"
		end
	end

	def inequality_as_string
		case state
			when INEQUALITY_GREATER_THAN
				"is greater than"
			when INEQUALITY_LESS_THAN
				"is less than"
			when INEQUALITY_GREATER_THAN_OR_EQUAL_TO
				"is greater than or equal to"
			when INEQUALITY_LESS_THAN_OR_EQUAL_TO
				"is less than or equal to"
			when INEQUALITY_EQUAL_TO
				"is equal to"
			when INEQUALITY_NOT_EQUAL_TO
				"is not equal to"
		end
	end
end
