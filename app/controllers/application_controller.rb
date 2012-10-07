class ApplicationController < ActionController::Base
  protect_from_forgery


  def send_a_file(public_path)
    file_path = Rails.application.paths["public"].first + public_path
    return send_file(file_path, {type: "image/jpeg", disposition: 'inline', url_based_filename: true})
  end
end
