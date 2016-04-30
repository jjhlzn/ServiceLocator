class ServicelocatorController < ApplicationController
  def index
    app = params[:app]
  
    if app == "huayuan_contract"
      render json: {status: 0, errorMessage: '', result: {http: 'http', serverName: 'jjhtest.hengdianworld.com', port: 80}} 
      return
    end
  
    render json: {status: 0, errorMessage: '', result: {}} 
  end
end
