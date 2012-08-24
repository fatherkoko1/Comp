def full_title(page_title)
	base_title="ClassPort"
	if page_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end

# This just helps in a way during testing using RSpec