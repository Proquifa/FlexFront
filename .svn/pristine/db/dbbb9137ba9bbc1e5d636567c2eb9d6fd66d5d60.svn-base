package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.tecnicos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.Licencia;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Modificacion;

	public class EventoCatProLicencias extends Event
	{
		public var idProveedor:Number = 0;
		public var licencia:Licencia;
		
		//VARIABLES VISTA PARA MODIFICACION
		public var modif:Modificacion;
		public var idEmpleado:Number;
		public var metodo:String;
		public var servicio:String;
		public var ventana:String;
		
		//EVENTO PARA MODIFICACION
		public static const INSERTAR_MODIFICACION_LICENCIAS_PROVEEDOR:String = "insertarModificacionLicenciasProveedorEventoCatProLicencias";
		
		
		public static const CARGAR_LICENCIAS:String = 'cargaLicenciasEventoCatProLicencias';
		public static const MODIFICAR_LICENCIAS:String = "modificarLicenciasEventoCatProLicencias";
		
		public function EventoCatProLicencias(type:String, bubbles:Boolean=true, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
		}
		public override function clone():Event{
			return new EventoCatProProductos(type,bubbles,cancelable);
		}
	}
}