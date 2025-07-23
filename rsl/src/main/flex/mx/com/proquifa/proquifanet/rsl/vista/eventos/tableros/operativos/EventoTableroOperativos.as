package mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.operativos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.operativos.ParametrosBusquedaOperativo;

	public class EventoTableroOperativos extends Event
	{
		
		public var parametros:ParametrosBusquedaOperativo = new ParametrosBusquedaOperativo();
		
		
		public var metodoConsultado:String;
		private var tipoEvento:String;
		
		//Vista
		public static const SERVICIOS_CONSULTADOS:String = "ServiciosConsultadosEventoTableroOperativos";
		
		//Servicio
		public static const CONSULTA_TABLERO:String = "ConsultaTableroEventoTableroOperativos"; 
		public static const CONSULTA_TABLERO_OPERACIONES:String = "ConsultaOperacionesEventoTableroOperativos";
		public static const CONSULTA_TABLERO_FINANZAS:String = "ConsultaFinanzasEventoTableroOperativos";
		public static const CONSULTA_TAB_REQCOT:String = "ConsultaComercializacionReqCotEventoTableroOperativos";
		public static const CONSULTA_TAB_PEDIDOS:String = "ConsultaComercializacionPedidosEventoTableroOperativos";
		public static const CONSULTA_TAB_CONFIRMACIONES:String = "ConsultaComercializacionConfirmacionesEventoTableroOperativos";
		public static const CONSULTA_TAB_SEGUIMIENTOS:String = "ConsultaComercializacionSeguimientosEventoTableroOperativos";
		public static const CONSULTA_GRIDCONFIRMACIONOCFT:String = "ConsultaGridConfirmacionFtEventoTableroOperativos";
		
		public function EventoTableroOperativos(type:String, bubbles:Boolean=true, cancelable:Boolean=false, parametros:ParametrosBusquedaOperativo = null, metodoConsultado:String = null)
		{
			super(type, bubbles, cancelable);
			this.parametros = parametros;
			this.metodoConsultado = metodoConsultado;
		}
		public override function clone():Event
		{
			return new EventoTableroOperativos( type, bubbles, cancelable, parametros, metodoConsultado );
		}
	}
}