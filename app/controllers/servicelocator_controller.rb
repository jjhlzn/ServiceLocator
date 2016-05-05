class ServicelocatorController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:index]
  def index
    app = params[:app]
    version = params[:version]
  
    if app == "huayuan_contract"
      if version == "1.0.2-2" 
        render json: {status: 0, errorMessage: '', result: {http: 'https', serverName: 'oa.lloydind.com', port: 10443}}  
        return
      else
        render json: {status: 0, errorMessage: '', result: {http: 'https', serverName: 'oa.lloydind.com', port: 10443}} 
        return
      end
    elsif app == "huayuan_contract_android"
      if version == "1.0"
        render json: {status: 0, errorMessage: '', result: {http: 'http', serverName: 'jjhtest.hengdianworld.com', port: 80}} 
      elsif version == "1.0.2"
        render json: {status: 0, errorMessage: '', result: {http: 'http', serverName: 'jjhtest.hengdianworld.com', port: 80}}
      else
        render json: {status: 0, errorMessage: '', result: {http: 'http', serverName: 'jjhtest.hengdianworld.com', port: 80}}
      end 
      return
    end
  
    render json: {status: 0, errorMessage: '', result: {}} 
  end
end
