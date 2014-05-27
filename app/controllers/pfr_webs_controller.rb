# coding: utf-8
class PfrWebsController < ApplicationController
  # GET /pfr_webs
  # GET /pfr_webs.json
  def index
    @pfr_webs = PfrWeb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pfr_webs }
    end
  end

  # GET /pfr_webs/1
  # GET /pfr_webs/1.json
  def show
    @pfr_web = PfrWeb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pfr_web }
    end
  end

  # GET /pfr_webs/new
  # GET /pfr_webs/new.json
  def new
    @pfr_web = PfrWeb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pfr_web }
    end
  end

  # GET /pfr_webs/1/edit
  def edit
    @pfr_web = PfrWeb.find(params[:id])
  end

  # POST /pfr_webs
  # POST /pfr_webs.json
  def create
    @pfr_web = PfrWeb.new(params[:pfr_web])

    respond_to do |format|
      if @pfr_web.save
        format.html { redirect_to @pfr_web, notice: 'Pfr web was successfully created.' }
        format.json { render json: @pfr_web, status: :created, location: @pfr_web }
      else
        format.html { render action: "new" }
        format.json { render json: @pfr_web.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pfr_webs/1
  # PUT /pfr_webs/1.json
  def update
    @pfr_web = PfrWeb.find(params[:id])

    respond_to do |format|
      if @pfr_web.update_attributes(params[:pfr_web])
        format.html { redirect_to @pfr_web, notice: 'Pfr web was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pfr_web.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pfr_webs/1
  # DELETE /pfr_webs/1.json
  def destroy
    @pfr_web = PfrWeb.find(params[:id])
    @pfr_web.destroy

    respond_to do |format|
      format.html { redirect_to pfr_webs_url }
      format.json { head :no_content }
    end
  end
end
