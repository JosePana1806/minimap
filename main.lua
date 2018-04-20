
local tamaños={}
local blancos={}
function setup()
	size(500,400)
	local file=io.open("data/archivo.txt")
	while true do
		lineal=file:read("*line")

		if (lineal==nil) then
			break
		else
			local espacio=0
			for i=1,string.len(lineal) do
				if string.sub(lineal,i,i) ~=" " then
					break
				else
					espacio=espacio+1
				end

		end
		table.insert(blancos,espacio)
		end

		table.insert(tamaños,string.len(lineal))

	end
end

function draw()
	background(255)
	stroke(0)
	strokeWeight(5)
	fill(0)
	for i=1,#tamaños do
		line(blancos[i]*10,i*10,tamaños[i]*10,i*10)
	end

end
