package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.clientes.estadisticas
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.ParametrosBusquedaCliente;
	import mx.utils.ObjectUtil;
	
	public class EventoCatClientes_EstadisticasGenerales extends Event
	{
		
		
		public static const SOLICITAR_LA_CONSULTA_LINEAL:String = "consultaLinealEventoCatClientesEstadisticasGenerales";
		public static const OBTENER_MONTOS_OBJETIVO:String = "obtenerMontosObjetivoEventoCatClientesEstadisticasGenerales";
		public static const OBTENER_ESTADISTICAS_GENERALES:String = "obtenerEstadisticasGeneralesEventoCatClientesGenerales"; 
		public static const CANCELAR_POPUP:String = "btnCancelarEventoCatClientesGenerales"; 
		public static const MOSTRAR_POPUP:String = "mostrarPopUpEventoCatClientesGenerales"; 
		public static const LIMPIAR_GRAFICAS:String = "limpiarGraficasEventoCatClientesGenerales"; 
		
		
		public static const SERVICIOS_CONSULTADOS:String = "actualizarNumeroDeServiciosConsultadosEventoCatClientesEstadisticasGenerales";
		
		public var params:Params;
		public var parametros:ParametrosBusquedaCliente;
		public var metodoConsultado:String;
		
		public function EventoCatClientes_EstadisticasGenerales($type:String, $bubbles:Boolean=true, $cancelable:Boolean=false,$params:Params = null)
		{
			super($type, $bubbles, $cancelable);
			
			if($params)
				this.params = $params;
			else
				this.params = new Params;
		}
		
	
		public function duplicarEvento($type:String):EventoCatClientes_EstadisticasGenerales
		{
			var copiaDeParams:Params = this.params.clone();
			var copiaEvento:EventoCatClientes_EstadisticasGenerales;
			
			if($type)
			{
				copiaEvento = new EventoCatClientes_EstadisticasGenerales($type,bubbles,cancelable,copiaDeParams);
			}
			else
			{
				 copiaEvento = new EventoCatClientes_EstadisticasGenerales(type,bubbles,cancelable,copiaDeParams);
			}
			
			copiaEvento.metodoConsultado = this.metodoConsultado;
			return copiaEvento;
		}
		
		override public function clone():Event
		{
			var copiaDeParams:Params = ObjectUtil.copy(this.params) as Params;
			return new EventoCatClientes_EstadisticasGenerales(type,bubbles,cancelable,copiaDeParams);
		}

	}
	
}