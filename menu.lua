menu_difficulties = {"normal","hard","oh god!"}

function updateMenu(dt)
	updateTerrain(dt)
	updateTracks(dt)
end

function drawMenu()
	drawTerrain()
	drawTracks()

	if submenu == 0 then
		love.graphics.draw(imgSplash,86,0)		
	elseif submenu == 1 then
	elseif submenu == 2 then
		love.graphics.print("select difficulty",0,22)
		if selection > 2 then selection = 0
		elseif selection < 0 then selection = 2 end

		for i = 0,2 do
			if i == selection then
				love.graphics.print("* "..menu_difficulties[i+1].." *",0,42+i*13)
			else
				love.graphics.print(menu_difficulties[i+1],0,42+i*13)
			end
		end
	end
end
