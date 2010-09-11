class Gift < ActiveRecord::Base
  validates_presence_of :description
  
  named_scope :our_gifts, :conditions => { :is_admin => true }
  named_scope :other_gifts, :conditions => { :is_admin => false }
  
  def purchase
    self.purchased_on = Time.zone.now.to_date
    self.save!
  end
  
  def unpurchase
    self.purchased_on = nil
    self.save!
  end
end
