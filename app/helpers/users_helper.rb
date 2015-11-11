module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 100 })
    gravater_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravater_url = "https://secure.gravatar.com/avatar/#{gravater_id}?s=#{size}"
    image_tag(gravater_url, alt: user.name, class: "gravatar")
  end
end
