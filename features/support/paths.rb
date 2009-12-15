module NavigationHelpers
  def path_to(page_name)
    case page_name

    when /the homepage/i
      root_path
    when /the sign up page/i
      new_user_path
    when /the sign in page/i
      new_session_path
    when /the password reset request page/i
      new_password_path

    # Add more page name => path mappings here
    
    when /the lists page/i
      lists_path
    
    when /the list page for the "([^\"]*)" list/i
      list_path(List.find_by_title($1))
      
    when /the users page/i
      users_path

    else
      raise "Can't find mapping from \"#{page_name}\" to a path."
    end
  end
end

World(NavigationHelpers)
