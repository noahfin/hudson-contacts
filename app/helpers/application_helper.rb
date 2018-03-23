module ApplicationHelper
    def gravater
    hash = Digest::MD5.hexdigest(current_user.email.to_s.downcase)
    "https://www.gravatar.com/avatar/#{hash}"

  end
end
