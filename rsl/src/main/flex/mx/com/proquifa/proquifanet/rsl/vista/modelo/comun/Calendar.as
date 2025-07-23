package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import mx.collections.ArrayCollection;
	
	public class Calendar
	{
		
		private const DOMINGO:int = 0;
		private const LUNES:int = 1;
		private const MARTES:int = 2;
		private const MIERCOLES:int = 3;
		private const JUEVES:int = 4;
		private const VIERNES:int = 5;
		private const SABADO:int = 6;
		
		public static const AZUL:String = "azul";
		public static const GRIS:String = "gris";
		public static const AMARILLO:String = "amarillo";
		
		public static const MESES:ArrayCollection = new ArrayCollection(["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"]);
		public static const YEARS:ArrayCollection = new ArrayCollection([2015,2014,2013,2012,2011]);
		public static const SEMESTRE:ArrayCollection = new ArrayCollection([{value:"ENERO-JUNIO",llave:1},{value:"JULIO-DICIEMBRE", llave:2}]);
		public static const TRIMESTRE:ArrayCollection = new ArrayCollection([{value:"ENERO-MARZO",llave:1},{value:"ABRIL-JUNIO",llave:2},{value:"JULIO-SEPTIEMBRE",llave:3},{value:"OCTUBRE-DICIEMBRE",llave:4}]);
		
		public function Calendar()
		{
		}
		
		
		public static function getFirstDayOfWeek(month:int, year:int):int
		{
			var date:Date = new Date(year,month,01);
			return date.getDay();
		}
		
		public static function diasDelMes(mes:int,year:int):int
		{
			return mes == 2 ? (year % 4 ? 28 : (year % 100 ? 29 : (year % 400 ? 28 : 29))) : ((mes - 1) % 7 % 2 ? 30 : 31);
		}
		
		
		public static function getMes(mes:String):int
		{
			switch(mes.toLowerCase())
			{
				case "enero":
				{
					return 0;
					break;
				}
				case "febrero":
				{
					return 1;
					break;
				}
				case "marzo":
				{
					return 2;
					break;
				}
				case "abril":
				{
					return 3;
					break;
				}
				case "mayo":
				{
					return 4;
					break;
				}
				case "junio":
				{
					return 5;
					break;
				}
				case "julio":
				{
					return 6;
					break;
				}
				case "agosto":
				{
					return 7;
					break;
				}
				case "septiembre":
				{
					return 8;
					break;
				}
				case "octubre":
				{
					return 9;
					break;
				}
				case "noviembre":
				{
					return 10;
					break;
				}
				case "diciembre":
				{
					return 11;
					break;
				}
					
				case "january":
				{
					return 0;
					break;
				}
				case "february":
				{
					return 1;
					break;
				}
				case "march":
				{
					return 2;
					break;
				}
				case "april":
				{
					return 3;
					break;
				}
				case "may":
				{
					return 4;
					break;
				}
				case "june":
				{
					return 5;
					break;
				}
				case "july":
				{
					return 6;
					break;
				}
				case "august":
				{
					return 7;
					break;
				}
				case "september":
				{
					return 8;
					break;
				}
				case "october":
				{
					return 9;
					break;
				}
				case "november":
				{
					return 10;
					break;
				}
				case "december":
				{
					return 11;
					break;
				}
					
				default:
				{
					return -1;
					break;
				}
			}
		}
		
	}
}

