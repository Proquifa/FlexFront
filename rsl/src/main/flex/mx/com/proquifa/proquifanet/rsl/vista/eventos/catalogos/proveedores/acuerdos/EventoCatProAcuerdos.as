package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.acuerdos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.InformacionPagos;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Modificacion;
	
	public class EventoCatProAcuerdos extends Event
	{
		
		public var idProveedor:Number;
		public var listaEmpresas:ArrayCollection;
		
		//VARIABLES VISTA PARA MODIFICACION
		public var modif:Modificacion;
		public var idEmpleado:Number;
		public var metodo:String;
		public var servicio:String;
		public var ventana:String;
		public var informacionPago:InformacionPagos;
		
		
		//EVNTO PARA MODIFICACION
		public static const INSERTAR_MODIFICACION_EMPRESAS_PROVEEDOR:String = "insertarModificacionEmpresasProveedorEventoCatProAcuerdos";
		public static const ACTUALIZAR_INFORMACION_PAGO_PROVEEDOR:String = "actualizarInformacionPagoProveedorProveedorEventoCatProAcuerdos";
		
		
		public static const SOLICITAR_INFORMACION_DE_PAGO_PARA_PROVEEDOR:String = "solicitarInformacionParaPagosDeProveedorEventoCatProAcuerdos";
		public static const SOLICITAR_LA_RELACION_EMPRESAR_POR_PROVEEDOR:String = "solicitarLaRelacionConLasEmpresarPorProveedorEventoCatProAcuerdos";
		public static const SOLICITAR_ACTUALIZAR_LISTA_EMPRESAS_RELACIONADAS_CON_EL_PROVEEDOR:String = "solicitarActualizarListaDeEmpresasRelacionadasConElProveedorEventoCatProAcuerdos";
		
		
		public function EventoCatProAcuerdos(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		
		override public function clone():Event
		{
			return new EventoCatProAcuerdos(type,bubbles,cancelable);
		}
	}
}