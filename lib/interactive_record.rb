require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  def self.table_name
    slef.to_s.downcase.pluralize
  end 
  
  def column_names
    DB[:conn].results_as_hash = true 
    
    sql = "paragma table_info('#{table_name}') "
    
    
  end

end