module ApplicationHelper
  def login_helper style = ''
    if current_user.present?
      (link_to "Debts", debts_path, class: style) +
      " ".html_safe +
      (link_to "Friend Requests", friend_requests_path, class: style) +
      " ".html_safe +
      (link_to "Edit Profile", edit_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Logout", destroy_user_session_path, method: :delete, class: style)
    else
      (link_to "Login", new_user_session_path, class: style) +
      " ".html_safe +
      (link_to "Sign Up", new_user_registration_path, class: style)
    end
  end
end
