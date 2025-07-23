package vista.evento
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.expofarma.RegistroExpoFarma;
	
	public class EventoEvExpoMed extends Event
	{
		public var registroExpoMed:RegistroExpoFarma;
		
		public var idRegistro:Number;
		public var respuesta1:String;
		public var respuesta2:String;
		public var otros2:String;
		public var respuesta3:String;
		public var respuesta4:String;
		public var otros4:String;
		public var respuesta5:String;
		public var otros5:String;
		public var tiempo:String;
		public var ubicacion:String;
		public var nuevoContacto:Contacto;
		public var tipo:String;
		
		public static const CARGAR_TODOS_LOS_CONTACTOS_HABILITADOS:String = "cargarTodosLosContactosHabilitadosEventoEvExpoMed";
		public static const REGISTRO_EXPO_MED:String = "registrarEnExpoMedEventoEvExpoMed";
		public static const MANDAR_CUESTIONARIO_EXPO_MED:String = "mandarCuetionarioExpoMedEventoEvExpoMed";
		public static const OBTENER_INFO_GRAFICOS_EXPO_MED:String = "obtenerInfoGraficosExpofarmaEventoEvExpoMed";
		public static const EDITAR_CONTACTO_EXPO_MED:String = "editaContactoEventoEventoEvExpoMed";
		
		public function EventoEvExpoMed(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event{
			
			return new EventoEvExpoMed(type,bubbles,cancelable); 
		}
	}
}