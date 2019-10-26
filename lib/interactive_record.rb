require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  
  def self.table_name
    slef.to_s.downcase.pluralize
  end
  
  def column_names
    DB[:conn].results_as_hash = true 
    
    sql = "paragma table_info('#{table_name}') "
    table_info = DB[:conn].execute(sql)
    
    column_names = []
    table_info.each do |row|
      column_names << row["name"]
    end
    column_names.compact
  end

  
end