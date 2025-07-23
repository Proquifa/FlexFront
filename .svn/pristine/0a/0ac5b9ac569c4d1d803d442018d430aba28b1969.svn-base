package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.tecnicos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.ConfiguracionPrecioProducto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Modificacion;
	
	public class EventoCatProProductos extends Event
	{
		public var idProveedor:Number = 0;
		public var producto:ConfiguracionPrecioProducto;
		public var idConfiguracionProducto:Number;
		public var origen:String;
		public var control:String;
		
		//VARIABLES VISTA PARA MODIFICACION
		public var modif:Modificacion;
		public var idEmpleado:Number;
		public var metodo:String;
		public var servicio:String;
		public var ventana:String;
		
		//EVENTO PARA MODIFICACION
		public static const INSERTAR_MODIFICACION_PRODUCTOS_PROVEEDOR:String = "insertarModificacionProductosProveedorEventoCatProProductos";
		
		
		public static const CARGA_PRODUCTOS_POR_PROVEEDOR:String = 'cargaProductosPorProveedorEventoCatProProductos';
		public static const AGREGA_TIPO_PRODUCTO:String = 'agregaTipoProductoEventoCatProProductos';
		public static const ELIMINA_TIPO_PRODUCTO:String = 'eliminaTipoProductoEventoCatProProductos';
		public static const CONSULTA_FUA:String = 'consultaFUAEventoCatProProductos';
		
		public static const MODIFICA_CONFIGURACION:String = 'modificaConfiguracionEventoCatProProductos';
		
		public function EventoCatProProductos(type:String, bubbles:Boolean=true, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
		}
		public override function clone():Event{
			return new EventoCatProProductos(type,bubbles,cancelable);
		}
	}
}