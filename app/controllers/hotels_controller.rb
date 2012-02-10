class HotelsController < ApplicationController
  respond_to :html, :json
  # GET /hotels
  # GET /hotels.json
  def index
    #logger.debug "[debug]"
    #logger.debug params[:index].to_s
    #logger.debug params[:index][:city]

    #if params[:index] != nil
    #  options = {
    #    :apikey => EAN3_CONFIG["apikey"],
    #    :secret => EAN3_CONFIG["apikey"],
    #    :cid => EAN3_CONFIG["cid"],
    #    :minorRev => 12,
    #    :locale => "ja_JP",
    #    :currencyCode => "JPY",
    #    :debug => true
    #  }
    #  @client = Ean3::Client.new(options)
    #  params[:index][:numberOfResults] = 20
    #  logger.debug params[:index]
    #  @response = @client.getList(params[:index])
    #end

    #respond_to do |format|
    #  format.html
    #  format.json { render :json => @response }
    #end
  end

  # GET /hotels/1
  # GET /hotels/1.json
  def show
    respond_to do |format|
      format.html
    end
  end

  def search
    if params[:index] != nil
      options = {
        :apikey => EAN3_CONFIG["apikey"],
        :secret => EAN3_CONFIG["apikey"],
        :cid => EAN3_CONFIG["cid"],
        :minorRev => 12,
        :locale => "ja_JP",
        :currencyCode => "JPY",
        :debug => true
      }
      @client = Ean3::Client.new(options)
      params[:index][:numberOfResults] = 20
      logger.debug params[:index]
      @response = @client.getList(params[:index])
    end

    respond_with do |format|
      format.html do
        if request.xhr?
          render :partial => 'results', :layout => false
        end
      end
    end
  end
end
