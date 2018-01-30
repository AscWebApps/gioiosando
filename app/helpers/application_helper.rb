module ApplicationHelper

  def gravatar_for(user)
    if user.image
      image_tag("https://graph.facebook.com/#{user.uid}/picture?type=large")
    else
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
      image_tag(gravatar_url, alt: user.email)
    end
  end


  def gravatar_navbar(user)
     if user.image
      image_tag("https://graph.facebook.com/#{user.uid}/picture?type=small", width: "30", height: "30")
    else
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
      image_tag(gravatar_url, alt: user.email, width: "30", height: "30")
    end
  end


end
