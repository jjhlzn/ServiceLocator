class ServicelocatorController < ApplicationController
  def index
    app = params[:app]
  
    if app == "huayuan_contract"
      render json: {status: 0, errorMessage: '', result: {http: 'http', serverName: 'oa.lloydind.com', port: 10080}} 
      return
    end
  
    render json: {status: 0, errorMessage: '', result: {}} 
  end
end
