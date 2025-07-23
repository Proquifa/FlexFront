package mx.com.proquifa.proquifanet.admonComunicacion.vistas.eventos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Compra;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cotizacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PartidaCotizacion;
	
	public class EventoBusquedasCR2 extends Event
	{
		public var folio:String;
		public var idPcotiza:Number;
		public var finicio:Date;
		public var ffin:Date;
		public var cliente:String;
		public var idCliente:int;
		public var tramito:String;
		public var empresa:String;
		public var referencia:String;
		public var destinatario:String;
		public var tipo:String;
		public var abiertoCerrado:String;
		public var cotizo:String;
		public var medioDeEnvio:String;
		public var edo:String;
		public var estado:String;
		public var estadoCompra:int;
		public var proveedor:Number;
		public var coloco:int;
		public var partida:PartidaCotizacion = new PartidaCotizacion();
		public var compra:Compra;
		public var objCotizacion:Cotizacion = new Cotizacion();
		public var razon:String;
		public var tipoAC:String;
		
		public static const BUSCAR_DOCUMENTOS_POR_FOLIO:String = "buscarDocumentosPorFolio";
		public static const BUSCAR_DOCUMENTOS_POR_BUSQUEDA_AVANZADA:String = "buscarDocumentosXBA";
		public static const BUSCAR_COTIZACIONES_POR_FECHA:String = "buscarCotizacionesPorFecha";
		public static const MOSTRAR_HISTORIAL_DE_SEGUIMIENTOS:String  = "mostrarHistorialDeSeguimientos";
		public static const MOSTRAR_CONSULTA_PEDIDOS:String = "mostrarConsultaPedidos";
		public static const MOSTRAR_TIEMPO_PROCESO:String = "mostrarTiempoProcesoEventoBusquedasCR"
		
		public function EventoBusquedasCR2(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoBusquedasCR2( type, bubbles, cancelable );
		}
	}
	}