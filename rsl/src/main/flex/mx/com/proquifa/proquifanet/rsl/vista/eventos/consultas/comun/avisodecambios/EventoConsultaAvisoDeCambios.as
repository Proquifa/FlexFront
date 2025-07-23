package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.comun.avisodecambios
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;

	public class EventoConsultaAvisoDeCambios extends Event
	{
		
		public var valorAdicional:String;
		public var ordenCompra:String;
		public var busqueda:String;
		public var finicio:Date;
		public var ffin:Date;
		public var tipo:String;
		public var razon:String;
		public var proveedor:String;
		public var cliente:String;
		public var estado:String;
		public var datosGrafica:ArrayCollection;
		public var stack:int;
		public var datosClick:ArrayCollection;
		 
		public static const OBTENER_CLIENTES:String = "obtenerClientesConsultaAvisoDeCambios";
		public static const BUSCAR_PROVEEDORES:String = "obtenerProveedoresConsultaAvisoDeCambios";
		public static const FILTRO_AVISO_DE_CAMBIOS:String = "filtroAvisoDecambios";
		public static const OBTENER_DATOS_GRAFICA_AC:String = "obtenerDatosGraficaAvisoDeCambios";
		public static const CAMBIAR_VIEW_STACK:String = "cambiarViewStackAvisoDeCambios";
		public static const OBTENER_DATOS_CLICK_GRAFICA:String = "obtenerDatosClickGraficaAvisoDeCambios";
		
		public function EventoConsultaAvisoDeCambios(type:String, bubbles:Boolean=true, cancelable:Boolean=false,valorAdicional:String = null,ordenCompra:String = null,busqueda:String = null,finicio:Date = null,
													 ffin:Date = null,tipo:String = null,razon:String = null,proveedor:String = null,cliente:String = null,estado:String = null,datosGrafica:ArrayCollection= null,
													 stack:int = 0,datosClick:ArrayCollection = null)
		{
			valorAdicional = "";
			super(type,bubbles,cancelable)
			this.valorAdicional = valorAdicional;
			this.ordenCompra = ordenCompra;
			this.busqueda = busqueda;
			this.finicio = finicio;
			this.ffin = ffin;
			this.tipo = tipo;
			this.razon = razon;
			this.proveedor = proveedor;
			this.cliente = cliente;
			this.estado = estado;
			this.datosGrafica = datosGrafica;
			this.stack = stack;
			this.datosClick = datosClick;
			
		}
		public override function clone():Event{
			return new EventoConsultaAvisoDeCambios(type,bubbles,cancelable,valorAdicional,ordenCompra,busqueda,finicio,ffin,tipo,razon,proveedor,cliente,estado,datosGrafica,stack,datosClick);
		}
	}
}