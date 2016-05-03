class ServicelocatorController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:index]
  def index
    app = params[:app]
  
    if app == "huayuan_contract"
      render json: {status: 0, errorMessage: '', result: {http: 'http', serverName: 'oa.lloydind.com', port: 10080}} 
      return
    end
  
    render json: {status: 0, errorMessage: '', result: {}} 
  end
end
