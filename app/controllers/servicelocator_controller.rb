class ServicelocatorController < ApplicationController
  def index
    app = params[:app]
  
    if app == "huyuan_contract"
      render json: {status: 0, errorMessage: '', result: {http: 'http', serverName: 'jjhtest.hengdianworld.com', port: 80}} 
    end
  
    render json: {status: 0, errorMessage: '', result: {}} 
  end
end
