package mx.com.proquifa.proquifanet.compradorPhs.vistas.eventos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PartidaProforma;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.Proforma;
	
	public class EventoProforma extends Event
	{
		public var idProveedor:int;
		public var idUsuario:Number;
		public var seccionDestinoDeProforma:String;
		public var partidaSeleccionada:PartidaProforma;
		public var idProforma:int;
		public var idPartidaProforma:Number;
		public var partidas:ArrayCollection;
		public var proforma:Proforma;
		public var folio:String;
		public var bloqueaBoton:Boolean;
		
		public static const CONSULTAR_PROFORMAS:String = "consultarProformasEventoProforma";
		public static const CONSULTAR_PROFORMAS_POR_PROVEEDOR:String = "consultarProformasPorProveedorEventoProforma";
		public static const ACTUALIZA_LISTA_PROFORMAS:String = "actualizaListaProformasEventoProforma";
		public static const GENERA_NUEVA_PROFORMA:String = "generarNuevaProformaEventoProforma";
		public static const ACTUALIZA_LISTA_PROFORMAS_TIEMPO:String = "actualizaListaProformasTiempoEventoProforma";
		public static const CONSULTA_NOTAS_PARTIDA:String = "consultaNotasPartidaEventoProforma";
		public static const CONSULTAR_GENERAL_PROFRMA:String = "consultaGeneralProformaEventoProforma";
		public static const ACTUALIZA_PROFORMA_GENERAL:String = "actualzaProformaGeneralEventoProforma";
		public static const CONSTRUYE_PDF:String = "CconstruyePdfEventoProforma";
		
		public static const SALIR_PROFORMA_GENERAL:String = "salirProformaGeneralEventoProforma";
		public static const REGRESA_ID_PROFORMA:String = "regresaIdProformaEventoProforma";
		public static const REGRESA_CHECK_SELECCIONADO:String = "regresaCheckSeleccionadoEventoProforma";
		public static const BORRA_NOTA:String = "borraNotaEventoProforma";
		public static const CRECE_IETEM_RENDERER:String = "creceItemRendererEventoProforma";
		public static const ABRIR_INSPECTOR:String = "abrirInspectorEventoProforma";
		
		public function EventoProforma(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoProforma( type, bubbles, cancelable );
		}
	}
}