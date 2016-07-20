class ServicelocatorController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:index]
  def index
    
    platform = params[:client][:platform]
    Rails.logger.debug {platform}

    render json: {status: 0, errorMessage: '', result: {http: 'http', serverName: '114.215.236.171', port: 6012}}
    
  end
end
