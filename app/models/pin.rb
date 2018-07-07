class Pin < ApplicationRecord
	belongs_to :user
	# dopisuje do obslugi obrazow przez ImageMagick i paperclip
	# 300x300 do wymiar obrazu, 100x100 to jego miniatura
	# do wymiarow bedzie sie mozna odwolywac przez :medium lub :thumb
	has_attached_file :image, :styles => { :medium => "300x300", :thumb => "100x100" }
	# tutaj za pomoca wyrazenia regularnego zdefiniowano typ pliku graficznego
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
