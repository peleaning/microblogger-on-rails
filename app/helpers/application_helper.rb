module ApplicationHelper
	def title
		base_title = "Pete's Microblog"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
	
	def logo
		image_tag("logo1.png", :alt => "Sample App", :class => "round")
	end
	
	def gravatar_for(user, options = { :size => 50 } )
		gravatar_image_tag(user.email.downcase, :alt => h(user.name),
												:class => 'gravatar',
												:gravatar =>options)
	end
	
end
