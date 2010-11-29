module ActiveRecord
  class Base
		after_save :aws_check_each_field
		after_create :aws_check_create
				
    def self.aws_onchange(*args)
			options = args.extract_options!
			#dbug(options[:checked_field])
			
      cattr_accessor :aws_onchange_field
			cattr_accessor :aws_onchange_method
			cattr_accessor :aws_onchange_oncreate
			
      self.aws_onchange_field = (options[:checked_field] and options[:checked_field].respond_to?('each')?options[:checked_field]:[options])
			self.aws_onchange_method = (options[:method]?options[:method]:'update_cache') 
			self.aws_onchange_oncreate = (options[:oncreate]?options[:oncreate]:false) 
    end
		
    private
		def aws_check_create
			if self.respond_to?('aws_onchange_oncreate')
				if self.aws_onchange_oncreate==true
					self.send(self.aws_onchange_method)
				end
			end
		end
		
		def aws_check_each_field
			if self.respond_to?('aws_onchange_field')
				need_update = false
				self.aws_onchange_field.each do |item|
          if item!='' and self.changed.include?(item.to_s)
						need_update = true
					end
        end
				if need_update
				  self.send(self.aws_onchange_method)
				end
			end		
		end
	end
end