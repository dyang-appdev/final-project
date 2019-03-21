task create_slots: :environment do 
  
  monday = Time.current.beginning_of_week
  week = Week.find_or_create_by(week_of: monday)
  
  time = monday + 9.hours
  
  6.times do 
    10.times do 
      slot = Slot.find_or_create_by(slot_start: time, slot_end: time + 60.minutes, week_id: week.id)
      
      time = time + 60.minutes
    end
    
    time = time.beginning_of_day + 1.day + 9.hours
  end
end

