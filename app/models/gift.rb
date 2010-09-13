class Gift < ActiveRecord::Base
  validates_presence_of :description
  
  belongs_to :category
  
  named_scope :our_gifts, :conditions => { :is_admin => true, :currently_own => false }, :order => :description
  named_scope :currently_own, :conditions => { :currently_own => true }, :order => :description
  named_scope :other_gifts, :conditions => { :is_admin => false, :currently_own => false }, :order => :description
  
  def purchase(ip)
    self.purchased_on = Time.zone.now
    self.ip_address = ip
    self.save!
  end
  
  def unpurchase
    self.purchased_on = nil
    self.ip_address = nil
    self.save!
  end
end
