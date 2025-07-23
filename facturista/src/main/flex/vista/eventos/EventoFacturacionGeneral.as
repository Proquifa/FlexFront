package vista.eventos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.facturista.ComprobanteFiscal;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.facturista.ConceptoFactura;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empresa;
	
	public class EventoFacturacionGeneral extends Event
	{
		
		public var idBtonSeleccionado:Number;
		public var indexSeleccionado:int;
		public var empresaQueFactura:Empresa;
		public var conceptoFac:ConceptoFactura;
		public var cfdi:ComprobanteFiscal;
		public var moneda:String;
		public var funcionSeleccionada:String;
		
		public static const SELECCIONA_BOTON:String = "enviabotonEventoFacturacionGeneral";
		public static const CAMBIA_INDEX_FACTURISTA:String = "cambiaIndexFacturistaEventoFacturacionGeneral";
		public static const CAMBIA_INDICE_MENU_GLOBAL:String = "cambiaRolesEventoFacturacionGeneral";
		
		public static const CERRAR_POPUP_CONCEPTO:String = "cerrarPopUpConceptoEventoFacturacionGeneral";
		public static const GUARDAR_POPUP_CONCEPTO:String = "guardadrPopUpConceptoEventoFacturacionGeneral";
		public static const CONSULTA_CLIENTES_FACTURA:String = "consultaClientesFacturaEventoFacturacionGeneral";
		public static const CONSULTA_CONCEPTOS_FACTURA:String = "consultaConceptosFacturaEventoFacturacionGeneral";
		public static const CONSULTA_FOLIOS:String = "consultaFoliosEventoFacturacionGeneral";
		public static const GENERA_FACTURA:String = "generaFacturaEventoFacturacionGeneral";
		public static const CONSULTA_TIPO_DE_CAMBIO:String = "consultaTipoDeCambioEventoFacturacionGeneral";
		
		public function EventoFacturacionGeneral(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoFacturacionGeneral( type, bubbles, cancelable );
		}
	}
}