package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.clientes
{
	import flash.events.Event;
	import flash.utils.ByteArray;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.clientes.comerciales.oferta.ParametrosOfertaCliente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.ConfiguracionPrecio;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.ConfiguracionPrecioProducto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.CostoFactor;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.TiempoEntrega;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contrato;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Modificacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Proveedor;

	public class EventoCatClientesContratos extends Event
	{
		
		public var nivel:String;
		public var busqueda:String;
		public var idProveedor:Number; 		
		public var idCliente:Number; 
		public var nivelIngreso:String;
		public var provSeleccionado:Proveedor;
		public var solicitarRestablecer:Boolean;
		public var solicitarRestablecerTemp:Boolean;
		
		
		public var idLugarAgenteAduanal:Number; 		
		public var idAgenteAduanal:Number; 		
		public var idConceptos:Number; 		
		public var configuracionPrecioProducto:ConfiguracionPrecioProducto;
		public var configuracionPrecio:ConfiguracionPrecio;
		public var idConfiguracion:Number;
		public var costoFactor:CostoFactor;
		public var listaConfiguracion:ArrayCollection;
		public var idConfigFamilia:Number;
		public var modificaPrecio:Boolean;
		public var monto:String;
		//public var evtMouse:MouseEvent;
		public var idConfigPrecioLista:Number;
		public var idCategoriaPrecioLista:Number;
		public var idCurrentSolicitud:Number;	
		
		public var industria:String;
		public var familiaTipo:String;
		public var familiaSubTipo:String;
		public var familiaControl:String;
		public var montoMinOCMV:Number;
		public var valorEnAduana:Number;
		public var flete:Number;
		public var descuento:Number;
		public var idClienteConfig:Number;
		public var factorCliente:Number;
		public var factorCostoFijo:Number;
		public var idProducto:Number;	
		public var IdConfiguracionPProducto:Number;
		public var laFamiliaTieneProductos:Boolean;
		public var laFamiliaTieneClasificaciones:Boolean;
		public var dateFUA:Date;
		public var idClasificacion:Number;	
		public var tiempoEntrega:TiempoEntrega;
		public var listaTiempoEntregas:ArrayCollection;
		public var parametrosOferta:ParametrosOfertaCliente;
		public var checkCostoFijo:Boolean;
		public var checkFactorUtilidad:Boolean;
		public var precioListaAnterior:Boolean;
		
		//VARIABLES VISTA PARA MODIFICACION
		public var modif:Modificacion;
		public var idEmpleado:Number;
		public var metodo:String;
		public var servicio:String;
		public var ventana:String;
		
		public static var keyTemp:Boolean = false;
		public static var isTemporal:Boolean = false;
		public static var timeTemporal:int;
		
		
	/*	VARIABLES VISTA AUX*/
		public var indiceActual:int;
		public var indiceActualDividido:Number;
		public var tipoSelect:String;
		public var tamcomplemento:Number;
		
		
		public var rutaCliente:String;
		public var contrato:Contrato;
		public var idContrato:Number;
		public var renovar:Boolean;
		public var documento:ByteArray;
		public var costoFijoActual:Number;

		
		
		
		public static const OBTENER_CONFIGURACION_PRECIO_LISTA_CONF_COSTO_CONTRATOS:String = "obtenerConfiguracionPrecioListaConfiguracionCostoEventoCatClientes_Contratos";
		public static const OBTENER_CONFIGURACION_PRECIO_LISTA_CONF_FAMILIA_CONTRATOS:String = "obtenerConfiguracionPrecioListaConfiguracionFamiliaEventoCatClientes_Contratos";
		public static const OBTENER_CONFIGURACION_CLASIFICACION_CONTRATOS:String = "obtenerConfiguracionClasificacionEventoCatClientes_Contratos";
		public static const OBTENER_TODAS_FAMILIAS_PROVEEDOR_CLIENTE_CONTRATOS:String = "obtenerTodasfamiliasProveedorClienteEventoCatClientes_Contratos";
		public static const OBTENER_INFORMACION_CONTRATOS:String = "obtenerInformacionOfertaEventoCatClientes_Contratos";
		public static const OBTENER_CONFIGURACION_FAMILIA_CONTRATOS:String = "obtenerConfiguracionFamiliaEventoCatClientes_Contratos";
		public static const OBTENER_CONFIGURACIONES_CLASIFICACION_CLIENTE_CONTRATOS:String = "obtenerConfiguracionClasificacionClienteEventoCatClientes_Contratos";
		public static const OBTENER_DOCUMENTO_CONTRATO:String = "obtenerDocumentoContrato";
		public static const FINALIZAR_CONTRATO_CLIENTE:String = "finalizarContratoCliente";

		// SERIVICIOS QUE SON DE PROVEEDOR
		public static const OBTENER_CONFIGURACIONES_PRECIO_COSTO_CLIENTE_CONTRATOS:String = "obtenerConfiguracionPrecioCostoClienteEventoCatClientes_Contratos";
		
		
		//VISTA
		public static const ACTUALIZAR_DATA_CONFIGUARACION:String = "actualizarDataClasificacionyCosto";
		public static const CERRAR_VISTA_AUX_CONTRATOS:String = "cerrarVistaAuxContratos";
		public static const SEGUNDA_VISTA_ACTIVA:String = "AbrirVistaAuxiliar";
		public static const CLIC_BOTONERA_CONTRATOS:String = "clicBotoneraContratosCliente";
		public static const CAMBIO_COSTO_FIJO:String = "cambioCostoFijo";
		
		
		public function EventoCatClientesContratos(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoCatClientesContratos(type,bubbles,cancelable);
		}
	}
}