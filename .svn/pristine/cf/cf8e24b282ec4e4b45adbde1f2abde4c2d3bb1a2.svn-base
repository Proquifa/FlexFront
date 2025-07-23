package mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.compras.proveedores
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PartidaCompra;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.compras.proveedores.ObjetoTabla;

	public class EventoTableroProveedores extends Event
	{
		public var valorAdicional:String;
		public var idProveedor:int;
		public var mesInicio:Number;
		public var mesFin:Number;
		public var anio:String;
		public var tipoPeriodo:int;
		public var periodo:String;
		public var mes:int;
		public var codigo:String;
		public var fabrica:String;
		public var provee:String;
		public var total:String;
		public var cant:String;
		public var cantidad:String;
		public var monto:Number;
		public var numeroDeFila:Number;
		public var anioInt:int;
		public var tipo:String;
		public var _datos:ObjetoTabla = new ObjetoTabla(); 
		
		public static const BUSCAR_PROVEEDORES:String = "buscarProveedoresEventoTableroProveedores";
		public static const BUSCAR_DATOS_GENERALES_PROVEEDORES:String ="buscarDatosGeneralesProveedorEventoTableroProveedores";
		public static const OBTENER_NUMERO_STOCK_POR_ID:String = "obtenerNumeroStockPorIdEventoTableroProveedores";
		public static const OBTENER_MOROSIDAD:String = "obtenerMorosidadTableroProveedores";
		public static const OBTENER_ADEUDO_POR_ID:String = "obtenerAdeudoPorIdTableroProveedores";
		public static const OBTENER_FACTURAS_POR_ID:String = "obtenerFacturasPorIdTableroProveedores";
		public static const TOP_TEN_PRODUCTOS:String = "topTenProductosTableroProveedores";
		public static const OBTENER_TOP_TEN_CLIENTES_PROV:String = "obtenerTopTenClientesProvTableroProveedores";
		public static const OBTENER_PARTIDAS_EN_TIEMPO:String = "obtenerPartidasEnTiempoTableroProveedores";
		public static const OBTENER_PARTIDAS_COMPRA_PROVEEDOR_RECIBIDAS:String = "obtenerPartidasCompraProveedorRecibidasTableroProveedores";
		public static const OBTENER_PARTIDAS_COMPRA_PROVEEDOR_TRANSITO:String = "obtenerPartidasCompraProveedorTransitoTableroProveedores";
		public static const BUSCAR_DATOS_TOPCLIENTE:String = "buscarDatoTopClientesTableroProveedores";
		public static const CARGA_DATOS_RECIBIDAS:String = "cargarDatosRecibidasTableroProveedores";
		public static const CARGA_DATOS_TRANSITO:String = "cargasDatosTransitoTableroProveedores";
		
		public static const CARGA_DATOS_COMPRAS:String = "cargaDatosComprasEventoTableroProveedores";
		public static const CARGA_DATOS_PAGOS:String = "cargaDatosPagosEventoTableroProveedores";
		
		/*public static const CARGAR_DATOS_FILTRADO:String = "cargarDatosFiltradoEventoTableroProveedores";*/

		public function EventoTableroProveedores(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			valorAdicional="";
			idProveedor=0 ;
		     mesInicio=0;
			 mesFin=0;
			 anio="";
			 tipoPeriodo=0;
			 periodo="";
			 mes=0;
			 codigo="";
			 fabrica="";
			 provee="";
			 total="";
			 cant="";
			 cantidad="";
			 monto=0;
			 numeroDeFila=0;
			 anioInt=0;
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoTableroProveedores( type, bubbles, cancelable );
		}
		
	}
}