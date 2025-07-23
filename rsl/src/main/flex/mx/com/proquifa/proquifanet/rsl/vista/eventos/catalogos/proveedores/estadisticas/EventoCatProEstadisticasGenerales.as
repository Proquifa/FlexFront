package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.estadisticas
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.proveedor.ParametrosBusquedaProveedor;
	
	public class EventoCatProEstadisticasGenerales extends Event
	{
		
		public static const SERVICIOS_CONSULTADOS:String = "actualizarNumeroDeServiciosConsultadosEventoCatProEstadisticasGenerales";
		public static const BUSCAR_MONTO_ACUMULADO:String = "buscarMontoAcumuladoEventoCatProEstadisticasGenerales";
		public static const OBTENER_OBJETIVOS:String = "obtenerObjetivosEventoCatProEstadisticasGenerales";
		public static const OBTENER_ESTADISTICAS_GENERALES:String = "obtenerEstadisticasGeneralesEventoCatProGenerales"; 
		public static const CANCELAR_POPUP:String = "btnCancelarEventoCatProGenerales"; 
		public static const MOSTRAR_POPUP:String = "mostrarPopUpEventoCatProGenerales"; 
		public var metodoConsultado:String;
		
		
		public static const BUSCA_GRAFICAS_DE_TABLERO_PROVEEDOR:String = "buscaComparativaGeneralProveedores_EventoCatProEstadisticasGenerales";
		
		public var idProveedor:int;
		public var anioInt:int;
		public var periodo:String;
		public var tipoPeriodo:int;
		public var mes:int;
		public var idUsuario:Number;
		public var lineal:int;
		public var valorAdicional:String;
		public var mesInicio:Number;
		public var mesFin:Number;
		public var parametros:ParametrosBusquedaProveedor;
		
		
		public function EventoCatProEstadisticasGenerales(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new EventoCatProEstadisticasGenerales (type,bubbles,cancelable);
		}
	}
}