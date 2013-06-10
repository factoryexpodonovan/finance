module ApplicationHelper

  def bootstrap_class_for flash_type
    case flash_type
      when :success
        "alert-success"
      when :error
        "alert-error"
      when :alert
        "alert-block"
      when :notice
        "alert-info"
      else
        flash_type.to_s
    end
  end
  
  def placehold(width,height)
    
    random_color = "%06x" % (rand * 0xffffff)
    image = "<img src=\"http://placehold.it/#{width}x#{height}/#{random_color}\">"
    return image.html_safe
  end

end