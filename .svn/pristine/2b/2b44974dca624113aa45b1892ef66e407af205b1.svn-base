package mx.com.proquifa.proquifanet.rsl.vista.utils
{
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.interlocutor.AvisoDeCambios;
	import mx.utils.object_proxy;
	
	import spark.formatters.CurrencyFormatter;
	import spark.formatters.DateTimeFormatter;
	
	
	
	public class FuncionesEstaticas
	{
		
		private static var _instance:FuncionesEstaticas = null;
		public var _avisoC:AvisoDeCambios;
		
		public static function getInstance():FuncionesEstaticas
		{
			if(_instance == null)
			{
				_instance = new FuncionesEstaticas();
			}
			return _instance;
		}
		
		
		public function formatoObjetos(objetos:ArrayCollection,forfecha:String = "dd/MM/yyyy",forfechahora:String = "dd/MMM/yyyy HH:mm",valorDefault:String = "Pendiente"):ArrayCollection
		{
			if(objetos.length == 0){
				return objetos;
			}
			var propiedades:ArrayCollection = new ArrayCollection();
			var formatoFecha:DateTimeFormatter = new DateTimeFormatter();
			formatoFecha.dateTimePattern = forfecha;
			formatoFecha.useUTC=false;
			formatoFecha.dateStyle = "custom";
			formatoFecha.timeStyle= "none";
			
			var formatomoneda:CurrencyFormatter = new CurrencyFormatter();
			formatomoneda.currencySymbol="$";
			formatomoneda.useGrouping=true;
			formatomoneda.useCurrencySymbol=true;
			
			var formatoFechaHora:DateTimeFormatter = new DateTimeFormatter();
			formatoFechaHora.dateTimePattern = forfechahora;
			formatoFechaHora.useUTC = false;
			formatoFechaHora.dateStyle = "custom";
			formatoFechaHora.timeStyle = "short";
			
			propiedades = objetos[0].propiedades;
			var m:int = 0;
			var p:int = 0;
			for(m =0; m<objetos.length;m++){
				for(p = 0; p<propiedades.length; p++){
					
					if(objetos[m][propiedades[p].propiedad] != null){
						if(propiedades[p].formato == "moneda"){
							if(!isNaN(objetos[m][propiedades[p].propiedad]))
							{
								objetos[m][propiedades[p].newpropiedad] = formatomoneda.format(objetos[m][propiedades[p].propiedad]);
							}
						}
						
						if(propiedades[p].formato == "fecha"){
							objetos[m][propiedades[p].newpropiedad] = formatoFecha.format(objetos[m][propiedades[p].propiedad]);
						}
						
						if(propiedades[p].formato == "fechaHora"){
							objetos[m][propiedades[p].newpropiedad] = formatoFechaHora.format(objetos[m][propiedades[p].propiedad]);
						}
						
						if(propiedades[p].formato == "porcentaje"){
							if(!isNaN(objetos[m][propiedades[p].propiedad]))
							{
								objetos[m][propiedades[p].newpropiedad] = objetos[m][propiedades[p].propiedad].toString() + "%";
							}
						}
						
					}
						
					else{
						objetos[m][propiedades[p].newpropiedad] = valorDefault;
					}
					
				}
			}
			return objetos;
		}
		
		public function FuncionesEstaticas()
		{
		}
	}
}