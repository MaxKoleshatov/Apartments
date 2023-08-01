module Last   
  extend ActiveSupport::Concern
  
  class_methods do
    def sort_last_24_hours
      where("created_at > ?", Time.now - 1.day)
    end  
  end
end
  