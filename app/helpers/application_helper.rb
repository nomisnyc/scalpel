module ApplicationHelper
  def intellinav
    if @auth.present?
      link_to("Log Out #{@auth.name.titleize}", login_path, :method => :delete)

    else
      link_to('login', login_path, :id => 'logbutton', :remote => true)
    end
  end
end