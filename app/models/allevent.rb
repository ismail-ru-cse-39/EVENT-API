class Allevent < ApplicationRecord
	validates_presence_of :workshop
	validates_presence_of :others
end
