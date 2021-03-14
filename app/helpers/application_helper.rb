module ApplicationHelper

  def gravitar_for(user, options = { size: 80 })
    size = options[:size]
    hash = Digest::MD5.hexdigest(user.email)
    url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(url, alt: user.email, class: "rounded mx-auto d-block shadow mt-3")
  end
  
end
