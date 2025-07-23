package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.ventas.confirmacion
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PCotPharma;

	public class EventoConsultaConfirmacion extends Event
	{
		
		public var indiceVistas:Number;
		
		public var pcotPharma:PCotPharma = new PCotPharma;
		public var idEmpleado:Number;
		public var tabGrafica:Boolean = false;
		
		public var folio:String;
		
		//Vista
		public static const CAMBIA_INDICE:String = "cambiarIndiceEventoConsultaConfirmacion";
		public static const CONFIGURAR_ESPERA:String = "configurarInicioEsperaEventoConsultaConfirmacion";
		public static const MOSTRAR_OCULTAR_TAB_GRAFICAS:String = "mostrarOcultarTabGraficasEventoConsultaConfirmacion";
		
		//Servicio
		public static const OBTENER_TOP_COTPHARMA:String = "obtenerTopCotPharmaEventoConsultaConfirmacion";
		public static const BUSCAR_DOCUMENTOS_POR_FOLIO:String = "buscarDocumentoPorFolioEventoConsultaConfirmacion";
		
		public function EventoConsultaConfirmacion(type:String, bubbles:Boolean = true, cancelable:Boolean = false,indiceVistas:Number = 0,pcotPharma:PCotPharma = null,idEmpleado:Number = 0,
												   tabGrafica:Boolean = false,folio:String = null)
		{
			super(type,bubbles,cancelable)
			if(pcotPharma!=null){
			this.pcotPharma = pcotPharma;
			}
			this.indiceVistas = indiceVistas;
			this.idEmpleado = idEmpleado;
			this.tabGrafica = tabGrafica;
			this.folio = folio;
		}
		
		public function existTypeInThisEvent(type:String):Boolean
		{
			return hasOwnProperty(type);
		}
		public override function clone():Event{
			return new EventoConsultaConfirmacion(type,bubbles,cancelable,indiceVistas,pcotPharma,idEmpleado,tabGrafica,folio);
		}
	}
}