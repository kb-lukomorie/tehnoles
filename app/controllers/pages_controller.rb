class PagesController < ApplicationController

  def eco
    @work_items = WorkItem.where(work_type: 'eco')
  end

  def repair
    @work_items = WorkItem.where(work_type: 'repair')
  end

  def development
    @work_items = WorkItem.where(work_type: 'development')
  end
end
