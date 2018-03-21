class Contact < ApplicationRecord
  require 'digest/md5'

  belongs_to :group
   paginates_per 10

  def gravater
    hash = Digest::MD5.hexdigest(email.downcase)
    "https://www.gravatar.com/avatar/#{hash}"

  end
end
