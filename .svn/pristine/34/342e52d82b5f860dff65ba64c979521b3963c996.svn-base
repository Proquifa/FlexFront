package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.clientes.financieros
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cliente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Direccion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Modificacion;

	public class EventoCatClientesFinancieros extends Event
	{
		public var clienteSeleccionado:Cliente;
		
		//VARIABLES VISTA PARA MODIFICACION
		public var modif:Modificacion;
		public var idEmpleado:Number;
		public var metodo:String;
		public var servicio:String;
		public var ventana:String;
		public var idCliente:Number;
		public var dummy:String;
		public var direccion:Direccion;
		
		//EVENTOS SERVICIO
		
		public static const ACTUALIZAR_CREDITO_CLIENTES:String = "actualizarCreditoClientesEventoCatClientesFinancieros";
		public static const OBTENER_NOTAS_CREDITO_POR_CLIENTE:String = "obtenerLasNotasDeCreditoPorClienteCatClientesFinancieros";
		public static const ACTUALIZAR_FACTURACION_CLIENTES:String = "actualizarFacturacionClientesEventoCatClientesFinancieros";
		public static const INSERTAR_LA_MODIFICACION_DATOS_FINANCIEROS:String = "insertarLaModificacionDatosFinancierosEventoCatClientes_General";
		public static const OBTENER_EL_TOTAL_DE_NOTAS_DE_CREDITO_POR_CLIENTE:String = "obtenerElTotalEnNotasDeCreditoPorClienteEventoCatClientes_General";
		public static const OBTENER_DIRECCION_X_PAIS:String = "obtenerDireccionPorPaisEventoCatClientesFinancieros";
		public static const OBTENER_CFDI:String = "obtenerCFDIEventoCatClientesFinancieros";
		public static const OBTENER_METODO_DE_PAGO:String = "obtenerMetodoDePagoEventoCatClientesFinancieros";
		
		public function EventoCatClientesFinancieros(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type,bubbles,cancelable)
		}
	}
}