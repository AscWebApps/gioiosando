module ApplicationHelper


  def full_title(page_title = '')
    base_title = "Gioiosando lo Smart Social Network"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def meta_descriptions(page_description = ' ')
    base_description = "Gioiosando - progetto Progetto #smartcity in ambito digitale creato da ASC Web Apps in collaborazione con Smart Gioiosa e la comunità di sviluppo web Sicily on Rails"
    if page_description.empty?
      #tag('meta', name: 'description', content: "#{base_description}")
      base_description
    else
      #tag('meta', name: 'description', content: "#{base_description} - #{page_description}")
       "#{base_description} - #{page_description}"
    end
  end



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
