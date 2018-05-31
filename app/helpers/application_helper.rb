module ApplicationHelper
  def yes_no(bool)
    if bool == true
      "yes"
    else
      "no"
    end
  end
end
