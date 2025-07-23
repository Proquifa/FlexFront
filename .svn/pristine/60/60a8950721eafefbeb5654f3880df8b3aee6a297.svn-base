package vista.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.alertPqNet.ResultAlert;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PermisoImportacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.controls.Alert;
	import mx.utils.ObjectUtil;
	import mx.utils.StringUtil;
	
	import spark.collections.Sort;
	import spark.collections.SortField;
	
	public class ModeloDirectorGralPrevioImportacion extends EventDispatcher
	{
		
		private var _sql:Query;
		private var _listaGridPrevioImportacion:ArrayCollection;
		private var _graficaProveedor:ArrayCollection;
		private var _graficaTipoProducto:ArrayCollection;
		private var _graficaTipoSoliPermiso:ArrayCollection;
		private var _listaProductosPorProveedor:ArrayCollection;
		
		public function setInfoProductosEnPrevioImportacion($infoProductos:ArrayCollection):void
		{
			if($infoProductos == null)
				return;
			
			for (var i:int = 0; i < $infoProductos.length; i++) 
			{
				if(($infoProductos[i] as PermisoImportacion).tipoSolicitudPermiso == null || ($infoProductos[i] as PermisoImportacion).tipoSolicitudPermiso == "--NINGUNO--" )
					($infoProductos[i] as PermisoImportacion).tipoSolicitudPermiso = "ND";
			}
			
			_sql = new Query($infoProductos,["proveedor","sistema","tipoProductoFiltro","tipoSolicitudPermisoFiltro","reqPermiso"]);
			ensamblarInfoParaGridPrevioImportacion();
		}
		private var ultimoObject:Object;
		private function ensamblarInfoParaGridPrevioImportacion():void
		{
			var totProveedores:uint = 0;
			var totPartidas:uint =0;
			var totEnSistema:uint = 0;
			var totFueraSistema:uint = 0;
			var nombresProveedores:Array =_sql.getPunteros(["proveedor"]);
			
			if(nombresProveedores.length >0){
				_listaGridPrevioImportacion = new ArrayCollection;
				var currentProveedor:String;
				var itemGrid:PrevioImportacionItemGrid;
				var numFila:uint;
				for (var i:int = 0; i < nombresProveedores.length; i++) 
				{
					numFila++;
					if(nombresProveedores[i]!= null){
						totProveedores ++;
						currentProveedor = nombresProveedores[i];
						
						var punterosXProveedor:Array = _sql.getPunteros([currentProveedor]);
						itemGrid = new PrevioImportacionItemGrid;
						itemGrid.numFila = numFila;
						itemGrid.nombreProveedor = currentProveedor;
						itemGrid.paisProveedor = (_sql.universo[punterosXProveedor[0]] as PermisoImportacion).pais;
						itemGrid.numEnSistema = _sql.getPunteros([currentProveedor,"ES"]).length;
						itemGrid.numFueraSistema = _sql.getPunteros([currentProveedor,"FS"]).length;
						itemGrid.numPartidas = punterosXProveedor.length;
						itemGrid.numEstandares = _sql.getPunteros([currentProveedor,null,"ESTÁNDARES"]).length;
						itemGrid.numMedicamentos = _sql.getPunteros([currentProveedor,null,"MEDICAMENTOS"]).length;
						itemGrid.numPublicaciones = _sql.getPunteros([currentProveedor,null,"PUBLICACIONES"]).length;
						itemGrid.numReactivos = _sql.getPunteros([currentProveedor,null,"REACTIVOS"]).length;
						itemGrid.numAlopaticos = _sql.getPunteros([currentProveedor,null,null,"ALOPÁTICO"]).length;
						itemGrid.numPlafest = _sql.getPunteros([currentProveedor,null,null,"PLAFEST"]).length;
						itemGrid.numPsicotropico = _sql.getPunteros([currentProveedor,null,null,"PSICOTRÓPICO"]).length;
						itemGrid.numSinTipoSoliPermiso = _sql.getPunteros([currentProveedor,null,null,"ND"]).length;
						itemGrid.numReqPermiso = _sql.getPunteros([currentProveedor,null,null,null,"Si"]).length;
						itemGrid.numNoReqPermiso = _sql.getPunteros([currentProveedor,null,null,null,"No"]).length;
						itemGrid.numNingunoReqPermiso = _sql.getPunteros([currentProveedor,null,null,null,"--NINGUNO--"]).length;
						_listaGridPrevioImportacion.addItem(itemGrid);
						totPartidas += itemGrid.numPartidas;
						totEnSistema += itemGrid.numEnSistema;
						totFueraSistema += itemGrid.numFueraSistema;
					}
				}
				
				ultimoObject = new Object;
				ultimoObject.isUltimo = true;
				ultimoObject.totProveedores = totProveedores;
				ultimoObject.totPartidas = totPartidas;
				ultimoObject.totEnSistema = totEnSistema;
				ultimoObject.totFueraSistema = totFueraSistema;
				ultimoObject.idVista = "idPrevioImportacion";
				_listaGridPrevioImportacion.addItem(ultimoObject);
				
				dispatchEvent(new Event("regresarListaGridPrevioImportaciónModeloDirectorGralPrevioImportacion"));
				dispatchEvent(new Event("mandarTotalesMenuRollesModelorDirectorGralPrevioImportacion"));
				
				_graficaProveedor = generateChartReporte("proveedor",null,["proveedor",null,null,null,null]);
				_graficaTipoProducto = generateChartReporte("tipoProductoFiltro",null,[null,null,"tipoProductoFiltro",null,null]);
				_graficaTipoSoliPermiso = generateChartReporte("tipoSolicitudPermisoFiltro",null,[null,null,null,"tipoSolicitudPermisoFiltro",null]);
				
			}else{
				_graficaTipoSoliPermiso = _graficaTipoProducto= _graficaProveedor = new ArrayCollection;
			}
			dispatchEvent(new Event("regresaGraficaProveedoresModeloDirectorGralPrevioImportacion"));
			dispatchEvent(new Event("regresaGraficaTipoProductoModeloDirectorGralPrevioImportacion"));
			dispatchEvent(new Event("regresaGraficaTipoSoliProductoModeloDirectorGralPrevioImportacion"));
		}
		
		[Bindable(event="regresarListaGridPrevioImportaciónModeloDirectorGralPrevioImportacion")]
		public function get obtenerListaParaGridPrevioImportacion():ArrayCollection
		{
			return _listaGridPrevioImportacion;
		}
		[Bindable(event="mandarTotalesMenuRollesModelorDirectorGralPrevioImportacion")]
		public function get regresarTotalesPendientes():Object
		{
			return ultimoObject;
		}
		[Bindable(event="regresaGraficaProveedoresModeloDirectorGralPrevioImportacion")]
		public function get regresaGraficaProveedores():ArrayCollection
		{
			return _graficaProveedor;
		}
		[Bindable(event="regresaGraficaTipoProductoModeloDirectorGralPrevioImportacion")]
		public function get regresaGraficaTipoProducto():ArrayCollection
		{
			return _graficaTipoProducto;
		}
		[Bindable(event="regresaGraficaTipoSoliProductoModeloDirectorGralPrevioImportacion")]
		public function get regresaGraficaTipoSoliPermiso():ArrayCollection
		{
			return _graficaTipoSoliPermiso;
		}
		
		
		private function generateChartReporte( $propiedad:String, $filtro:String, $consulta:Array ):ArrayCollection
		{
			var arrayProvider:ArrayCollection = new ArrayCollection();
			if( _sql.indexObject[ $propiedad ] != null )
			{
				// determino si el filtro aplica por campo o por propiedad en campo
				var posIdx:int = $consulta.indexOf( $propiedad );
				for( var key:String in _sql.indexObject[ $propiedad ] )
				{
					var consultaReformulada:Array = ObjectUtil.copy( $consulta ) as Array; 
					if( posIdx != -1 )
						consultaReformulada[ posIdx ] = key;
					if( $filtro != null )
						consultaReformulada[ posIdx ] = $filtro;
					if( posIdx != -1 && $filtro == null || key == $filtro )
					{// contiene el campo a filtrar
						var cachoPie:ResumenConsulta = new ResumenConsulta();
						cachoPie.etiqueta = key;
						var punterosFiltro:Array = _sql.getPunteros( consultaReformulada );
						cachoPie.total = _sql.getSumarCampo("monto", punterosFiltro); 
						cachoPie.totalPermisos = punterosFiltro.length;
						cachoPie.noProductos = _sql.getPunteros( consultaReformulada, "codigoProducto" ).length;
						cachoPie.piezasTotal = _sql.getSumarCampo( "piezas", punterosFiltro); 
						arrayProvider.addItem( cachoPie );
					}
				}
			}
			var dataSortField:spark.collections.SortField = new SortField();
			dataSortField.name = "total";
			dataSortField.descending = true;
			var numericDataSort:Sort = new Sort();
			numericDataSort.fields = [dataSortField];
			arrayProvider.sort = numericDataSort;
			arrayProvider.refresh();
			return arrayProvider;
		}
		
		public function setFiltrarProductosPorProveedor($nombreProveedor:String):void
		{
			var totPartidas:uint;
			var totEnSistema:uint;
			var totFueraSistema:uint;
			if($nombreProveedor != null && StringUtil.trim($nombreProveedor).length >0){
				_listaProductosPorProveedor = new ArrayCollection;
				var punterosPorProveedor:Array =_sql.getPunteros([$nombreProveedor]);
				
				var itemProducto:PermisoImportacion;
				for (var i:int = 0; i < punterosPorProveedor.length; i++) 
				{
					itemProducto = _sql.universo[punterosPorProveedor[i]];
					itemProducto.numFila = i +1;
					_listaProductosPorProveedor.addItem(itemProducto);
				}
				totEnSistema = _sql.getPunteros([$nombreProveedor,"ES"]).length;
				totFueraSistema = _sql.getPunteros([$nombreProveedor,"FS"]).length;
				totPartidas = punterosPorProveedor.length;
				
				var ultimoObject:Object = new Object;
				ultimoObject.isUltimo = true;
				ultimoObject.nombreProveedor = $nombreProveedor;
				ultimoObject.ubicacion = (_sql.universo[punterosPorProveedor[0]] as PermisoImportacion).pais;
				ultimoObject.totPartidas = totPartidas;
				ultimoObject.totEnSistema = totEnSistema;
				ultimoObject.totFueraSistema = totFueraSistema;
				_listaProductosPorProveedor.addItem(ultimoObject); 
				
			}
			dispatchEvent(new Event("regresarListaDeProductosPorProveedorModeloDirectorGralPrevioImportacion"));
		}
		
		[Bindable(event="regresarListaDeProductosPorProveedorModeloDirectorGralPrevioImportacion")]
		public function get obtenerListaProductosPorProveedor():ArrayCollection
		{
			return _listaProductosPorProveedor;
		}
		
		private var _respuesta:ResultAlert;
		public function setRespuestaActualizarProducto($respuesta:ResultAlert):void
		{
			if($respuesta.vieneD == "DirectorGralActualizarProductoPrevioImportacion"){
				_respuesta = $respuesta;
				dispatchEvent(new Event("regresarRespuestaAlertaActualizarProductoModeloDirectorGralPrevioImportacion"));
			}
		}
		[Bindable(event="regresarRespuestaAlertaActualizarProductoModeloDirectorGralPrevioImportacion")]
		public function get regresaRespuestaActualizarProducto():ResultAlert
		{
			return _respuesta;
		}
		
		public function ModeloDirectorGralPrevioImportacion(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		//=============================================================== ACTUALIZAR PRODUCTO CERRAR PENDIENTE ====================================================================
		
		private var _idProducto:Number;
		public function setRespuestaBaseDeDatos($idProducto:Number):void
		{
			_idProducto = $idProducto;
			dispatchEvent(new Event("regresaRespuestaDeActualizarProductoModeloDirectorGralPrevioImportacion"));
		}
		
		[Bindable(event="regresaRespuestaDeActualizarProductoModeloDirectorGralPrevioImportacion")]
		public function get regresaRespuestaActualizarCerrarPendiente():Number
		{
			return _idProducto;
		}
		
		//=============================================================== ERRORSSS====================================================================
		public function errorInfoProductosEnPrevioImportacion(fault:Object):void
		{
			//trace(fault.toString());
			Alert.show( fault.toString() );
		}
		public function errorAlActualizarProductoCerrarPendiente(fault:Object):void
		{
			Alert.show( fault.toString() );
			//trace(fault.toString());
		}
	}
}