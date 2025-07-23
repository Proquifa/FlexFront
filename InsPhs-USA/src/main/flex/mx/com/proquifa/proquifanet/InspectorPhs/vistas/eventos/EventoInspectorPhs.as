package mx.com.proquifa.proquifanet.InspectorPhs.vistas.eventos
{
	import flash.events.Event;
	import flash.utils.ByteArray;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.InspectorPhs.vistas.modelo.datosDisplayInsPhs;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos.PartidaInspeccion;
	
	public class EventoInspectorPhs extends Event
	{
		public var idOpcionSeleccionada:String;
		public var idEmpleado:Number;
		public var usuario:String;
		public var nombreProveedor:String;
		public var partidaSeleccionada:PartidaInspeccion;
		public var ordenCompra:String;
		public var accion:Boolean;
		public var listaPartidas:ArrayCollection;
		public var datosDisplay:datosDisplayInsPhs = new datosDisplayInsPhs();
		public var rechazoAPartida:Boolean;
		public var pdfBytes:ByteArray;
		public var idPCompra:Number;
		public var inspector:String;
		public var listaPiezas:ArrayCollection;
		public var accionPiezas:String;
		public var strCompra:String;
		public var funcionUsuario:String;
		
		public static const SELECCIONA_OPCION:String = "seleccionaOpcionEventoGenericoInspectorPhs";
		public static const UTILIZA_OPCION_MENU:String = "utilizaOpcionMenuEventoGenericoInspectorPhs";
		public static const SET_DATOS_DISPLAY_INSPECCION:String = "setDatosDisplayEventoGenericoInspectorPhs";
		
		public static const PARTIDAS_A_INSPECCION:String = "partidasAInspeccionEventoGenericoInspectorPhs";
		public static const PARTIDAS_A_INSPECCION_POR_COMPRA:String = "partidasAInspeccionPorCompraEventoGenericoInspectorPhs";
		public static const ACTIVIDADES_X_USUARIO:String = "actividadesXUsuarioEventoGenericoInspectorPhs";
		public static const PARTIDA_A_PLANIFICACION:String = "partidaAPlanificacionEventoGenericoInspectorPhs";
		public static const FINALIZA_INSPECCION_PHARMA:String = "finalizaInspeccionPharmaEventoInspectorPhs";
		public static const BORRA_ETIQUETAS_CACHE:String = "borrarEtiquetasCacheEventoInspectorPhs";
		
		public static const GUARDA_CAMBIOS_A_PARTIDA:String = "guardaCambiosAPartidaEventoGenericoInspectorPhs";
		public static const REGRESA_PARTIDA_A_MONITOREO:String = "regresaPartidaAMonitoreoEventoGenericoInspectorPhs";
		public static const CERRAR_PENDIENTE_INSPECCION:String = "cerrarPendienteInspeccionEventoGenericoInspectorPhs";
		
		public static const OC_STRING_EN_INSPECCION:String = "ocEnInspeccionEventoInspectorPhs";
		public static const RESET_ETIQUETAS:String = "resetEtiquetasEventoInspectorPhs";
		
		public static const LISTAR_PIEZAS_COMPRA:String = "listarPiezasCompraEventoGenericoInspectorPhs";
		public static const GUARDAR_PIEZAS:String = "guardarPiezasCompraEventoGenericoInspectorPhs";
		
		public function EventoInspectorPhs(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoInspectorPhs( type, bubbles, cancelable );
		}
	}
}