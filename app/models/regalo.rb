class Regalo < ActiveRecord::Base

  validates_presence_of :name
  before_save :fix_links

  attr_accessible :name, :link, :donor

  scope :available, where(:donor => nil)

  def available?
    self.donor.blank?
  end

  private
  def fix_links
    unless self.link.empty?
      self.link = /^http/.match(self.link) ? self.link : "http://#{self.link}"
    end
  end
end
