package mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.compras.reporteDePermisos
{
	import flash.events.Event;
	
	public class EventoReporteDePermisos extends Event
	{
		//Filtros Combos
		public var _proveedor:String;
		public var _catalogo:String;
		public var _tipoSolicitudPermiso:String;
		public var _tipoDeProducto:String;
		public var _subTipoProducto:String;
		public var _clasificacion:String;
		public var _control:String;
		public var _estadoFisico:String;
		public var _tipoDePermiso:String;
		
		
		//para vista
		public var idSolicitud:String;
		public var idProducto:String;
		public var _currentEtiqueta:String;
		public var isBusquedaAvanzada:Boolean;
		public var vistaSelected:String = "tabla";
		public var diaSeleccionado:String;
		public var lotePermiso:String;
		public var filtrarPorEnfoque:Boolean;
		
		
		public static const OBTENER_UNIVERSO_PERMISOS:String = "obtenerPermisosUniversoEventoReporteDePermisos";
		
		//Para vista
		public static const FILTRAR_PERMISOS_VISTA:String = "filtrarPermisosVistaEventoReporteDePermisos";
		public static const TIPOS_DE_SOLICITUD_DE_PERMISO_POR_PROVEEDOR:String = "tiposDeSolicitudPermisoEventoReporteDePermisos";	
		public static const OBTENER_LOTES_POR_PROVEEDOR:String = "obtenerLotesPorProveedorEventoReporteDePermisos";	
		public static const OBTENER_PRODUCTOS_POR_TIPO_DE_SOLICITUD_PERMISO:String = "obtenerProductosPorTipoDeSolicitudPermisoEventoReporteDePermisos";
		public static const OBTENER_PRODUCTOS_POR_LOTE_PERMISO:String = "obtenerProductosPorLotePermisoEventoReporteDePermisos";
		public static const OBTENER_INFORME_PRODUCTO:String = "obtenerInformeProductoEventoReporteDePermisos";
		
		public static const OBTENER_MONITOREO_DE_LA_SOLICITUD:String = "obtenerMonnitoreoDeLaSolicitudReporteDePermisos";
		
		public static const SETTEAR_FILTROS_PARA_BUSQUEDA:String = "settearFiltrosParaBusquedaEventoReporteDePermisos";
		
		public function EventoReporteDePermisos(type:String,bubbles:Boolean=true,cancelable:Boolean=false,_proveedor:String=null,_catalogo:String=null,_tipoSolicitudPermiso:String=null,_tipoDeProducto:String=null,
												_subTipoProducto:String=null,_clasificacion:String=null,_control:String=null,_estadoFisico:String=null,_tipoDePermiso:String=null,idSolicitud:String=null,
												idProducto:String=null,_currentEtiqueta:String=null,isBusquedaAvanzada:Boolean=false,vistaSelected:String =null,diaSeleccionado:String=null,lotePermiso:String=null,filtrarPorEnfoque:Boolean=false)
		{
			super(type,bubbles,cancelable);
			this._proveedor = _proveedor;
			this._catalogo = _catalogo;
			this._tipoSolicitudPermiso = _tipoSolicitudPermiso;
			this._tipoDeProducto = _tipoDeProducto;
			this._subTipoProducto = _subTipoProducto;
			this._clasificacion = _clasificacion;
			this._control = _control;
			this._estadoFisico = _estadoFisico;
			this._tipoDePermiso = _tipoDePermiso;
			this.idSolicitud = idSolicitud;
			this.idProducto = idProducto;
			this._currentEtiqueta = _currentEtiqueta;
			this.isBusquedaAvanzada = isBusquedaAvanzada;
			this.vistaSelected = vistaSelected;
			this.diaSeleccionado = diaSeleccionado;
			this.lotePermiso = lotePermiso;
			this.filtrarPorEnfoque = filtrarPorEnfoque;
		}
		
		public override function clone():Event{
			return new EventoReporteDePermisos(type,bubbles,cancelable,_proveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico,_tipoDePermiso,idSolicitud,idProducto,_currentEtiqueta,isBusquedaAvanzada,vistaSelected,diaSeleccionado,lotePermiso,filtrarPorEnfoque);
		}
	}
}