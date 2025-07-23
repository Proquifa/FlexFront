package eventos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.HorarioCalendario;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.VisitaCliente;
	
	import spark.components.Group;

	public class EventoVisitasVendedorMobil extends Event
	{
		public var vista:String;
		public var usuarioId:int;
		public var visitaCliente:VisitaCliente;
		public var tipoSelect:String;
		public var diaCalendario:HorarioCalendario;
		
		public var current:*;
		
		/////////////////////////////	  SERVICIO  	/////////////////////////////
		public static const OBTENER_VISITAS_PROGRAMADAS:String = "obtenerVisitasProgramadasEventoGeneralMobilVendedor";
		public static const REGISTRAR_FECHA_CHECKIN:String = "registrarFechaCheckInEventoGeneralMobilVendedor";
		public static const OBTENER_SPRINT_EN_CURSO:String = "obtenerSprintCursoServicioEventoGeneralMobilVendedor";
		
		public static const ACTUALIZAR_DIRECCION_CLIENTE:String = "guardarDireccionDelClienteEventoGeneralMobilVendedor";
		
		/////////////////////////////	  VISTA  	/////////////////////////////
		public static const CAMBIAR_VISTA_VISITA_INFO:String = "cambiarVistaVisitaInfoEventoGeneralMobilVendedor";
		public static const CAMBIO_BOTONERA_TIEMPO:String = "cambioBotoneraTiempoEventoGeneralMobilVendedor";
		public static const CAMBIO_BOTONERA_DIA_EN_SEMANA:String = "cambioBotoneraDiaEnSemanaMobilVendedor";
		public static const CAMBIO_BOTONERA_DIA_EN_SPRINT:String = "cambioBotoneraDiaEnSprintMobilVendedor";
		public static const ENVIAR_INFORMACION_VISITA:String = "enviarInformacionVisitaEventoGeneralMobilVendedor";
		
		public function EventoVisitasVendedorMobil(type:String, bubbles:Boolean=true, cancelable:Boolean=false) 
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoVisitasVendedorMobil( type, bubbles, cancelable );
		}
	}
}