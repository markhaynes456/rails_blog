# Taken inspiration from the factory pattern to randomize the color of markup
module ColorHelper
	class Color_Factory
		def initialize
			@colors = ['flat_turquoise','flat_green_sea','flat_nephritis','flat_peter_river','flat_bezile_hole','flat_amthyst', 'flat_wisteria','flat_wet_asphalt','flat_midnight_blue','flat_sun_flower','flat_orange','flat_carrot','flat_pumpkin','flat_alizarin','flat_pomergranate','flat_conrete','flat_asbestos']
			@random = Random.new
		end

		def paint
			@colors[rand(@colors.length)]		
		end
	end
end
