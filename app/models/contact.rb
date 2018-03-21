class Contact < ApplicationRecord
  require 'digest/md5'

  belongs_to :group

  def gravater
    hash = Digest::MD5.hexdigest(email.downcase)
    "https://www.gravatar.com/avatar/#{hash}"

  end
end
