module ItemsHelper
  def root_path?
    request.path == "/" ? true : false
  end
end
