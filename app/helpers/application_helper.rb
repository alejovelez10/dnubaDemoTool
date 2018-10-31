module ApplicationHelper

	def get_tool
		Tool.all
	end

	def get_employed
		Employed.all
	end

	def get_date_hora(fecha)

		if fecha != nil
		    ds = fecha.strftime("%w") #Dia de la semana
		    y = fecha.strftime("%Y") #Año
		    dm = fecha.strftime("%d") #Dia del mes
		    m = fecha.strftime("%m") # Mes del Año
		    meses = {"01" => "Ene", "02" => "Feb","03"=>"Mar","04" => "Abr", "05" => "May","06"=> "Jun" ,"07"=> "Jul", "08" => "Ago", "09"=> "Sep" ,"10"=> "Oct","11" => "Nov" ,"12" => "Dic" }
		    dias = {"0" => "Domingo", "1" => "Lunes","2"=>"Martes","3" => "Miercoles", "4" => "Jueves","5"=> "Viernes" ,"6" =>"Sabado"}
		    fecha.min < 10 ? min = "0" : min = ""
		    horat = fecha.hour > 12 ?   fecha.hour - 12 : fecha.hour
		    horati = fecha.hour > 12 ?   "pm" : "am"
		    fecha.hour < 10 ? hora = "0" : hora = ""
		    return  dias[ds] + " " + dm + " de "+  meses[m] + " "  + ", " + y + ", " + hora + horat.to_s   + ":" + min + fecha.min.to_s + " " + horati
		#dias[ds] + ", " +
		end 
	end

end
