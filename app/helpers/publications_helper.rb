module PublicationsHelper
  def state_tag state
    "<span class='label label-#{state_class state}'> #{t("activerecord.attributes.publication.status.#{state}")} </span>".html_safe
  end

  def state_class state
    case state
      when "finished"
        "danger"
      when "active"
        "success"
      when "paused"
        "default"
    end
  end

  def check_icon_tag value
    if value
      '<span class="main-color icon_check_alt2"></span>'.html_safe
    else
      '<span class="main-color icon_close_alt2" style="color: #ac2925"></span>'.html_safe
    end
  end

  def status_button_tag state
    case state
      when "finished"
        '<span class="glyphicon glyphicon-repeat"></span>'.html_safe
      when "active"
        '<span class="glyphicon glyphicon-pause"></span>'.html_safe
      when "paused"
        '<span class="glyphicon glyphicon-play"></span>'.html_safe
    end
  end
end
