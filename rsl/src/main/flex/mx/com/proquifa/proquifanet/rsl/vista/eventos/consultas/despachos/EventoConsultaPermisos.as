package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.despachos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PermisoImportacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.TiempoProceso;
	
	public class EventoConsultaPermisos extends Event
	{
		public var indiceVistas:Number;
		
		public var finicio:Date;
		public var ffin:Date;
		public var proveedor:Number;
		public var catalogo:String;
		public var tipoPermiso:String;
		public var tipoProducto:String;
		public var subTipo:String;
		public var clasificacion:String;
		public var control:String;
		public var estado:String;
		public var permiso:PermisoImportacion;
		public var idProducto:Number;
		public var estCerrado:String;
		
		public var listaGenerales:ArrayCollection;
		public var tipoConsultaGenerales:String;
		public var tiempoProceso:TiempoProceso;
		
		public var finicioPasado:Date;
		public var ffinPasado:Date;
		public var finicioPostPsado:Date;
		public var ffinPostPasado:Date;
		public var individual:Boolean;
		
		public static const CONSULTA_PERMISOS:String = 'consultaPermisosEventoConsultaPermisos';
		public static const CONSULTA_GRAFICAS:String = 'consultaGraficasEventoConsultaPermisos';
		public static const CONSULTA_PERMISOS_RAPIDA:String = 'consultaPermisosRapidaEventoConsultaPermisos';
		public static const CONSULTA_HISTORIAL:String = 'consultaHistorialEventoConsultaPermisos';
		public static const CONSULTA_GENERALES:String = 'consultaGeneralesEventoConsultaPermisos';
		
		public static const CONSULTA_PERMISO_DETALLADO:String = "consultaPermisoDetalladoEventoConsultaPermisos";
		public static const CAMBIA_INDICE:String = "cambiaIndiceEventoConsultaPermisos";
		public static const TRNASPORTA_DATOS_PARA_TOTALES:String = "transportaDatosTotalesEventoConsultaPermisos";		
		
		public static const MOSTRAR_SELECTED_GRAFICA:String = 'mostrarSelectedGraficaEventoConsultaPermisos';
		public static const OBTENER_TOTALES_POR_PERIODO:String = 'obtenerTotalesPorPeriodoEventoConsultaPermisos';
		
		public static const OBTENER_TOTALES_POR_PERIODO_PASADO:String = 'obtenerTotalesPorPeriodoPasadoEventoConsultaPermisos';
		public static const OBTENER_TOTALES_POR_PERIODO_POSTPASADO:String = 'obtenerTotalesPorPeriodoPostpasadoEventoConsultaPermisos';
		
		public static const VALIDA_INDICE:String = 'validaIndiceEventoConsultaPermisos';
		
		public static const DESBLOQUEA:String = 'desbloqueaEventoConsultaPermisos'
		
		public function EventoConsultaPermisos(type:String, bubbles:Boolean=true, cancelable:Boolean=false,finicio:Date = null,ffin:Date = null,proveedor:Number = 0,catalogo:String = null,
											   tipoPermiso:String = null,tipoProducto:String = null,subTipo:String = null,clasificacion:String = null,control:String = null,estado:String = null,
											   permiso:PermisoImportacion = null,idProducto:Number = 0,estCerrado:String = null,listaGenerales:ArrayCollection = null,tipoConsultaGenerales:String = null,
											   tiempoProceso:TiempoProceso = null,finicioPasado:Date = null,ffinPasado:Date = null,finicioPostPsado:Date = null,ffinPostPasado:Date = null,individual:Boolean = false)
		{
			super(type, bubbles, cancelable);
			this.finicio = finicio;
			this.ffin = ffin;
			this.proveedor = proveedor;
			this.catalogo = catalogo;
			this.tipoPermiso = tipoPermiso;
			this.tipoProducto = tipoProducto;
			this.subTipo = subTipo;
			this.clasificacion = clasificacion;
			this.control = control;
			this.estado = estado;
			if(permiso!=null){
			this.permiso = permiso;
			}
			this.idProducto = idProducto;
			this.estCerrado = estCerrado;
			this.listaGenerales = listaGenerales;
			this.tipoConsultaGenerales = tipoConsultaGenerales;
			if(tiempoProceso!=null){
			this.tiempoProceso = tiempoProceso;
			}
			this.finicioPasado = finicioPasado;
			this.ffinPasado = ffinPasado;
			this.finicioPostPsado = finicioPostPsado;
			this.ffinPostPasado = ffinPostPasado;
			this.individual = individual;
			
		}
		public override function clone():Event{
			return new EventoConsultaPermisos(type,bubbles,cancelable,finicio,ffin,proveedor,catalogo,tipoPermiso, tipoProducto,subTipo,clasificacion,control,estado,permiso,idProducto,estCerrado,listaGenerales,tipoConsultaGenerales,tiempoProceso,finicioPasado,ffinPasado,finicioPostPsado,ffinPostPasado,individual);
		}	
	}
}