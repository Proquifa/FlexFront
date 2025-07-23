package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.Flete;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.Logistica;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.ProveedorTiempoEntrega;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Modificacion;
	
	public class EventoCatProLogistica extends Event
	{
		
		public var idProveedor:Number;
		public var logistica:Logistica;
		
		public var tiempoEntrega:ProveedorTiempoEntrega;
		public var flete:Flete;
		
		//VARIABLES VISTA PARA MODIFICACION
		public var modif:Modificacion;
		public var idEmpleado:Number;
		public var metodo:String;
		public var servicio:String;
		public var ventana:String;
		public var codigo:String;
		public var fabrica:String
		
		//EVENTO PARA MODIFICACION
		public static const INSERTAR_MODIFICACION_LOGISTICA_PROVEEDOR:String = "insertarModificarLogisticaProveedorEventoCatProLogistica";
		
		
		//SERVICIO
		public static const ACTUALIZAR_LOGISTICA_SERVICE:String = "actualizarLogisticaEventoCatProLogistica";
		public static const OBTENER_LOGISTICA_PROVEEDOR_SERVICE:String = "obtenerLogisticaProveedorEventoCatProLogistica";
		public static const VERIFICAR_EXISTE_CODIGO_PRODUCTO:String = "verificarExisteCodigoProductoEventoCatProLogistica";
		public static const VERIFICAR_EXISTE_CODIGO_MODIFICACION_FLETE:String = "verificarExisteCodigoModificacionFleteEventoCatProLogistica";
		
		//VISTA
		public static const MODIFICAR_CONCEPTO_LISTA_FLETE_VISTA:String = "modificarConceptoListaFleteVistaEventoCatProLogisitica"
		public static const MODIFICAR_CONCEPTO_LISTA_TIEMPO_VISTA:String = "modificarConceptoListaTiempoVistaEventoCatProLogisitica"
		
		public function EventoCatProLogistica(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoCatProLogistica(type,bubbles,cancelable);
		}
	}
}