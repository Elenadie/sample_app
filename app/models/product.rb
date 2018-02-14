class Product < ApplicationRecord
  has_many :orders
end

def self.search(search_term)
  if search
      find(:all, :conditions => ["style ILIKE ? OR construction ILIKE ?", "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
end
