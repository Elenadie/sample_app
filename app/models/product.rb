class Product < ApplicationRecord
  has_many :orders

def self.search(search_term)
  if search_term
      find(:all, :conditions => ["style ILIKE ? OR construction ILIKE ?", "%#{search_term}%", "%#{search_term}%"])
    else
      find(:all)
    end
  end
end
