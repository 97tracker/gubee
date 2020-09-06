class Bug < ApplicationRecord
    def self.import(file)
        CSV.foreach(file.path, headers: true) do | row | 
        Bug.create! row.to_hash 
        end
    end
end
