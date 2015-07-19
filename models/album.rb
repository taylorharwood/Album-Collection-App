class Album < ActiveRecord::Base
  def to_s
    "#{name} - #{artist} - Year: #{year} - Genre: #{genre} - Rating: #{rating}"
  end
end
