module UsersHelper

  # Returns the Gravatar for the given user.
  def gravater_for(user)
    gravater_id = Digest::MD5::hexdigest(user.email.downcase)
    gravater_url = "https://secure.gravatar.com/avatar/#{gravater_id}"
    image_tag(gravater_url, alt: user.name, class: "gravatar")
  end
end
