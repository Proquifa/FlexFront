package skins.plantillaproquifa.gestion.boton.iconos
{
	public class iconMenu
	{
		
		private static var _instance:iconMenu = null;
		
		
		/////documentos recibidos
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/docRecibidos.png")]
		public var docRecibidos:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/docRecibidosdown.png")]
		public var docRecibidosdown:Class;
		
		/////consultaCotizacion
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/docRecibidos.png")]
		public var consultaCotizacion:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/docRecibidosdown.png")]
		public var consultaCotizaciondown:Class;
		
		/////reporte bonos
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/repBonos.png")]
		public var repBonos:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/repBonosdown.png")]
		public var repBonosdown:Class;
		
		////// tablero 
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/tabConDatos.png")]
		public var tabConDatos:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/tabConDatosdown.png")]
		public var tabConDatosdown:Class;
		
		///////tablero proveedores
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/tabProveedores.png")]
		public var tabProveedores:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/tabProveedoresdown.png")]
		public var tabProveedoresdown:Class;
		
		/////costos no calidad
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/noCalidad.png")]
		public var noCalidad:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/noCalidaddown.png")]
		public var noCalidaddown:Class;
		
		///////incidentes
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/incidentes.png")]
		public var incidentes:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/incidentesdown.png")]
		public var incidentesdown:Class;
		
		
		
		/////catalogo procesos
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/catProcesos.png")]
		public var catProcesos:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/catProcesosdown.png")]
		public var catProcesosdown:Class;
		
		
		
		/////tablero Incidentes
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/tabIncidentes.png")]
		public var tabIncidentes:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/tabIncidentesdown.png")]
		public var tabIncidentesdown:Class;
		
		
		///////Tasa realizada de Incidentes
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/incidenteTasaRealizada.png")]
		public var incidenteTasaRealizada:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/incidenteTasaRealizadadown.png")]
		public var incidenteTasaRealizadadown:Class;
		
		///////producto Almacen
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/productoAlmacen.png")]
		public var productoAlmacen:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/productoAlmacendown.png")]
		public var productoAlmacendown:Class;
		
		
		//////////Tasa de cotizaciones
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/cotiazcionesTasa.png")]
		public var cotiazcionesTasa:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/cotiazcionesTasadown.png")]
		public var cotiazcionesTasadown:Class;
		
		
		/////consulta Llamadas
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/consultaLlamadas.png")]
		public var consultaLlamadas:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/consultaLlamadasdown.png")]
		public var consultaLlamadasdown:Class;
		
		
		////////reporte Llamadas
		
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/repoLlamadas.png")]
		public var repoLlamadas:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/repoLlamadasdown.png")]
		public var repoLlamadasdown:Class;
		
		////////consulta Compras
		
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/repoLlamadas.png")]
		public var consultaCompra:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/repoLlamadasdown.png")]
		public var consultaCompradown:Class;
		
		
		////////consulta Pedidos
		
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/repoLlamadas.png")]
		public var consultaPedidos:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/repoLlamadasdown.png")]
		public var consultaPedidosdown:Class;
		
		///////prod Almacen
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/productoAlmacen.png")]
		public var prodAlmacen:Class;
		
		[Embed (source="skins/plantillaproquifa/gestion/boton/assets/productoAlmacendown.png")]
		public var prodAlmacendown:Class;
		
		
		
		public static function getInstance():iconMenu
		{
			if(_instance == null){
				_instance = new iconMenu();
			}
			return _instance;
		}
		
		public function iconMenu(){
			
		}
	}
}