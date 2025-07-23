package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Gestion;
	
	public class EventoAnalisisincidente extends Event
	{
		public var valorAdicional:String;
		public var listaProcedimientos:ArrayCollection;
		public var listaReferencias:ArrayCollection;
		public var idProveedor:Number;
		public var gestion:Gestion;
		public var nueva:Gestion;
		public var idProducto:Number;	
		public var idIncidente:Number;	
		public var IdSubproceso:Number;
		public var procesosAsociados:String = "";
		public var patron:String;
		
		public static const CARGA_CLIENTES_EN_ELCOMBO:String = "cargaClientesEnElComboAnalisisIncidente";
		public static const CARGA_PROVEEDORES_EN_ELCOMBO:String = "cargaProveedoresEnElComboAnalisisIncidente";
		public static const CARGA_ORIGEN_EN_ELCOMBO:String = "cargaOrigenEnElComboAnalisisIncidente";
		public static const CARGA_CATALOGO_POR_ID_EMPRESA:String = "cargarCatalogoPorIdEmpresaAnalisisIncidente";
		public static const CARGA_PRODUCTO_POR_NOMBRE:String = "cargaProductoPorNombreAnalisisIncidente";
		public static const CARGAR_PROCEMIENTOS_SGC:String = "cargaProcedimientosSGCAnalisisIncidente";
		
		public static const REGRESA_LISTA_PROCEDIMIENTOS:String = "regresaListaProcedimientosAnalisisIncidente";
		public static const REGRESA_LISTA_REFERENCIAS:String = "regresaListaReferenciasAnalisisIncidente";
		public static const REGRESA_LISTA_REFERENCIAS_DECISION:String = "regresaListaReferenciasDecisionAnalisisIncidente";
		public static const REGRESA_ID_EMPRESA:String = "regresaIdEmpresaAnalisisIncidente";
		public static const REGRESA_ID_PRODUCTO:String = "regresaIdProductoAnalisisIncidente";
		public static const REGRESA_VALORES_POP_PROVEEDORES:String = "regresaValoresPopProveedoresAnalisisIncidente";
		
		public static const CIERRA_POP_UP_PROCEDIMIENTOS:String = "cierraProcedimientosAnalisisIncidente";	
		public static const CIERRA_POP_UP_REFERENCIAS:String = "cierraPopUpReferenciasAnalisisIncidente";
		public static const REGISTRA_ANALISIS_INSIDENTE:String = "registraAnalisisIncidente";
		public static const GUARDA_ANALISIS_INCIDENTE:String = "guardaAnalisisIncidenteAnalisisincidente";
		public static const ACTUALIZA_ANALISIS_INCIDENTE:String = "actualizaAnalisisEventoAnalisisincidente";	
		public static const VERIFICA_PRODUCTO:String = "verificaProductoEventoAnalisisincidente";
		public static const CARGA_GESTION:String = "cargaGestionEventoAnalisisincidente";
		public static const CARGA_GESTION_EN_DECISION:String = "cargaGestionEnDecisionEventoAnalisisincidente";
		public static const OBTENER_GERENTE_PILOTO:String = "obtenerGerentePilotoEventoAnalisisincidente"; 
		public static const VALIDA_GESTION_EXISTENTE:String = "validaGestionExistenteEventoAnalisisincidente"
		public static const VALIDA_DECISION_EXISTENTE:String = "validaDecisionExistenteEventoAnalisisincidente"
		
		public function EventoAnalisisincidente(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoAnalisisincidente( type, bubbles, cancelable );
		}
	}
}