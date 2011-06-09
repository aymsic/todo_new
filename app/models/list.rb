class List < ActiveRecord::Base
  has_many :tasks

  def done_tasks
     tasks.where(:done => true).order("updated_at DESC")
  end
  
end
