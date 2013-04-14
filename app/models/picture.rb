class Picture < ActiveRecord::Base
  attr_accessible :image, :name
  mount_uploader :image, ImageUploader

  before_create :default_name

  def default_name

    #self.name ||= File.basename(image.filename, '.*').titleize if image
    self.name = "foo-#{Time.now}.jpg"
  end
end
