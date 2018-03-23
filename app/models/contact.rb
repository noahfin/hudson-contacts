class Contact < ApplicationRecord
  require 'digest/md5'
  belongs_to :group, :autosave => true
   paginates_per 10
   validates :name , :email, presence: true
   validates :name, length: {minimum: 2}
  def gravater
    hash = Digest::MD5.hexdigest(email.downcase)
    "https://www.gravatar.com/avatar/#{hash}"

  end
end
