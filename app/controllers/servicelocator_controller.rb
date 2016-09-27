class ServicelocatorController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:index]
  def index
    
    platform = params[:client][:platform]
    version = params[:client][:appversion]
    Rails.logger.debug {platform}

    if platform == 'iphone' && version == '1.0.1.53'
      render json: {status: 0, errorMessage: '', result: {http: 'http', serverName: 'jf.jinjunhang.com', port: 80}}
      return
    end

    render json: {status: 0, errorMessage: '', result: {http: 'http', serverName: 'jf.yhkamani.com', port: 80}}
    
  end
end
