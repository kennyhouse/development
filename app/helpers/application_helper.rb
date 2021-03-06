module ApplicationHelper

	#Returns the full title on a per-page basis.
	def full_title(page_title)
		base_title = "Ruby on Rails Tutorial Development App"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}" #{} is the interpolation of rails
		end
		
	end
end
