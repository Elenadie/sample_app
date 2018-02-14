class Product < ApplicationRecord
  has_many :orders

def self.search(search_term)
  if search_term
      find_by_id(:all, :conditions => ["style ILIKE ? OR construction ILIKE ?", "%#{search_term}%", "%#{search_term}%"])
    else
      find_by_id(:all)
    end
  end
end
