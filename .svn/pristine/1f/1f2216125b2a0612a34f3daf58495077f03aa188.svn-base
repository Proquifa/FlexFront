package mx.com.proquifa.proquifanet.compradorPhs.vistas.eventos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PartidaConfirmacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PartidaProforma;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.RequisicionPhs;
	
	public class EventoGeneralCompradorPhs extends Event
	{
		public var idOpcionSeleccionada:String;		
		public var partidaSeleccionada:Object;
		public var vieneDe:String;
		public var tipoRequesicionSeleccionada:String;
		public var requisicion:RequisicionPhs;
		public var proforma:PartidaProforma;
		public var usuario:String;
		public var idUsuario:Number;
		public var idProveedor:Number;
		public var lista:ArrayCollection;
		/*public var folioPartida:String;*/
		public var idFolioPartida:Number;
		public static const UTILIZA_OPCION_MENU:String = "utlizaOpcionMenuEventoGeneralCompradorPhs";
		public static const SELECCIONA_OPCION:String = "seleccionaOpccionEventoGeneralCompradorPhs";
		public static const REGRESA_TABLA_PENDIENTES_PROVEEDORES_CON_PAC:String = "regresaTablaPendientesProveedoresConPacEventoGeneralCompradorPhs";
		public static const REGRESA_OPCION_POPUP_TIPO_REQUISICION:String = "regresaOpcionPopoUpEventoGeneralCompradorPhs";
/////////////////////////////////////////////////////////////////// Variables para el mapa general de Pendientes ////////////////////////////////////////////////////
		public var rechazado:Boolean;
		public static const CONSULTA_PARTIDAS_A_CONFIRMAR:String = "consultaPendientesPorConfirmarEventoGeneralCompradorPhs";
		public static const OBTENER_TIPO_Y_TOTAL_PENDOENTES:String = "obtenerTipoYTotalPendientesEventoGeneralCompradorPhs";
		
		public static const OBTENER_PROFORMAS:String = "obtenerProformasEventoGeneralCompradorPhs";
		
		public function EventoGeneralCompradorPhs(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoGeneralCompradorPhs( type, bubbles, cancelable );
		}
	}
}