package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.asistencia
{
	import flash.events.Event;

	public class EventoConsultaAsistencia extends Event
	{
		
		public var indiceVista:Number;
		public var finicio:Date;
		public var ffin:Date;
		public var colaborador:Number;
		public var trabajador:String;
		public var tipoChecada:String;
		public var tipoIncidencia:String;
		public var area:String;
		public var departamento:String;
		public var categoria:String;
		public var cambios:Boolean;
		public var localidad:String;
		
		public static const BUSCAR_ASISTENCIAS_COLABORADOR:String = "buscarAsistenciaxColaboradorConsultaAsistencia";
		public static const BUSCAR_RAPIDO_ASISTENCIAS_COLABORADOR:String = "buscarRapidoAsistenciaxColaboradorConsultaAsistencia";
		
		
		//Constante para vista
		public static const CAMBIA_INDICE:String = "cambiaIndiceEventoConsultaAsistencia";
		public static const OBTENER_BUSQUEDA_LISTA_ASISTENCIA:String = "obtenerBusquedaListaAsistenciaConsultaAsistencia";
		public static const GENERAR_GRAFICAS_ASISTENCIA:String = "generarGraficasConsultaAsistencia";
		public static const SET_INDICE_GRAFICAS:String = "setIndiceGraficasConsultaAsistencia";
		public static const GET_CAMBIOS_GRID:String = "getCambiosGridConsultaAsistencia";
		
		public function EventoConsultaAsistencia(type:String, bubbles:Boolean = true, cancelable:Boolean = false, indiceVista:Number = 0, finicio:Date = null, ffin:Date = null, colaborador:Number = 0, trabajador:String = "", 
												 tipoChecada:String = "", tipoIncidencia:String = "", area:String = "", departamento:String = "", categoria:String = "", cambios:Boolean = false, localidad:String = "")
		{
			super(type,bubbles,cancelable)
			this.indiceVista = indiceVista;
			this.finicio = finicio;
			this.ffin = ffin;
			this.colaborador = colaborador;
			this.trabajador = trabajador;
			this.tipoChecada = tipoChecada;
			this.tipoIncidencia = tipoIncidencia;
			this.area = area;
			this.departamento = departamento;
			this.categoria = categoria;
			this.cambios = cambios;
			this.localidad = localidad;
		}
		
		public function existTypeInThisEvent(type:String):Boolean
		{
			return hasOwnProperty(type);
		}
		
		public override function clone():Event{
			return new EventoConsultaAsistencia(type,bubbles,cancelable,indiceVista,finicio,ffin,colaborador,trabajador,tipoChecada,tipoIncidencia,area,departamento,categoria,cambios,localidad);
		}
	}
}