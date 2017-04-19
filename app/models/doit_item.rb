class DoitItem < ApplicationRecord
  belongs_to :doit_list
    
  def completed?
      !completed_at.blank?
  end
end
