class WorkItemsController < ApplicationController
  # GET /work_items
  # GET /work_items.json
  def index
    @work_items = WorkItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @work_items }
    end
  end

  # GET /work_items/1
  # GET /work_items/1.json
  def show
    @work_item = WorkItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @work_item }
    end
  end

  # GET /work_items/new
  # GET /work_items/new.json
  def new
    @work_item = WorkItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @work_item }
    end
  end

  # GET /work_items/1/edit
  def edit
    @work_item = WorkItem.find(params[:id])
  end

  # POST /work_items
  # POST /work_items.json
  def create
    @work_item = WorkItem.new(params[:work_item])

    respond_to do |format|
      if @work_item.save
        format.html { redirect_to @work_item, notice: 'Work item was successfully created.' }
        format.json { render json: @work_item, status: :created, location: @work_item }
      else
        format.html { render action: "new" }
        format.json { render json: @work_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /work_items/1
  # PUT /work_items/1.json
  def update
    @work_item = WorkItem.find(params[:id])

    respond_to do |format|
      if @work_item.update_attributes(params[:work_item])
        format.html { redirect_to @work_item, notice: 'Work item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @work_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_items/1
  # DELETE /work_items/1.json
  def destroy
    @work_item = WorkItem.find(params[:id])
    @work_item.destroy

    respond_to do |format|
      format.html { redirect_to work_items_url }
      format.json { head :no_content }
    end
  end
end
