package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.compras.reporteDePermisos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.compras.reporteDePermisos.EventoReporteDePermisos;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PermisoImportacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.utils.ObjectUtil;
	import mx.utils.StringUtil;
	
	import spark.collections.SortField;
	
	
	public class ModeloReporteDePermisos extends EventDispatcher
	{
		public function ModeloReporteDePermisos (target:IEventDispatcher= null)
		{
			super(target);
		}
		
		private var _sql:Query;
		
		//Filtros Combos
		private var _proveedor:String;
		private var _catalogo:String;
		private var _tipoSolicitudPermiso:String;
		private var _tipoDeProducto:String;
		private var _subTipoProducto:String;
		private var _clasificacion:String;
		private var _control:String;
		private var _estadoFisico:String;
		
		//Otros Filtros, por ejemplo botonera AHYM, 
		private var _diaSeleccionado:String='HOY';
		private var _etiqueta:String='A Tramitar';
		private var _tipoDePermiso:String;  //TODO - PERMISO - PRORROGA
		private var _currentVista:String = "tabla";
		private var _filtrarPorEnfoque:Boolean=false;
		//private var _filtrarPorTipoPermiso:String = "TODO": //TODO - PERMISO - PRORROGA
		
		//Listas para las columnas
		private var _listaProveedores:ArrayCollection;
		private var _listaTiposSolicitudXProveedor:ArrayCollection; //panel 2 etiqueta: A Tramitar
		private var _listaLotesXProveedor:ArrayCollection; //panel 2 etiqueta: En Autorización
		private var _listaProductosXSolicidtud:ArrayCollection;
		private var _listaProductosXLote:ArrayCollection;
		
		
		//Arreglos Para las Gráficas
		//arriba
		private var _graficaProveedores:ArrayCollection;
		private var _graficaTipoSoliPermiso:ArrayCollection;
		private var _graficaTipoProducto:ArrayCollection;
		private var _graficaSubTipoProducto:ArrayCollection;
		//Abajo
		private var _graficaMarca:ArrayCollection;
		private var _graficaClasificacion:ArrayCollection;
		private var _graficaControl:ArrayCollection;
		private var _graficaEstadoFisico:ArrayCollection;
		
		
		
		private var _objLabels:Object;
		private var _tituloPanelTiposSolXProveedor:String;
		private var _tituloPanelProductosPorSolicitud:String;
		private var _arrEtiquetaDia:Array= ["Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado"];
		
		public function resultSetProductosPermisos($permisos:ArrayCollection):void
		{
			if($permisos == null)
				return;
			
			_sql = new Query($permisos,["diasFiltro","etiqueta","tipoPermiso","fabrica","codigoProducto","tipoSolicitudPermisoFiltro","tipoProductoFiltro","subTipoFiltro","clasifProductoFiltro","controlProductoFiltro","estadoFisicoFiltro","folioLote","idSolicitud","marca"]);
			
			if(_sql!= null){
				filtrarPermisosProductos(_diaSeleccionado,_etiqueta,_tipoDePermiso,_proveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico,_currentVista);
			}
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
						cachoPie.total = _sql.getImporteDeLosCampos( "precioUnitario","cantidad", punterosFiltro); //, "folioCotizacion" );
						cachoPie.noProductos = _sql.getPunteros( consultaReformulada, "codigoProducto" ).length;
						cachoPie.totalPermisos = _sql.getPunteros( consultaReformulada ).length;
						cachoPie.piezasTotal = _sql.getSumarCampo( "cantidad", punterosFiltro); //, "folioCotizacion"  );
						arrayProvider.addItem( cachoPie );
					}
				}
			}
			var dataSortField:SortField = new SortField();
			dataSortField.name = "total";
			dataSortField.descending = true;
			var numericDataSort:Sort = new Sort();
			numericDataSort.fields = [dataSortField];
			arrayProvider.sort = numericDataSort;
			arrayProvider.refresh();
			return arrayProvider;
		}
		
		private var _filtrosActualesEvento:EventoReporteDePermisos;
		public function filtrarPermisosProductos($diaSeleccionado:String,$etiqueta:String,$tipoDePermiso:String,$proveedor:String,$catalogo:String,$tipoSolicitudPermiso:String,$tipoDeProducto:String,$subTipoProducto:String,$clasificacion:String,$control:String,$estadoFisico:String,$currentVista:String):void
		{
			//Filtros Combos
			_proveedor = StringUtil.trim($proveedor).length==0 || $proveedor == "--TODOS--" ? null:$proveedor;
			_catalogo = StringUtil.trim($catalogo).length==0 || $catalogo == "--TODOS--" ? null:$catalogo;
			_tipoSolicitudPermiso = StringUtil.trim($tipoSolicitudPermiso).length==0 || $tipoSolicitudPermiso == "--TODOS--" ? null:$tipoSolicitudPermiso;
			_tipoDeProducto = StringUtil.trim($tipoDeProducto).length==0 || $tipoDeProducto == "--TODOS--" ? null:$tipoDeProducto;
			_subTipoProducto = StringUtil.trim($subTipoProducto).length==0 || $subTipoProducto == "--TODOS--" ? null:$subTipoProducto;
			_clasificacion = StringUtil.trim($clasificacion).length==0 || $clasificacion == "--TODOS--" ? null:$clasificacion;
			_control = StringUtil.trim($control).length==0 || $control == "--TODOS--" ? null:$control;
			_estadoFisico = StringUtil.trim($estadoFisico).length==0 || $estadoFisico == "--TODOS--" ? null:$estadoFisico;
			
			
			//Otros Filtros, por ejemplo botonera AHYM, 
			if(StringUtil.trim($diaSeleccionado).length==0 || $diaSeleccionado == "TODO"){
				_diaSeleccionado =  null;
			}else{
				if($diaSeleccionado == "MAÑANA"){
					_diaSeleccionado = "MANANA";
				}else if($diaSeleccionado == "PASADO MAÑANA"){
					_diaSeleccionado = "PASADO MANANA";
				}else{
					_diaSeleccionado = $diaSeleccionado;
				}
			}
			_etiqueta =  StringUtil.trim($etiqueta).length!=0 && $etiqueta != null ?$etiqueta:_etiqueta;
			_tipoDePermiso =  $tipoDePermiso == null || $tipoDePermiso == "TODO"  ? null : $tipoDePermiso;
			_currentVista =  StringUtil.trim($currentVista).length!=0 && $currentVista != null ?$currentVista:_currentVista;
			
			//Copiando Para que existan los filtros en el Panel uno
			_filtrosActualesEvento = new EventoReporteDePermisos(EventoReporteDePermisos.SETTEAR_FILTROS_PARA_BUSQUEDA);
			_filtrosActualesEvento._proveedor = _proveedor;
			_filtrosActualesEvento._catalogo = _catalogo;
			_filtrosActualesEvento._tipoSolicitudPermiso = _tipoSolicitudPermiso;
			_filtrosActualesEvento._tipoDeProducto = _tipoDeProducto;
			_filtrosActualesEvento._subTipoProducto = _subTipoProducto;
			_filtrosActualesEvento._clasificacion = _clasificacion;
			_filtrosActualesEvento._estadoFisico = _estadoFisico;
			_filtrosActualesEvento._control = _control;
			_filtrosActualesEvento.diaSeleccionado = _diaSeleccionado;
			_filtrosActualesEvento._currentEtiqueta = _etiqueta;
			_filtrosActualesEvento._tipoDePermiso = _tipoDePermiso;
			_filtrosActualesEvento.vistaSelected = _currentVista;
			
			if(_sql!= null){
				
				//["diasFiltro","etiqueta","tipoPermiso","fabrica","codigoProducto","tipoSolicitudPermisoFiltro","tipoProductoFiltro","subTipoFiltro","clasifProductoFiltro","controlProductoFiltro","estadoFisicoFiltro","folioLote","idSolicitud"]);
				
				if(_currentVista == "grafica"){
					_graficaProveedores = generateChartReporte( "fabrica", _proveedor, [_diaSeleccionado,_etiqueta,_tipoDePermiso,"fabrica",_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico]);
					_graficaTipoSoliPermiso = generateChartReporte( "tipoSolicitudPermisoFiltro", _tipoSolicitudPermiso, [_diaSeleccionado,_etiqueta,_tipoDePermiso,_proveedor,_catalogo,"tipoSolicitudPermisoFiltro",_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico] );
					_graficaTipoProducto = generateChartReporte( "tipoProductoFiltro", _tipoDeProducto, [_diaSeleccionado,_etiqueta,_tipoDePermiso,_proveedor,_catalogo,_tipoSolicitudPermiso,"tipoProductoFiltro",_subTipoProducto,_clasificacion,_control,_estadoFisico]);
					_graficaSubTipoProducto = generateChartReporte( "subTipoFiltro", _subTipoProducto, [_diaSeleccionado,_etiqueta,_tipoDePermiso,_proveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,"subTipoFiltro",_clasificacion,_control,_estadoFisico]);
					_graficaMarca = generateChartReporte( "marca", null, [_diaSeleccionado,_etiqueta,_tipoDePermiso,_proveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico,null,null,"marca"] );
					_graficaClasificacion = generateChartReporte( "clasifProductoFiltro", _clasificacion, [_diaSeleccionado,_etiqueta,_tipoDePermiso,_proveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,"clasifProductoFiltro",_control,_estadoFisico] );
					_graficaControl = generateChartReporte( "controlProductoFiltro", _control, [_diaSeleccionado,_etiqueta,_tipoDePermiso,_proveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,"controlProductoFiltro",_estadoFisico]);
					_graficaEstadoFisico = generateChartReporte( "estadoFisicoFiltro", _estadoFisico, [_diaSeleccionado,_etiqueta,_tipoDePermiso,_proveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,"estadoFisicoFiltro"]);
					
					
					dispatchEvent( new Event("regresaGraficaProveedorModeloReporteDePermisos") );
					dispatchEvent( new Event("regresaGraficaTipoSoliPermisoModeloReporteDePermisos") );
					dispatchEvent( new Event("regresaGraficaTipoProductoModeloReporteDePermisos") );
					dispatchEvent( new Event("regresaGraficaSubTipoProductoModeloReporteDePermisos") );
					dispatchEvent( new Event("regresaGraficaMarcaModeloReporteDePermisos") );
					dispatchEvent( new Event("regresaGraficaClasificacionModeloReporteDePermisos") );
					dispatchEvent( new Event("regresaGraficaControlModeloReporteDePermisos") );
					dispatchEvent( new Event("regresaGraficaEstadoFisicoModeloReporteDePermisos") );
					
				}else{
					var _listaProveedoresArray:Array = new Array(); 
					
					//["diasFiltro","etiqueta","tipoPermiso","fabrica","codigoProducto","tipoSolicitoPermisoFiltro","tipoProductoFiltro","subTipoFiltro","clasifProductoFiltro","controlProductoFiltro","estadoFisicoFiltro"]);
					var productosEnTramitar:Array = _sql.getPunteros([_diaSeleccionado,_etiqueta,_tipoDePermiso,_proveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico]);
					var nombresProveedores:Array = _proveedor == null ? _sql.getValoresCampo("fabrica",productosEnTramitar):[_proveedor];
					
					var totImporteDolares:Number = 0;
					var totProductos:int = 0;
					//var numFila:int = 0;
					var itemProveedores:ReporteDePermisosItemProveedores;
					//Para asacar la fecha mas proxima
					var tempFechasPasado:Array;
					var punteroFechaMasProxima:int =-1;
					var fechaPivotePasado:Number;
					
					for (var i:int = 0; i < nombresProveedores.length; i++) 
					{
						var currentProveedor:String;
						if(nombresProveedores[i] != "null"){
							currentProveedor = nombresProveedores[i];
							
							var punterosXProveedor:Array = _sql.getPunteros([_diaSeleccionado,_etiqueta,_tipoDePermiso,currentProveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico]);
							
							if(punterosXProveedor.length>0){
								//numFila ++;
								itemProveedores = new ReporteDePermisosItemProveedores();
								
								//itemProveedores.numFila = numFila;
								itemProveedores.numTipoSoliciPermiso = _sql.getValoresCampo("tipoSolicitudPermiso",punterosXProveedor).length;
								itemProveedores.numProductos = _sql.getValoresCampo("codigoProducto",punterosXProveedor).length;
								if(_diaSeleccionado == "PASADO" || _diaSeleccionado == "FUTURO" || _diaSeleccionado == null){
									tempFechasPasado = new Array();
									switch(_etiqueta)
									{
										case "A Tramitar":
										{
											tempFechasPasado = _sql.getValoresCampo("fechaET",punterosXProveedor);
											punteroFechaMasProxima = punterosXProveedor[0];
											
											if(tempFechasPasado.length > 1){
												fechaPivotePasado =  (_sql.universo[punterosXProveedor[0]] as PermisoImportacion).fechaET.time;
												for (var k:int = 1; k < tempFechasPasado.length; k++) 
												{
													if(fechaPivotePasado > (_sql.universo[punterosXProveedor[k]] as PermisoImportacion).fechaET.time){
														fechaPivotePasado = (_sql.universo[punterosXProveedor[k]] as PermisoImportacion).fechaET.time;
														punteroFechaMasProxima = punterosXProveedor[k];
													}
												}
											}
											itemProveedores.fechaET =  (_sql.universo[punteroFechaMasProxima] as PermisoImportacion).fechaET;
											itemProveedores.fechaETString =  (_sql.universo[punteroFechaMasProxima] as PermisoImportacion).fechaETString;
											break;
										}
										case "Por Someter":
										{
											tempFechasPasado = _sql.getValoresCampo("finicio",punterosXProveedor);
											punteroFechaMasProxima = punterosXProveedor[0];
											
											if(tempFechasPasado.length > 1){
												fechaPivotePasado =  (_sql.universo[punterosXProveedor[0]] as PermisoImportacion).finicio.time;
												for (k = 1; k < tempFechasPasado.length; k++) 
												{
													if(fechaPivotePasado > (_sql.universo[punterosXProveedor[k]] as PermisoImportacion).finicio.time){
														fechaPivotePasado = (_sql.universo[punterosXProveedor[k]] as PermisoImportacion).finicio.time;
														punteroFechaMasProxima = punterosXProveedor[k];
													}
												}
											}
											itemProveedores.fechaInicio =  (_sql.universo[punteroFechaMasProxima] as PermisoImportacion).finicio;
											itemProveedores.fechaInicioString =  (_sql.universo[punteroFechaMasProxima] as PermisoImportacion).finicioString;
											break;
										}
										case "En Autorización":
										{
											tempFechasPasado = _sql.getValoresCampo("fechaEL",punterosXProveedor);
											punteroFechaMasProxima = punterosXProveedor[0];
											
											if(tempFechasPasado.length > 1){
												fechaPivotePasado =  (_sql.universo[punterosXProveedor[0]] as PermisoImportacion).fechaEL.time;
												for (k = 1; k < tempFechasPasado.length; k++) 
												{
													if(fechaPivotePasado > (_sql.universo[punterosXProveedor[k]] as PermisoImportacion).fechaEL.time){
														fechaPivotePasado = (_sql.universo[punterosXProveedor[k]] as PermisoImportacion).fechaEL.time;
														punteroFechaMasProxima = punterosXProveedor[k];
													}
												}
											}
											itemProveedores.fechaEL =  (_sql.universo[punteroFechaMasProxima] as PermisoImportacion).fechaEL;
											itemProveedores.fechaELString =  (_sql.universo[punteroFechaMasProxima] as PermisoImportacion).fechaELString;
											break;
										}
									}
									
								}else{
									if(_etiqueta == "A Tramitar"){
										itemProveedores.fechaET =  (_sql.universo[punterosXProveedor[0]] as PermisoImportacion).fechaET;
										itemProveedores.fechaETString =  (_sql.universo[punterosXProveedor[0]] as PermisoImportacion).fechaETString;
									}else if(_etiqueta == "En Autorización"){
										itemProveedores.fechaEL =  (_sql.universo[punterosXProveedor[0]] as PermisoImportacion).fechaEL;
										itemProveedores.fechaELString =  (_sql.universo[punterosXProveedor[0]] as PermisoImportacion).fechaELString;
									}else{
										itemProveedores.fechaInicio = (_sql.universo[punterosXProveedor[0]] as PermisoImportacion).finicio;
										itemProveedores.fechaInicioString = (_sql.universo[punterosXProveedor[0]] as PermisoImportacion).finicioString;
									}
								}
								
								itemProveedores.nombreProveedor = currentProveedor;
								itemProveedores.nombreProducto =  (_sql.universo[punterosXProveedor[0]] as PermisoImportacion).codigoProducto;
								itemProveedores.importeDlls = _sql.getImporteDeLosCampos("precioUnitario","cantidad",punterosXProveedor);
								itemProveedores.etiqueta = (_sql.universo[punterosXProveedor[0]] as PermisoImportacion).etiqueta;
								_listaProveedoresArray.push(itemProveedores);
								totImporteDolares += itemProveedores.importeDlls;
								totProductos += itemProveedores.numProductos;
							}
						}
					}
					
					//Ordenar por Nombre del Proveedor
					_listaProveedoresArray.sortOn("nombreProveedor");
					//Enumerar los Items
					for (var i2:int = 0; i2 < _listaProveedoresArray.length; i2++) 
					{
						(_listaProveedoresArray[i2] as ReporteDePermisosItemProveedores).numFila = i2+1;
					}
					_listaProveedores = new ArrayCollection(_listaProveedoresArray);
					
					
					/**
					 * Realizar Conteo para mostrar en el menú, los totales de cada día
					 * */
					_objLabels = new Object();
					var diasFiltro:Array = [ "MANANA","PASADO MANANA","POS PASADO","FUTURO", "HOY", "AYER", "ANTIER", "ANTE ANTIER", "PASADO"];
					var totalProductos:int = 0;
					for (var j:int = 0; j < diasFiltro.length; j++) 
					{
						var punterosXdia:Array = _sql.getPunteros([diasFiltro[j],_etiqueta,_tipoDePermiso,_proveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico]);
						_objLabels[ diasFiltro[j] ] = String(punterosXdia.length);
						totalProductos+= punterosXdia.length;
					}
					var hoy:Date = new Date();
					var maniana:Date = UtilsFecha.regresaFechaRespectoAOtra(hoy,"MAÑANA");
					var ayer:Date = UtilsFecha.regresaFechaRespectoAOtra(hoy,"AYER");
					_objLabels.etiquetaHoy = _arrEtiquetaDia[hoy.day] +' '+ hoy.date;
					_objLabels.etiquetaManiana = _arrEtiquetaDia[maniana.day] +' '+ maniana.date;
					_objLabels.etiquetaAyer = _arrEtiquetaDia[ayer.day] +' '+ ayer.date;
					_objLabels.todasProductos = totalProductos;
					
					switch(_diaSeleccionado){
						case "PASADO":_objLabels.currentTitulo = "PASADO";break;
						case "ANTE ANTIER":_objLabels.currentTitulo = "ANTE ANTIER";break;
						case "ANTIER":_objLabels.currentTitulo = "ANTIER";break;
						case "AYER":_objLabels.currentTitulo = 'AYER / '+_objLabels.etiquetaAyer;break;
						case "HOY":_objLabels.currentTitulo = 'HOY / '+_objLabels.etiquetaHoy;break;
						case "MANANA":_objLabels.currentTitulo = "MAÑANA / "+_objLabels.etiquetaManiana;break;
						case "PASADO MANANA":_objLabels.currentTitulo = "PASADO MAÑANA";break;
						case "POS PASADO":_objLabels.currentTitulo = "POS PASADO";break;
						case "FUTURO":_objLabels.currentTitulo = "FUTURO";break;
						default:
						{
							if(!_isVistaRapida){
								_objLabels.currentTitulo = "TODO";
							}else{
								if(_listaProveedores.length>0)
									_objLabels.currentTitulo = (_listaProveedores[0] as ReporteDePermisosItemProveedores).nombreProducto;
							}
						}
					}
					
					var ultimoItemProveedores:ReporteDePermisosItemProveedores = new ReporteDePermisosItemProveedores();
					ultimoItemProveedores.isUltimo = true;
					ultimoItemProveedores.totProveedores = _listaProveedores.length;
					ultimoItemProveedores.totImporteDlls = totImporteDolares;
					ultimoItemProveedores.totProductos = totProductos;
					ultimoItemProveedores.etiqueta = _etiqueta;
					ultimoItemProveedores.panelTitulo = _objLabels.currentTitulo;
					_listaProveedores.addItem(ultimoItemProveedores);
					
					dispatchEvent(new Event("regresarListaProveedoresModeloReporteDePermisos"));
					dispatchEvent(new Event("setearTituloPanelProveedoresModeloReporteDePermisos"));
					dispatchEvent( new Event("regresaLabelsModeloReporteDePermisos"));
					dispatchEvent(new Event("settearFiltrosActualesEnPanelUnoModelosReportePermisos"));
				}
			}
		}
		
		[Bindable(event="regresarListaProveedoresModeloReporteDePermisos")]
		public function get resultGetProductosPorProveedor():ArrayCollection{
			return _listaProveedores;
		}
		
		[Bindable(event="setearTituloPanelProveedoresModeloReporteDePermisos")]
		public function get resultGetTituloPanelProductosPorProveedor():String{
			if(_objLabels != null && _objLabels.hasOwnProperty("currentTitulo"))
				return _objLabels.currentTitulo;
			else 
				return null;
		}
		[Bindable(event="regresaLabelsModeloReporteDePermisos")]
		public function get resultGetObjLabels():Object{
			return  _objLabels;
		}
		
		[Bindable(event="settearFiltrosActualesEnPanelUnoModelosReportePermisos")]
		public function get regresarFiltrosAPanelUno():EventoReporteDePermisos
		{
			return _filtrosActualesEvento;
		}
		
		//Panel 2 
		//ETIQUETA : A Tramitar
		public function setFiltrarTiposSolicitudPermisoParaPanelDos($currentProveedor:String):void
		{
			if(_sql!= null){
				var totImporteDolares:Number=0;
				var totProductos:int=0;
				//var numFila:int=0;
				//Para asacar la fecha mas proxima
				var tempFechasPasado:Array;
				var punteroFechaMasProxima:int =-1;
				var fechaPivotePasado:Number;
				
				//["diasFiltro","etiqueta","tipoPermiso","fabrica","codigoProducto","tipoSolicitudPermisoFiltro","tipoProductoFiltro","subTipoFiltro","clasifProductoFiltro","controlProductoFiltro","estadoFisicoFiltro"]);
				
				var _listaTiposSolXProvArray:Array = new Array();
				if($currentProveedor != null){
					_tituloPanelTiposSolXProveedor = '';
					var punterosXProveedor:Array = _sql.getPunteros([_diaSeleccionado,_etiqueta,_tipoDePermiso,$currentProveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico]);
					var tiposDeSolicitud:Array = _sql.getValoresCampo("tipoSolicitudPermisoFiltro",punterosXProveedor);
					
					var itemTipoSolicitudPermisos:ReporteDePermisosItemTiposDeSolicitud;
					for (var i:int = 0; i < tiposDeSolicitud.length; i++) 
					{
						var currentTipoSolicitud:String = tiposDeSolicitud[i];
						var punterosXSolicitudes:Array = _sql.getPunteros([_diaSeleccionado,_etiqueta,_tipoDePermiso,$currentProveedor,_catalogo,currentTipoSolicitud,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico]);
						if(punterosXSolicitudes != null){
							itemTipoSolicitudPermisos = new ReporteDePermisosItemTiposDeSolicitud();
							//itemTipoSolicitudPermisos.numFila = ++numFila;
							itemTipoSolicitudPermisos.numProductos = _sql.getValoresCampo("codigoProducto",punterosXSolicitudes).length;
							itemTipoSolicitudPermisos.importeDlls = _sql.getImporteDeLosCampos("precioUnitario","cantidad",punterosXSolicitudes);
							
							if(_diaSeleccionado == "PASADO" || _diaSeleccionado == "FUTURO" || _diaSeleccionado == null){
								tempFechasPasado = new Array();
								tempFechasPasado = _sql.getValoresCampo("fechaET",punterosXSolicitudes);
								punteroFechaMasProxima = punterosXSolicitudes[0];
								
								if(tempFechasPasado.length > 1){
									fechaPivotePasado =  (_sql.universo[punterosXSolicitudes[0]] as PermisoImportacion).fechaET.time;
									for (var k:int = 1; k < tempFechasPasado.length; k++) 
									{
										if(fechaPivotePasado > (_sql.universo[punterosXSolicitudes[k]] as PermisoImportacion).fechaET.time){
											fechaPivotePasado = (_sql.universo[punterosXSolicitudes[k]] as PermisoImportacion).fechaET.time;
											punteroFechaMasProxima = punterosXSolicitudes[k];
										}
									}
								}
								itemTipoSolicitudPermisos.fechaET =  (_sql.universo[punteroFechaMasProxima] as PermisoImportacion).fechaET;
								itemTipoSolicitudPermisos.fechaETString =  (_sql.universo[punteroFechaMasProxima] as PermisoImportacion).fechaETString;
							}else{
								itemTipoSolicitudPermisos.fechaET =  (_sql.universo[punterosXSolicitudes[0]] as PermisoImportacion).fechaET;
								itemTipoSolicitudPermisos.fechaETString =  (_sql.universo[punterosXSolicitudes[0]] as PermisoImportacion).fechaETString;
							}
							
							itemTipoSolicitudPermisos.tipoSolicitud = (_sql.universo[punterosXSolicitudes[0]] as PermisoImportacion).tipoSolicitudPermiso;
							itemTipoSolicitudPermisos.tipoSolicitudFiltro = (_sql.universo[punterosXSolicitudes[0]] as PermisoImportacion).tipoSolicitudPermisoFiltro; 
							itemTipoSolicitudPermisos.proveedor = $currentProveedor;
							itemTipoSolicitudPermisos.etiqueta = (_sql.universo[punterosXSolicitudes[0]] as PermisoImportacion).etiqueta;
							_listaTiposSolXProvArray.push(itemTipoSolicitudPermisos);
							totProductos += itemTipoSolicitudPermisos.numProductos;
							totImporteDolares += itemTipoSolicitudPermisos.importeDlls;
						}
					}
				}
				
				//Ordenar por fecha De Tramitación
				_listaTiposSolXProvArray.sort(ordenarFechasET);
				for (var j:int = 0; j < _listaTiposSolXProvArray.length; j++) 
				{
					(_listaTiposSolXProvArray[j] as ReporteDePermisosItemTiposDeSolicitud).numFila = j+1; 
				}
				_listaTiposSolicitudXProveedor = new ArrayCollection(_listaTiposSolXProvArray);
				
				
				var ultimoItemTipoSolicitud:ReporteDePermisosItemTiposDeSolicitud = new ReporteDePermisosItemTiposDeSolicitud();
				ultimoItemTipoSolicitud.isUltimo = true;
				ultimoItemTipoSolicitud.totProductos = totProductos;
				ultimoItemTipoSolicitud.totImporteDlls = totImporteDolares;
				ultimoItemTipoSolicitud.etiqueta = _etiqueta;
				ultimoItemTipoSolicitud.totTiposDeSolicitud = tiposDeSolicitud==null ? 0 :tiposDeSolicitud.length;
				_listaTiposSolicitudXProveedor.addItem(ultimoItemTipoSolicitud);
				if($currentProveedor != null)
					_tituloPanelTiposSolXProveedor = $currentProveedor;
				else
					_tituloPanelTiposSolXProveedor = '';
				dispatchEvent(new Event("regresarListaTiposSolicitudesPermisoModeloReporteDePermisos"));
				dispatchEvent(new Event("setearTituloPanelSolicitudesPorProveedorModeloReporteDePermisos"));
			}
		}
		
		[Bindable(event="regresarListaTiposSolicitudesPermisoModeloReporteDePermisos")]
		public function get getSolicitudesPorProveedor():ArrayCollection{
			return  _listaTiposSolicitudXProveedor;
		}
		[Bindable(event="setearTituloPanelSolicitudesPorProveedorModeloReporteDePermisos")]
		public function get getTituloPanelsolicitudesPorProveedor():String{
			return _tituloPanelTiposSolXProveedor;
		}
		
		//Panel 2 
		//ETIQUETA : En Autorización
		public function setFiltrarLotesPorProveedorPermisoParaPanelDos($currentProveedor:String):void
		{
			if(_sql!= null){
				var totImporteDolares:Number=0;
				var totProductos:int=0;
				//var numFila:int=0;
				//Para asacar la fecha mas proxima
				var tempFechasPasado:Array;
				var punteroFechaMasProxima:int =-1;
				var fechaPivotePasado:Number;
				
				//["diasFiltro","etiqueta","tipoPermiso","fabrica","codigoProducto","tipoSolicitudPermisoFiltro","tipoProductoFiltro","subTipoFiltro","clasifProductoFiltro","controlProductoFiltro","estadoFisicoFiltro"]);
				
				var _listaLotesXprovArray:Array = new Array();
				if($currentProveedor != null){
					_tituloPanelTiposSolXProveedor = '';
					var punterosXProveedor:Array = _sql.getPunteros([_diaSeleccionado,_etiqueta,_tipoDePermiso,$currentProveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico]);
					var lotesPorProveedor:Array = _sql.getValoresCampo("folioLote",punterosXProveedor);
					
					var itemLotePorProveedor:ReporteDePermisosItemTiposDeSolicitud;
					for (var i:int = 0; i < lotesPorProveedor.length; i++) 
					{
						var currentLote:String = lotesPorProveedor[i];
						if(currentLote != null){
							
							var punterosXLote:Array = _sql.getPunteros([_diaSeleccionado,_etiqueta,_tipoDePermiso,$currentProveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico,currentLote]);
							if(punterosXLote != null){
								itemLotePorProveedor = new ReporteDePermisosItemTiposDeSolicitud();
								//itemLotePorProveedor.numFila = ++numFila;
								itemLotePorProveedor.numProductos = _sql.getValoresCampo("codigoProducto",punterosXLote).length;
								itemLotePorProveedor.importeDlls = _sql.getImporteDeLosCampos("precioUnitario","cantidad",punterosXLote);
								
								if(_diaSeleccionado == "PASADO" || _diaSeleccionado == "FUTURO" || _diaSeleccionado == null){
									tempFechasPasado = new Array();
									
									if( (_sql.universo[punterosXLote[0]] as PermisoImportacion).etiqueta == "En Autorización"){
										tempFechasPasado = _sql.getValoresCampo("fechaEL",punterosXLote);
										punteroFechaMasProxima = punterosXLote[0];
										
										if(tempFechasPasado.length > 1){
											fechaPivotePasado =  (_sql.universo[punterosXLote[0]] as PermisoImportacion).fechaEL.time;
											for (var h:int = 1; h < tempFechasPasado.length; h++) 
											{
												if(fechaPivotePasado > (_sql.universo[punterosXLote[h]] as PermisoImportacion).fechaEL.time){
													fechaPivotePasado = (_sql.universo[punterosXLote[h]] as PermisoImportacion).fechaEL.time;
													punteroFechaMasProxima = punterosXLote[h];
												}
											}
										}
										itemLotePorProveedor.fechaEL =  (_sql.universo[punteroFechaMasProxima] as PermisoImportacion).fechaEL;
										itemLotePorProveedor.fechaELString =  (_sql.universo[punteroFechaMasProxima] as PermisoImportacion).fechaELString;
									}else{ 
										//Es Por someter
										tempFechasPasado = _sql.getValoresCampo("finicio",punterosXLote);
										punteroFechaMasProxima = punterosXLote[0];
										
										if(tempFechasPasado.length > 1){
											fechaPivotePasado =  (_sql.universo[punterosXLote[0]] as PermisoImportacion).finicio.time;
											for (h = 1; h < tempFechasPasado.length; h++) 
											{
												if(fechaPivotePasado > (_sql.universo[punterosXLote[h]] as PermisoImportacion).finicio.time){
													fechaPivotePasado = (_sql.universo[punterosXLote[h]] as PermisoImportacion).finicio.time;
													punteroFechaMasProxima = punterosXLote[h];
												}
											}
										}
										itemLotePorProveedor.fechaInicio =  (_sql.universo[punteroFechaMasProxima] as PermisoImportacion).finicio;
										itemLotePorProveedor.fechaInicioString =  (_sql.universo[punteroFechaMasProxima] as PermisoImportacion).finicioString;
									}
									
								}else{
									if( (_sql.universo[punterosXLote[0]] as PermisoImportacion).etiqueta == "En Autorización"){
										itemLotePorProveedor.fechaEL =  (_sql.universo[punterosXLote[0]] as PermisoImportacion).fechaEL;
										itemLotePorProveedor.fechaELString =  (_sql.universo[punterosXLote[0]] as PermisoImportacion).fechaELString;
									}else{
										//Es Por someter
										itemLotePorProveedor.fechaInicio =  (_sql.universo[punterosXLote[0]] as PermisoImportacion).finicio;
										itemLotePorProveedor.fechaInicioString =  (_sql.universo[punterosXLote[0]] as PermisoImportacion).finicioString;
									}
								}
								
								itemLotePorProveedor.tipoSolicitud = (_sql.universo[punterosXLote[0]] as PermisoImportacion).tipoSolicitudPermiso;
								itemLotePorProveedor.tipoSolicitudFiltro = (_sql.universo[punterosXLote[0]] as PermisoImportacion).tipoSolicitudPermisoFiltro; 
								itemLotePorProveedor.proveedor = $currentProveedor;
								itemLotePorProveedor.etiqueta = (_sql.universo[punterosXLote[0]] as PermisoImportacion).etiqueta;
								itemLotePorProveedor.folioLote = (_sql.universo[punterosXLote[0]] as PermisoImportacion).folioLote;
								_listaLotesXprovArray.push(itemLotePorProveedor);
								totProductos += itemLotePorProveedor.numProductos;
								totImporteDolares += itemLotePorProveedor.importeDlls;
							}
						}
					}
				}
				
				//Ordenar por fecha
				if(_etiqueta == "En Autorización" && _listaLotesXprovArray.length > 1)
					_listaLotesXprovArray.sort(ordenarFechasEL);
				else if(_etiqueta == "Por Someter" && _listaLotesXprovArray.length > 1)
					_listaLotesXprovArray.sort(ordenarFechasInicio);
				
				for (var j:int = 0; j < _listaLotesXprovArray.length; j++) 
				{
					(_listaLotesXprovArray[j] as ReporteDePermisosItemTiposDeSolicitud).numFila = j+1; 
				}
				_listaLotesXProveedor = new ArrayCollection(_listaLotesXprovArray);
				
				var ultimoItemTipoSolicitud:ReporteDePermisosItemTiposDeSolicitud = new ReporteDePermisosItemTiposDeSolicitud();
				ultimoItemTipoSolicitud.isUltimo = true;
				ultimoItemTipoSolicitud.totProductos = totProductos;
				ultimoItemTipoSolicitud.totImporteDlls = totImporteDolares;
				ultimoItemTipoSolicitud.etiqueta = _etiqueta;
				ultimoItemTipoSolicitud.totFolios = lotesPorProveedor==null ? 0 :lotesPorProveedor.length;
				_listaLotesXProveedor.addItem(ultimoItemTipoSolicitud);
				if($currentProveedor != null)
					_tituloPanelTiposSolXProveedor = $currentProveedor;
				else
					_tituloPanelTiposSolXProveedor = '';
				dispatchEvent(new Event("regresarLotesPorProveedorPermisoModeloReporteDePermisos"));
				dispatchEvent(new Event("setearTituloPanelSolicitudesPorProveedorModeloReporteDePermisos"));
			}
		}
		
		[Bindable(event="regresarLotesPorProveedorPermisoModeloReporteDePermisos")]
		public function get getLotesPorProveedor():ArrayCollection{
			return  _listaLotesXProveedor;
		}
		
		private function ordenarFechasEL(a:ReporteDePermisosItemTiposDeSolicitud, b:ReporteDePermisosItemTiposDeSolicitud):int
		{
			if(a.fechaEL.time < b.fechaEL.time)
				return -1;
			else if(a.fechaEL.time == b.fechaEL.time)
				return 0;
			else
				return 1;
		}
		private function ordenarFechasET(a:ReporteDePermisosItemTiposDeSolicitud, b:ReporteDePermisosItemTiposDeSolicitud):int
		{
			if(a.fechaET.time < b.fechaET.time)
				return -1;
			else if(a.fechaET.time == b.fechaET.time)
				return 0;
			else
				return 1;
		}
		
		private function ordenarFechasInicio(a:ReporteDePermisosItemTiposDeSolicitud, b:ReporteDePermisosItemTiposDeSolicitud):int
		{
			if(a.fechaInicio.time < b.fechaInicio.time)
				return -1;
			else if(a.fechaInicio.time == b.fechaInicio.time)
				return 0;
			else
				return 1;
		}
		
		
		//Panel 3 
		// ETIQUETA: A Tramitar
		public function resultSetFiltrarProductosParaPanelTres($currentTipoSolicitud:String,$currentProveedor:String):void
		{
			
			if(_sql!= null){
				var totImporteDolares:Number=0;
				var totPiezas:int=0;
				var numFila:int=0;
				_listaProductosXSolicidtud = new ArrayCollection();
				
				//["diasFiltro","etiqueta","tipoPermiso","fabrica","codigoProducto","tipoSolicitudPermisoFiltro","tipoProductoFiltro","subTipoFiltro","clasifProductoFiltro","controlProductoFiltro","estadoFisicoFiltro"]);
				if($currentTipoSolicitud != null){
					_tituloPanelProductosPorSolicitud = '';
					var punterosXProductos:Array = _sql.getPunteros([_diaSeleccionado,_etiqueta,_tipoDePermiso,$currentProveedor,_catalogo,$currentTipoSolicitud,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico]);
					var productos:Array = _sql.getValoresCampo("codigoProducto",punterosXProductos);
					
					var productosItem:ReporteDePermisosItemProductos;
					for (var i:int = 0; i < productos.length; i++) 
					{
						var currentProducto:String = productos[i];
						var punterosXProducto:Array = _sql.getPunteros([_diaSeleccionado,_etiqueta,_tipoDePermiso,$currentProveedor,currentProducto,$currentTipoSolicitud,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico]);
						if(punterosXProducto != null){
							productosItem = new ReporteDePermisosItemProductos();
							productosItem.numFila = ++numFila;
							productosItem.numPiezas =(_sql.universo[punterosXProducto[0]] as PermisoImportacion).cantidad;
							productosItem.importeDlls = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).precioUnitario * productosItem.numPiezas;
							productosItem.fechaET =  (_sql.universo[punterosXProducto[0]] as PermisoImportacion).fechaET;
							productosItem.fechaETString = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).fechaETString;
							productosItem.nombreProducto = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).nombreProducto;
							productosItem.precioU = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).precioUnitario;
							productosItem.origen = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).origen;
							productosItem.tipoPermiso = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).tipoPermiso.toUpperCase();
							productosItem.tipoProducto = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).tipoProducto;
							productosItem.subtipoProducto = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).subTipo;
							productosItem.estadoFisico = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).estadoFisico;
							productosItem.clasificacionProducto = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).clasificacionProducto;
							productosItem.idSolicitud = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).idSolicitud;
							productosItem.etiqueta = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).etiqueta;
							productosItem.estadoPermiso = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).estadoPermiso;
							_listaProductosXSolicidtud.addItem(productosItem);
							totPiezas += productosItem.numPiezas;
							totImporteDolares += productosItem.importeDlls;
						}
					}
				}
				
				var ultimoItemProductos:ReporteDePermisosItemProductos = new ReporteDePermisosItemProductos();
				ultimoItemProductos.isUltimo = true;
				ultimoItemProductos.totPiezas = totPiezas;
				ultimoItemProductos.totImporteDlls = totImporteDolares;
				ultimoItemProductos.etiqueta = _etiqueta;
				ultimoItemProductos.totProductos = productos == null ? 0:productos.length;
				_listaProductosXSolicidtud.addItem(ultimoItemProductos);
				
				_tituloPanelProductosPorSolicitud = $currentTipoSolicitud;
				dispatchEvent(new Event("regresarListaProductosXSolicitudModeloReportePermisos"));
				dispatchEvent(new Event("setearTituloProductosXSolicitudModeloReportePermisos"));
			}
		}
		[Bindable(event="regresarListaProductosXSolicitudModeloReportePermisos")]
		public function get getRegresarProductosPorProductos():ArrayCollection{
			return  _listaProductosXSolicidtud;
		}
		[Bindable(event="setearTituloProductosXSolicitudModeloReportePermisos")]
		public function get getTituloPanelProductosXSolicitud():String{
			return _tituloPanelProductosPorSolicitud;
		}
		
		//Panel 3 
		// ETIQUETA: En Autorización
		public function resultSetFiltrarProductosPorLoteParaPanelTres($currentLotePermiso:String, $filtrarPorEnfoque:Boolean):void
		{
			_filtrarPorEnfoque = $filtrarPorEnfoque;
			if(_sql!= null){
				var totImporteDolares:Number=0;
				var totPiezas:int=0;
				var numFila:int=0;
				_listaProductosXLote = new ArrayCollection();
				
				
				//["diasFiltro","etiqueta","tipoPermiso","fabrica","codigoProducto","tipoSolicitudPermisoFiltro","tipoProductoFiltro","subTipoFiltro","clasifProductoFiltro","controlProductoFiltro","estadoFisicoFiltro"]);
				if($currentLotePermiso != null){
					_tituloPanelProductosPorSolicitud = '';
					var punterosXLote:Array;
					
					if(_filtrarPorEnfoque)
						punterosXLote = _sql.getPunteros([_diaSeleccionado,_etiqueta,_tipoDePermiso,_proveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico,$currentLotePermiso]);
					else
						punterosXLote = _sql.getPunteros([null,_etiqueta,_tipoDePermiso,_proveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico,$currentLotePermiso]);
					
					var productos:Array = _sql.getValoresCampo("codigoProducto",punterosXLote);
					
					var productosItem:ReporteDePermisosItemProductos;
					for (var i:int = 0; i < productos.length; i++) 
					{
						var omitidos:int=0;
						var currentProducto:String = productos[i];
						var punterosXProducto:Array;
						if(_filtrarPorEnfoque)
							punterosXProducto = _sql.getPunteros([_diaSeleccionado,_etiqueta,_tipoDePermiso,_proveedor,currentProducto,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico,$currentLotePermiso]);
						else
							punterosXProducto = _sql.getPunteros([null,_etiqueta,_tipoDePermiso,_proveedor,currentProducto,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico,$currentLotePermiso]);
						
						if(punterosXProducto != null){
							productosItem = new ReporteDePermisosItemProductos();
							productosItem.numFila = ++numFila;
							productosItem.numPiezas =(_sql.universo[punterosXProducto[0]] as PermisoImportacion).cantidad;
							productosItem.importeDlls = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).precioUnitario * productosItem.numPiezas;
							
							if((_sql.universo[punterosXProducto[0]] as PermisoImportacion).etiqueta == "En Autorización"){
								productosItem.fechaEL =  (_sql.universo[punterosXProducto[0]] as PermisoImportacion).fechaEL;
								productosItem.fechaELString = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).fechaELString;
							}else{
								productosItem.fechaInicio =  (_sql.universo[punterosXProducto[0]] as PermisoImportacion).finicio;
								productosItem.fechaInicioString = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).finicioString;
							}
							
							productosItem.nombreProducto = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).nombreProducto;
							productosItem.precioU = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).precioUnitario;
							productosItem.origen = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).origen;
							productosItem.tipoPermiso = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).tipoPermiso.toUpperCase();
							productosItem.tipoProducto = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).tipoProducto;
							productosItem.subtipoProducto = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).subTipo;
							productosItem.estadoFisico = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).estadoFisico;
							productosItem.clasificacionProducto = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).clasificacionProducto;
							productosItem.idSolicitud = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).idSolicitud;
							productosItem.folioSolicitud = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).folioSolicitud;
							productosItem.etiqueta = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).etiqueta;
							productosItem.estadoPermiso = (_sql.universo[punterosXProducto[0]] as PermisoImportacion).estadoPermiso;
							
							//Para el Enfoque
							if(_diaSeleccionado == (_sql.universo[punterosXProducto[0]] as PermisoImportacion).diasFiltro){
								productosItem.isConEnfoque = true;
							}else if(_diaSeleccionado == null){
								productosItem.isConEnfoque = true;
							}
							
							_listaProductosXLote.addItem(productosItem);
							totPiezas += productosItem.numPiezas;
							totImporteDolares += productosItem.importeDlls;
						}
					}
				}
				
				//Poner los enfocados al principio
				var arrayTemp:Array = _listaProductosXLote.source;
				var conEnfoque:Array = arrayTemp.filter(obtenerEnfocados);
				var sinEnfoque:Array = arrayTemp.filter(obtenerSinEnfoque);
				
				_listaProductosXLote = new ArrayCollection();
				if(conEnfoque.length == 1){
					(conEnfoque[0] as ReporteDePermisosItemProductos).isIniEnfoque = true;
					(conEnfoque[0] as ReporteDePermisosItemProductos).isFinEnfoque = true;
					if(sinEnfoque != null && sinEnfoque.length > 0 ){
						sinEnfoque.unshift(conEnfoque[0]);
						_listaProductosXLote.source = sinEnfoque;
					}else{
						_listaProductosXLote.source = conEnfoque;
					}
				}else{
					for (var j:int = conEnfoque.length - 1; j >= 0 ; j--) 
					{
						if(j == 0)
							(conEnfoque[j] as ReporteDePermisosItemProductos).isIniEnfoque = true;
						else if(j == conEnfoque.length -1){
							(conEnfoque[j] as ReporteDePermisosItemProductos).isFinEnfoque = true;
						}
						if(sinEnfoque != null && sinEnfoque.length > 0 ){
							sinEnfoque.unshift(conEnfoque[j]);
						}
					}
					
					_listaProductosXLote = new ArrayCollection();
					if(sinEnfoque != null && sinEnfoque.length > 0){
						_listaProductosXLote.source = sinEnfoque;
					}else{
						_listaProductosXLote.source = conEnfoque;
					}
				}
				
				//Liberando Memoria
				arrayTemp = new Array();
				conEnfoque = new Array();
				sinEnfoque = new Array();
				
				var ultimoItemProductos:ReporteDePermisosItemProductos = new ReporteDePermisosItemProductos();
				ultimoItemProductos.isUltimo = true;
				ultimoItemProductos.totPiezas = totPiezas;
				ultimoItemProductos.totImporteDlls = totImporteDolares;
				ultimoItemProductos.etiqueta = _etiqueta;
				ultimoItemProductos.totProductos = productos == null ? 0:productos.length;
				_listaProductosXLote.addItem(ultimoItemProductos);
				
				_tituloPanelProductosPorSolicitud = $currentLotePermiso;
				dispatchEvent(new Event("regresarListaProductosXLoteModeloReportePermisos"));
				dispatchEvent(new Event("setearTituloProductosXSolicitudModeloReportePermisos"));
				dispatchEvent(new Event("setearFiltroPorEnfoqueModeloReportePermisos"));
			}
		}
		[Bindable(event="regresarListaProductosXLoteModeloReportePermisos")]
		public function get getRegresarProductosPorLote():ArrayCollection{
			return  _listaProductosXLote;
		}
		[Bindable(event="setearFiltroPorEnfoqueModeloReportePermisos")]
		public function get resultGetFiltroParaProductosPorLote():Boolean{
			return  _filtrarPorEnfoque;
		}
		private function obtenerEnfocados(item:ReporteDePermisosItemProductos, id:uint, array:Array):Boolean
		{
			return item.isConEnfoque;
		}
		
		private function obtenerSinEnfoque(item:ReporteDePermisosItemProductos, id:uint, array:Array):Boolean
		{
			return !item.isConEnfoque;
		}
		
		//Panel 4 INFO Producto - Permiso
		private var _informeProducto:PermisoImportacion;
		public function resultSetObtenerInformeProducto($idSolicitud:String):void
		{
			_informeProducto = new PermisoImportacion();
			if($idSolicitud != null){
				var punteroInfoProducto:Array = _sql.getPunteros([null,_etiqueta,_tipoDePermiso,_proveedor,_catalogo,_tipoSolicitudPermiso,_tipoDeProducto,_subTipoProducto,_clasificacion,_control,_estadoFisico,null,$idSolicitud]);
				_informeProducto = _sql.universo[punteroInfoProducto[0]];
			}else{
				_informeProducto.codigoProducto = null;
			}
			
			dispatchEvent(new Event("regresarInfoPartidaBusquedaProductoModeloReporteDePermisos"));
		}
		[Bindable(event="regresarInfoPartidaBusquedaProductoModeloReporteDePermisos")]
		public function get resultGetRegresarInformeProducto():PermisoImportacion
		{
			return _informeProducto;
		}
		
		private var _isVistaRapida:Boolean = false;
		public function resultSetSettearFiltrosParaBusqudeda($diaSeleccionado:String,$etiqueta:String,$tipoDePermiso:String,$proveedor:String,$catalogo:String,$tipoSolicitudPermiso:String,$tipoDeProducto:String,$subTipoProducto:String,$clasificacion:String,$control:String,$estadoFisico:String,$currentVista:String,$isBusquedaAvanzada:Boolean):void
		{
			//Filtros Combos
			_proveedor = StringUtil.trim($proveedor).length==0 || $proveedor == "--TODOS--" ? null:$proveedor;
			_catalogo = StringUtil.trim($catalogo).length==0 || $catalogo == "--TODOS--" ? null:$catalogo;
			_tipoSolicitudPermiso = StringUtil.trim($tipoSolicitudPermiso).length==0 || $tipoSolicitudPermiso == "--TODOS--" ? null:$tipoSolicitudPermiso;
			_tipoDeProducto = StringUtil.trim($tipoDeProducto).length==0 || $tipoDeProducto == "--TODOS--" ? null:$tipoDeProducto;
			_subTipoProducto = StringUtil.trim($subTipoProducto).length==0 || $subTipoProducto == "--TODOS--" ? null:$subTipoProducto;
			_clasificacion = StringUtil.trim($clasificacion).length==0 || $clasificacion == "--TODOS--" ? null:$clasificacion;
			_control = StringUtil.trim($control).length==0 || $control == "--TODOS--" ? null:$control;
			_estadoFisico = StringUtil.trim($estadoFisico).length==0 || $estadoFisico == "--TODOS--" ? null:$estadoFisico;
			
			
			//Otros Filtros, por ejemplo botonera AHYM, 
			if(StringUtil.trim($diaSeleccionado).length==0 || $diaSeleccionado == "TODO"){
				_diaSeleccionado =  null;
			}else{
				if($diaSeleccionado == "MAÑANA"){
					_diaSeleccionado = "MANANA";
				}else if($diaSeleccionado == "PASADO MAÑANA"){
					_diaSeleccionado = "PASADO MANANA";
				}else{
					_diaSeleccionado = $diaSeleccionado;
				}
			}
			_etiqueta =  StringUtil.trim($etiqueta).length!=0 && $etiqueta != null ?$etiqueta:_etiqueta;
			_tipoDePermiso =  StringUtil.trim($tipoDePermiso).length!=0 && $tipoDePermiso != null ?$tipoDePermiso:_tipoDePermiso;
			_currentVista =  StringUtil.trim($currentVista).length!=0 && $currentVista != null ?$currentVista:_currentVista;
			
			if(!$isBusquedaAvanzada){
				_etiqueta = null;
				_listaProveedores = new ArrayCollection();
				
				var ultimoItemProveedores:ReporteDePermisosItemProveedores = new ReporteDePermisosItemProveedores();
				ultimoItemProveedores.isUltimo = true;
				ultimoItemProveedores.totProveedores = 0;
				ultimoItemProveedores.totImporteDlls = 0;
				ultimoItemProveedores.totProductos =0;
				_objLabels.currentTitulo = '';
				_listaProveedores.addItem(ultimoItemProveedores);
				
				dispatchEvent(new Event("regresarListaProveedoresModeloReporteDePermisos"));
				dispatchEvent(new Event("setearTituloPanelProveedoresModeloReporteDePermisos"));
			}
			_isVistaRapida = !$isBusquedaAvanzada;
			dispatchEvent( new Event("settearSiEstaEnBusquedaRapidaModeloReporteDePermisos"));
		}
		
		[Bindable(event="settearSiEstaEnBusquedaRapidaModeloReporteDePermisos")]
		public function get settearSiSeEstaEnBusquedaRapida():Boolean
		{
			return _isVistaRapida;
		}
		
		private var _listaHistorialSolicitud:ArrayCollection;
		public function resulSetHistorialPerImportacion($historialolicitud:ArrayCollection):void
		{
			_listaHistorialSolicitud = new ArrayCollection();
			if($historialolicitud.length >0){
				var tempArray:Array = new Array();
				_listaHistorialSolicitud = new ArrayCollection();
				var currentItem:ReporteDePermisosItemHistorialSolicitud;
				for (var i:int = 0; i < $historialolicitud.length; i++) 
				{
					currentItem = new ReporteDePermisosItemHistorialSolicitud();
					currentItem.numFila = i + 1;
					currentItem.fecha = ($historialolicitud[i] as PermisoImportacion).fechaET;					
					currentItem.nuevaFechaEL = ($historialolicitud[i] as PermisoImportacion).fechaEL;
					currentItem.nuevaFechaELString = ($historialolicitud[i] as PermisoImportacion).fechaELString;
					currentItem.documento = ($historialolicitud[i] as PermisoImportacion).folioLote;
					currentItem.justificacion = ($historialolicitud[i] as PermisoImportacion).justificacion;
					tempArray.unshift(currentItem);
				}
				_listaHistorialSolicitud = new ArrayCollection(tempArray);
			}
			dispatchEvent(new Event("regresarListaDeHistorialMonitoreoSolicitudModeloReporteDePermisos"));
		}
		
		[Bindable(event="regresarListaDeHistorialMonitoreoSolicitudModeloReporteDePermisos")]
		public function get regresarListaDeMonitoreoSolicitud():ArrayCollection
		{
			return _listaHistorialSolicitud;
		}
		
		[Bindable(event='regresaGraficaProveedorModeloReporteDePermisos')]
		public function get graficaProveedores():ArrayCollection
		{
			return  _graficaProveedores;
		}
		[Bindable(event='regresaGraficaTipoSoliPermisoModeloReporteDePermisos')]
		public function get graficaTipoSoliPermiso():ArrayCollection
		{
			return  _graficaTipoSoliPermiso;
		}
		[Bindable(event='regresaGraficaTipoProductoModeloReporteDePermisos')]
		public function get graficaTipoProducto():ArrayCollection
		{
			return  _graficaTipoProducto;
		}
		[Bindable(event='regresaGraficaSubTipoProductoModeloReporteDePermisos')]
		public function get graficaSubTipoProducto():ArrayCollection
		{
			return  _graficaSubTipoProducto;
		}
		[Bindable(event='regresaGraficaMarcaModeloReporteDePermisos')]
		public function get graficaMarca():ArrayCollection
		{
			return  _graficaMarca;
		}
		[Bindable(event='regresaGraficaClasificacionModeloReporteDePermisos')]
		public function get graficaClasificacion():ArrayCollection
		{
			return  _graficaClasificacion;
		}
		[Bindable(event='regresaGraficaControlModeloReporteDePermisos')]
		public function get graficaControl():ArrayCollection
		{
			return  _graficaControl;
		}
		[Bindable(event='regresaGraficaEstadoFisicoModeloReporteDePermisos')]
		public function get graficaEstadoFisico():ArrayCollection
		{
			return  _graficaEstadoFisico;
		}
		
		public function faultObtenerPermisosImportacion(fault:Object):void{
			trace(fault.toString());
		}
		
	}
}