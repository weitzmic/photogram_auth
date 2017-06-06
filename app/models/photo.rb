class Photo < ApplicationRecord

belongs_to :user
has_one :caption

end
