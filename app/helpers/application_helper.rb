module ApplicationHelper


  def gravatar_for (user, options= {size: 70})
    gravatar = Digest::MD5::hexdigest(user.email).downcase
    size = options[:size]
    url = "http://gravatar.com/avatar/#{gravatar}.png?s=#{size}"
    image_tag(url, alt: user.username ,class: 'img-circle')
  end

end
