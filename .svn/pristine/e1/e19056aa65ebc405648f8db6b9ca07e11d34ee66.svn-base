package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.agenteAduanal
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.agenteAduanal.AgenteAConfigPrecio;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.agenteAduanal.AgenteAduanal;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.agenteAduanal.LugarAgenteAduanal;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.agenteAduanal.LugarConcepto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Modificacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Proveedor;

	public class EventoCatAgenteAduanalGeneral extends Event
	{
		public var agenteSeleccionado:AgenteAduanal;
		public var vieneDe:String;
		public var indiceAnterior:Number;
		public var componente:String;
		public var visible:Boolean;
		public var busquedaAgente:String;
		public var idAgente:Number; 
		public var habilitado:Boolean;
		public var lugarAgente:LugarAgenteAduanal;
		public var lugarConcepto:LugarConcepto;
		
		// VARIABLES PARA MARCAS
		public var proveedor:Proveedor;
		public var busqueda:String;
		public var idProveedor:Number;
		public var aacp:AgenteAConfigPrecio;
		public var idConfiguracion:Number;
		
		//VARIABLES VISTA PARA MODIFICACION
		public var modif:Modificacion;
		public var idEmpleado:Number;
		public var metodo:String;
		public var servicio:String;
		public var ventana:String;
		
		public var numeroContactos:Number;
		
		public static const OBTENER_AGENTES_ADUANALES:String = "obtenerAgentesAduanalesEventoCarAgenteAduanalGeneral";
		public static const CAMBIA_VISTA_MANU_AGENTE_A:String = "cambiaVistaMenuAgenteAEventoCarAgenteAduanalGeneral";
		public static const ENVIA_AGENTE_ADUANAL:String = "enviaAgenteAduanalEventoCarAgenteAduanalGeneral";
		public static const ACTUALIZA_AGENTES_ADUANALES:String = "actualizaAgentesAduanalesEventoCarAgenteAduanalGeneral";
		public static const CREA_NUEVO_AGENTE:String = "creaNuevoAgenteEventoCarAgenteAduanalGeneral";
		public static const GUARDA_AGENTE:String = "guardaAgenteEventoCarAgenteAduanalGeneral";
		public static const REGRESAR_INDICE_ANTERIOR_AGENTE:String = "regresaIndiceAnteriorAgenteEventoCarAgenteAduanalGeneral";
		public static const CARGA_COMPONENTE:String = "cargaComponenteEventoCarAgenteAduanalGeneral";
		public static const MUESTRA_BOTONERA:String = "muestraBotoneraEventoCarAgenteAduanalGeneral";
		public static const INSERTA_NUEVO_LUGAR_AGENTE:String = "insertaNuevoLugarAgenteEventoCarAgenteAduanalGeneral";
		public static const ACTUALIZA_LUGAR_AGENTE:String = "actualizaLugarAgenteEventoCarAgenteAduanalGeneral";
		public static const MODIFICAR_CONCEPTOS_LUGAR_AGENTE:String = "modificarConceptosLugarAgenteCatAgenteAduanalGeneral";
		public static const REUBICAR_PANEL_MODIFICACION:String = "reubicarPanelModificacionCatAgenteAduanalGeneral";
		public static const OBTENER_REPORTE_AGENTES_ASOCIADOS:String = "obtenerReporteAgentesAsociadosCatAgenteAduanalGeneral";
		public static const DESASOCIOAR_MARCA_AGENTE_ADUANAL:String = "desasociarMarcaAgenteAduanalCatAgenteAduanalGeneral";
		public static const ELIMINAR_CONCEPTO_LUGAR_AGENTE_ADUANAL:String = "eliminarConceptoLugarAgenteAduanalCatAgenteAduanalGeneral";
		public static const GUARDAR_LIMITES_CONSOLIDADOS_CORREO:String = "guardarLimitesConsolidadosCorreoCatAgenteAduanalGeneral";
		
		
		
		// EVENTOS PARA MARCAS
		public static const OBTENER_PROVEEDORES:String = "obtenerProveedoresEventoCarAgenteAduanalGeneral";
		public static const OBTENER_LISTA_FAMILIA:String = "obtenerListaFamiliaEventoCarAgenteAduanalGeneral";
		public static const GUARDAR_MIN_MAX:String = "guardarMinMaxEventoCarAgenteAduanalGeneral";
		public static const HACER_INSERCION:String = "hacerInsercionEventoCarAgenteAduanalGeneral";
		public static const ENVIA_FUA_MARCAS_VISTA:String = "enviaFuaMarcasVistaEventoCarAgenteAduanalGeneral";
		public static const ENVIA_NOMBRE_PROVEEDOR:String = "enviaNombreProveedorEventoCarAgenteAduanalGeneral";
		public static const RECORRE_TITULO_SELECCIONADO:String = "recorreTituloSeleccionadoEventoCarAgenteAduanalGeneral";
		public static const ENVIAR_NUMERO_CONTACTOS:String = "enviarNumeroContactosEventoCatAgenteAduanalGeneral";
		public static const CAMBIAR_DEPTH_MENU:String = "cambiarDepthDeMenuCatAgenteAduanalGeneral";
		
		//EVENTO PARA MODIFICACION
		public static const INSERTAR_MODIFICACION_AGENTE_GRAL:String = "insertarModificacionAgenteGralEventoCarAgenteAduanalGeneral";
		
		public function EventoCatAgenteAduanalGeneral(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoCatAgenteAduanalGeneral(type,bubbles,cancelable);
		}
	}
}