package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.ventas.reporteConfirmacion
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.ReporteConfirmacionDeDatos;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.utils.ObjectUtil;
	import mx.utils.StringUtil;
	
	import spark.collections.SortField;
	
	public class ModeloReporteConfirmacionDeDatos extends EventDispatcher
	{
		public function ModeloReporteConfirmacionDeDatos (target:IEventDispatcher= null)
		{
			super(target);		
		}
		
		private var clase:ReporteConfirmacionDeDatos;
		private var _sql:Query;
		private var _cotizacinesPharma:ArrayCollection;
		private var _tipoProveedor:String;
		private var _proveedor:String;
		private var _esac:String;
		private var _ev:String;
		private var _cliente:String;
		private var _tipoProducto:String;
		private var _fabrica:String;
		private var _diaSeleccionado:String='HOY';
		private var _listaClientes:ArrayCollection;
		private var _listaCotizasXCliente:ArrayCollection;
		private var _listaPartidasXCotizacion:ArrayCollection;
		private var _infoPartidaBusquedaProd:ReporteConfirmacionDeDatos;
		private var _objLabels:Object;
		private var _tituloPanelCotizasXCliente:String;
		private var _tituloPanelPartidasXCotizacion:String;
		private var _filtrarPorEnfoque:Boolean=false;
		private var _currentVista:String = "tabla";
		private var _arrEtiquetaDia:Array= ["Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado"];
		private var _isBusquedaAvanzada:Boolean = true;
		
		//Arrays Para las Gráficas
		private var _pieNivelIngreso:ArrayCollection;
		private var _pieClientes:ArrayCollection;
		private var _pieEsac:ArrayCollection;
		private var _pieEv:ArrayCollection;
		private var _pieTipoProveedor:ArrayCollection;
		private var _pieProveedor:ArrayCollection;
		private var _pieTipoProducto:ArrayCollection;
		private var _pieMarca:ArrayCollection;
		
		public function resultSetCotizacionEnPharma($cotizasPharma:ArrayCollection):void
		{
			if($cotizasPharma == null)
				return;
			
			_sql = new Query($cotizasPharma,["nombreProveedor","tipoProveedor","estadoPharma","diasFiltro","fechaInvestigaString","folioCotizacion","esac","nombreCliente","fabrica","tipoProducto","idPCotPharma","ev","nivelIngreso"]);
			
			if(_sql!= null){
				filtrarConfirmacionDeDatos(_tipoProveedor,_proveedor,_cliente,_tipoProducto,_fabrica,_diaSeleccionado,_esac,_ev,_currentVista);
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
						cachoPie.total = _sql.getSumarCampo( "importeDolares", punterosFiltro); //, "folioCotizacion" );
						cachoPie.cotizacionesTotal = _sql.getPunteros( consultaReformulada, "folioCotizacion" ).length;
						cachoPie.partidas = _sql.getPunteros( consultaReformulada ).length;
						cachoPie.clientes = _sql.getPunteros( consultaReformulada, "nombreCliente" ).length;
						cachoPie.piezasTotal = _sql.getSumarCampo( "piezas", punterosFiltro); //, "folioCotizacion"  );
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
		
		public function filtrarConfirmacionDeDatos($tipoDeProveedor:String,$proveedor:String,$cliente:String,$tipoProducto:String,$fabrica:String,$diaSeleccionado:String,$esac:String,$ev:String,$vistaSelected:String):void
		{
			_tipoProveedor = StringUtil.trim($tipoDeProveedor).length==0 || $tipoDeProveedor == "--TODOS--" ? null:$tipoDeProveedor;
			_proveedor = StringUtil.trim($proveedor).length==0 || $proveedor == "--TODOS--" ? null:$proveedor;
			_esac = StringUtil.trim($esac).length==0 || $esac == "--TODOS--" ? null:$esac;
			_ev = StringUtil.trim($ev).length==0 || $ev == "--TODOS--" ? null:$ev;
			_cliente = StringUtil.trim($cliente).length==0 || $cliente == "--TODOS--" ? null:$cliente;
			_tipoProducto = StringUtil.trim($tipoProducto).length==0 || $tipoProducto == "--TODOS--" ? null:$tipoProducto;
			_fabrica = StringUtil.trim($fabrica).length==0 || $fabrica == "--TODOS--" ? null:$fabrica;
			_diaSeleccionado = StringUtil.trim($diaSeleccionado).length==0 || $diaSeleccionado == "TODO" ? null:$diaSeleccionado;
			
			_currentVista =  StringUtil.trim($vistaSelected).length!=0 && $vistaSelected != null ?$vistaSelected:_currentVista;
			
			
			if(_sql!= null){
				
				if(_currentVista == "grafica"){
					_pieNivelIngreso = generateChartReporte( "nivelIngreso", null, [ _proveedor, _tipoProveedor, "En Pharma",_diaSeleccionado,null,null,_esac,_cliente,_fabrica,_tipoProducto,null,_ev, "nivelIngreso"] );
					_pieClientes = generateChartReporte( "nombreCliente", _cliente, [ _proveedor, _tipoProveedor, "En Pharma",_diaSeleccionado,null,null,_esac,"nombreCliente",_fabrica,_tipoProducto,null,_ev, null] );
					_pieEsac = generateChartReporte( "esac", _esac, [ _proveedor, _tipoProveedor, "En Pharma",_diaSeleccionado,null,null,"esac",_cliente,_fabrica,_tipoProducto,null,_ev, null] );
					_pieEv = generateChartReporte( "ev", _ev, [ _proveedor, _tipoProveedor, "En Pharma",_diaSeleccionado,null,null,_esac,_cliente,_fabrica,_tipoProducto,null,"ev", null] );
					_pieTipoProveedor = generateChartReporte( "tipoProveedor", _tipoProveedor, [ _proveedor, "tipoProveedor", "En Pharma",_diaSeleccionado,null,null,_esac,_cliente,_fabrica,_tipoProducto,null,_ev, null] );
					_pieProveedor = generateChartReporte( "nombreProveedor", _proveedor, [ "nombreProveedor", _tipoProveedor, "En Pharma",_diaSeleccionado,null,null,_esac,_cliente,_fabrica,_tipoProducto,null,_ev, null] );
					_pieTipoProducto= generateChartReporte( "tipoProducto", _tipoProducto, [ _proveedor, _tipoProveedor, "En Pharma",_diaSeleccionado,null,null,_esac,_cliente,_fabrica,"tipoProducto",null,_ev, null] );
					_pieMarca= generateChartReporte( "fabrica", _fabrica, [ _proveedor, _tipoProveedor, "En Pharma",_diaSeleccionado,null,null,_esac,_cliente,"fabrica",_tipoProducto,null,_ev, null] );
					
					
					dispatchEvent( new Event("regresaGraficaNivelIngresoModeloConfirmacionDeDatos") );
					dispatchEvent( new Event("regresaGraficaClienteModeloConfirmacionDeDatos") );
					dispatchEvent( new Event("regresaGraficaEsacModeloConfirmacionDeDatos") );
					dispatchEvent( new Event("regresaGraficaEvModeloConfirmacionDeDatos") );
					dispatchEvent( new Event("regresaGraficaTipoProveedorModeloConfirmacionDeDatos") );
					dispatchEvent( new Event("regresaGraficaProveedorModeloConfirmacionDeDatos") );
					dispatchEvent( new Event("regresaGraficaTipoProductoModeloConfirmacionDeDatos") );
					dispatchEvent( new Event("regresaGraficaMarcaModeloConfirmacionDeDatos") );
					
				}else{
					_listaClientes = new ArrayCollection();
					var partidasEnPharma:Array = _sql.getPunteros([null,null,"En Pharma"]);
					
					//var listaPartidasPharma:ArrayCollection = _sql.armarLista(partidasEnPharma);
					var nombresClientes:Array = _cliente == null ? _sql.getValoresCampo("nombreCliente",partidasEnPharma):[_cliente];
					var totImporteDolares:Number=0;
					var totPiezas:int=0;
					var numFila:int=0;
					var itemClientes:ConfirmacionDeDatosItemClientes;
					for (var i:uint;i<nombresClientes.length; i++) 
					{
						var currentCliente:String
						if(nombresClientes[i] != "null"){
							currentCliente = nombresClientes[i];
							//"nombreProveedor","tipoProveedor","estadoPharma","diasFiltro","fechaInvestiga","$folioCotizacion","esac","nombreCliente","fabrica","tipoProducto"
							var punterosXCliente:Array = _sql.getPunteros([_proveedor,_tipoProveedor,"En Pharma",_diaSeleccionado,null,null,_esac,currentCliente,_fabrica,_tipoProducto,null,_ev]);
							if(punterosXCliente.length>0){
								numFila++;
								itemClientes = new ConfirmacionDeDatosItemClientes();
								itemClientes.numFila = numFila;
								itemClientes.nombreCliente = currentCliente;
								itemClientes.numCotizaciones = _sql.getValoresCampo("folioCotizacion",punterosXCliente).length;
								itemClientes.numPiezas = _sql.getSumarCampo("piezas",punterosXCliente);
								itemClientes.importeDlls = _sql.getSumarCampo("importeDolares",punterosXCliente);
								itemClientes.fechaInvestigacionString = (_sql.universo[punterosXCliente[0]] as ReporteConfirmacionDeDatos).fechaInvestigaString;
								itemClientes.fechaInvestigacion =  (_sql.universo[punterosXCliente[0]] as ReporteConfirmacionDeDatos).fechaInvestiga;
								itemClientes.esac =(_sql.universo[ punterosXCliente[0] ] as ReporteConfirmacionDeDatos).esacVista;
								itemClientes.ev = (_sql.universo[ punterosXCliente[0] ] as ReporteConfirmacionDeDatos).evVista;
								_listaClientes.addItem(itemClientes);
								totImporteDolares += itemClientes.importeDlls;
								totPiezas  += itemClientes.numPiezas;
							}
						}
					}
				}
				
				/**
				 * Realizar Conteo para mostrar en el menú, los totales de cada día
				 * */
				_objLabels = new Object();
				var diasFiltro:Array = [ "MAÑANA", "HOY", "AYER", "ANTIER", "ANTE ANTIER", "PASADO"];
				var totalPartidas:int = 0;
				for (var j:int = 0; j < diasFiltro.length; j++) 
				{
					var punterosXdia:Array = _sql.getPunteros([_proveedor,_tipoProveedor,"En Pharma",diasFiltro[j],null,null,_esac,_cliente,_fabrica,_tipoProducto,null,_ev]);
					_objLabels[ diasFiltro[j] ] = String(punterosXdia.length);
					totalPartidas+= punterosXdia.length;
				}
				var hoy:Date = new Date();
				var maniana:Date = UtilsFecha.regresaFechaRespectoAOtra(hoy,"MAÑANA");
				var ayer:Date = UtilsFecha.regresaFechaRespectoAOtra(hoy,"AYER");
				_objLabels.etiquetaHoy = _arrEtiquetaDia[hoy.day] +' '+ hoy.date;
				_objLabels.etiquetaManiana = _arrEtiquetaDia[maniana.day] +' '+ maniana.date;
				_objLabels.etiquetaAyer = _arrEtiquetaDia[ayer.day] +' '+ ayer.date;
				_objLabels.todasPartidas = totalPartidas;
				
				switch(_diaSeleccionado){
					case "HOY":
						_objLabels.currentTitulo = _diaSeleccionado +' / '+_objLabels.etiquetaHoy;
						break;
					case "AYER":
						_objLabels.currentTitulo = _diaSeleccionado +' / '+_objLabels.etiquetaAyer;
						break;
					case "MAÑANA":
						_objLabels.currentTitulo = _diaSeleccionado +' / '+_objLabels.etiquetaManiana;
						break;
					default:
						_objLabels.currentTitulo = _diaSeleccionado;
						break;
				}
				if(_isBusquedaAvanzada){
					if(_objLabels.currentTitulo == null) _objLabels.currentTitulo ="TODO";
				}else{
					_objLabels.currentTitulo ='';
				}
				var ultimoItemClientes:ConfirmacionDeDatosItemClientes = new ConfirmacionDeDatosItemClientes();
				ultimoItemClientes.isUltimo = true;
				ultimoItemClientes.totClientes = _listaClientes.length;
				ultimoItemClientes.totImporteDlls = totImporteDolares;
				ultimoItemClientes.totPiezas = totPiezas;
				ultimoItemClientes.panelTitulo = _objLabels.currentTitulo;
				_listaClientes.addItem(ultimoItemClientes);
				
				dispatchEvent(new Event("regresarListaClientesModeloConfirmacionDeDatos"));
				dispatchEvent(new Event("setearTituloPanelCotEnPharmaModeloConfirmacionDeDatos"));
				dispatchEvent( new Event("regresaLabelsModeloConfirmacionDeDatos"));
			}
		}
		
		[Bindable(event="regresarListaClientesModeloConfirmacionDeDatos")]
		public function get resultGetCotizacionEnPharma():ArrayCollection{
			return _listaClientes;
		}
		[Bindable(event="setearTituloPanelCotEnPharmaModeloConfirmacionDeDatos")]
		public function get resultGetTituloPanelCotEnPharma():String{
			return _objLabels.currentTitulo;
		}
		[Bindable(event="regresaLabelsModeloConfirmacionDeDatos")]
		public function get resultGetObjLabels():Object{
			return  _objLabels;
		}
		
		//Panel 2
		public function resultSetFiltrarClienteParaPanelDos($nombreCliente:String):void
		{
			if(_sql!= null){
				var totImporteDolares:Number=0;
				var totPiezas:int=0;
				var numFila:int=0;
				
				_listaCotizasXCliente = new ArrayCollection();
				if($nombreCliente != null){
					_tituloPanelCotizasXCliente = '';
					var punterosXcliente:Array = _sql.getPunteros([_proveedor,_tipoProveedor,"En Pharma",_diaSeleccionado,null,null,_esac,$nombreCliente,_fabrica,_tipoProducto,null,_ev]);
					var cotizaciones:Array = _sql.getValoresCampo("folioCotizacion",punterosXcliente);
					
					var cotizacionesItem:ConfirmacionDeDatosCotizaXCliente;
					for (var i:int = 0; i < cotizaciones.length; i++) 
					{
						var currentCotiza:String = cotizaciones[i];
						var punterosXCotiza:Array = _sql.getPunteros([_proveedor,_tipoProveedor,"En Pharma",_diaSeleccionado,null,currentCotiza,_esac,$nombreCliente,_fabrica,_tipoProducto,null,_ev]);
						if(punterosXCotiza != null){
							cotizacionesItem = new ConfirmacionDeDatosCotizaXCliente();
							cotizacionesItem.numFila = ++numFila;
							cotizacionesItem.numPiezas = _sql.getSumarCampo("piezas",punterosXCotiza);
							cotizacionesItem.importeDlls = _sql.getSumarCampo("importeDolares",punterosXCotiza);
							cotizacionesItem.folioCotizacion =(_sql.universo[ punterosXCotiza[0] ] as ReporteConfirmacionDeDatos).folioCotizacion;
							cotizacionesItem.fechaInvestigacionString = (_sql.universo[punterosXCotiza[0]] as ReporteConfirmacionDeDatos).fechaInvestigaString;
							cotizacionesItem.fechaRegistroString = (_sql.universo[punterosXCotiza[0]] as ReporteConfirmacionDeDatos).fechaRegistroString;
							_listaCotizasXCliente.addItem(cotizacionesItem);
							totPiezas += cotizacionesItem.numPiezas;
							totImporteDolares += cotizacionesItem.importeDlls;
						}
					}
				}
				
				var ultimoItemCotizaciones:ConfirmacionDeDatosCotizaXCliente = new ConfirmacionDeDatosCotizaXCliente();
				ultimoItemCotizaciones.isUltimo = true;
				ultimoItemCotizaciones.totPiezas = totPiezas;
				ultimoItemCotizaciones.totImporteDlls = totImporteDolares;
				ultimoItemCotizaciones.totCotizaciones = cotizaciones==null ? 0 :cotizaciones.length;
				_listaCotizasXCliente.addItem(ultimoItemCotizaciones);
				if($nombreCliente != null)
					_tituloPanelCotizasXCliente = $nombreCliente;
				else
					_tituloPanelCotizasXCliente = '';
				dispatchEvent(new Event("regresarListaCotizacionesXClienteModeloConfirmacionDeDatos"));
				dispatchEvent(new Event("setearTituloPanelCotizasXClienteModeloConfirmacionDeDatos"));
			}
		}
		
		[Bindable(event="regresarListaCotizacionesXClienteModeloConfirmacionDeDatos")]
		public function get resultGetRegresarCotizacionesPorCliente():ArrayCollection{
			return  _listaCotizasXCliente;
		}
		[Bindable(event="setearTituloPanelCotizasXClienteModeloConfirmacionDeDatos")]
		public function get resultGetTituloPanelCotXCliente():String{
			return _tituloPanelCotizasXCliente;
		}
		
		//Panel 3
		public function resultSetFiltrarPartidasParaPanelTres($folioCotiza:String,$isEnEnfoque:Boolean):void
		{
			//"nombreProveedor","tipoProveedor","estadoPharma","diasFiltro","fechaInvestigaString","$folioCotizacion","esac","nombreCliente","fabrica","tipoProducto"
			var _totPartidasEnfocadas:int =0;
			_filtrarPorEnfoque = $isEnEnfoque;
			var _partidas:ArrayCollection = new ArrayCollection();
			
			for (var i2:int = 0; i2 < _sql.universo.length; i2++) 
			{
				(_sql.universo[i2] as ReporteConfirmacionDeDatos).isEnEnfoque = false;
			}
			
			if(_sql!= null){
				var totImporteDolares:Number=0;
				var totPiezas:int=0;
				var numFila:int=0;
				_listaPartidasXCotizacion = new ArrayCollection();
				
				if($folioCotiza!= null){
					
					//Se obtienen todas las partidas de la cotización que cumplen con los filtros del menú y se señalan con la badera isEnEnfoque = true
					var punterosXPartidasEnfocada:Array = _sql.getPunteros([_proveedor,_tipoProveedor,"En Pharma",_diaSeleccionado,null,$folioCotiza,_esac,_cliente,_fabrica,_tipoProducto,null,_ev]);
					for (var k:int = 0; k < punterosXPartidasEnfocada.length; k++) 
					{
						(_sql.universo[punterosXPartidasEnfocada[k]] as ReporteConfirmacionDeDatos).isEnEnfoque = true;
					}
					
					if(punterosXPartidasEnfocada.length>0){
						if(_filtrarPorEnfoque){
							_partidas = _sql.armarLista(punterosXPartidasEnfocada);
						}else{
							var punterosATodasLasPartidas:Array = _sql.getPunteros([null,null,null,null,null,$folioCotiza,null,null,null,null,null,null]);
							_partidas = _sql.armarLista(punterosATodasLasPartidas);
						}
					}
					
					_tituloPanelPartidasXCotizacion = '';
					
					//Ordenar usando arrays
					if(_partidas.length>1){
						var temp:ArrayCollection = new ArrayCollection();
						temp = ObjectUtil.copy(_partidas) as ArrayCollection;
						_partidas = new ArrayCollection;
						for (var j:int = 0; j < temp.length; j++) 
						{
							if((temp[j] as ReporteConfirmacionDeDatos).isEnEnfoque){
								_partidas.addItemAt(temp[j],0);
							}else{
								_partidas.addItemAt(temp[j],_partidas.length);
							}
						}
					}
					_totPartidasEnfocadas = punterosXPartidasEnfocada.length;
					
					//Limpiar Memoria
					temp = new ArrayCollection();
					
					var partidasItem:ConfirmacionDeDatosItemPartidasCotizacion;
					for (var i:int = 0; i < _partidas.length; i++) 
					{
						var currentPartida:ReporteConfirmacionDeDatos = _partidas[i] as ReporteConfirmacionDeDatos;
						partidasItem = new ConfirmacionDeDatosItemPartidasCotizacion();
						partidasItem.numFila = ++numFila;
						partidasItem.numPiezas = currentPartida.piezas;
						partidasItem.importeDlls = currentPartida.importeDolares;
						partidasItem.fechaInvestiga = currentPartida.fechaInvestiga;
						partidasItem.fechaInvestigaString = currentPartida.fechaInvestigaString;
						partidasItem.descripcionProducto = currentPartida.descripcionProducto;
						partidasItem.precioUDolares = currentPartida.precioUDolares;
						partidasItem.tipoProducto = currentPartida.tipoProductoVista;
						partidasItem.idpCotiza = currentPartida.idPCotPharma;
						partidasItem.tipoProveedor = currentPartida.tipoProveedor;
						partidasItem.nombreProveedor = currentPartida.nombreProveedor;
						partidasItem.estadoPharmaReal = currentPartida.estadoPharmaReal;
						if(currentPartida.isEnEnfoque)
							partidasItem.isEnEnfoque = true;
						
						if(_totPartidasEnfocadas==1 && numFila == 1){
							partidasItem.isInicioEnfoque = true;
							partidasItem.isFinEnfoque = true;
						}else{
							if(numFila==1){
								partidasItem.isInicioEnfoque = true;
							}else if(numFila == _totPartidasEnfocadas){
								partidasItem.isFinEnfoque = true;
							}
						}
						_listaPartidasXCotizacion.addItem(partidasItem);
						totPiezas += partidasItem.numPiezas;
						totImporteDolares += partidasItem.importeDlls;
					}
				}
				
				var ultimoItemPartidas:ConfirmacionDeDatosItemPartidasCotizacion = new ConfirmacionDeDatosItemPartidasCotizacion();
				ultimoItemPartidas.isUltimo = true;
				ultimoItemPartidas.totPiezas = totPiezas;
				ultimoItemPartidas.totImporteDlls = totImporteDolares;
				ultimoItemPartidas.totPartidas = _partidas.length;
				_listaPartidasXCotizacion.addItem(ultimoItemPartidas);
				_tituloPanelPartidasXCotizacion = $folioCotiza;
				dispatchEvent(new Event("regresarListaPartidasXCotizacionModeloConfirmacionDeDatos"));
				dispatchEvent(new Event("setearTituloPartidasXCotizacionModeloConfirmacionDeDatos"));
				dispatchEvent(new Event("setearFiltroPorEnfoqueModeloConfirmacionDeDatos"));
			}
		}
		[Bindable(event="regresarListaPartidasXCotizacionModeloConfirmacionDeDatos")]
		public function get resultGetRegresarPartidasPorCotizacion():ArrayCollection{
			return  _listaPartidasXCotizacion;
		}
		[Bindable(event="setearFiltroPorEnfoqueModeloConfirmacionDeDatos")]
		public function get resultGetFiltroParaPartidasPorCotizacion():Boolean{
			return  _filtrarPorEnfoque;
		}
		[Bindable(event="setearTituloPartidasXCotizacionModeloConfirmacionDeDatos")]
		public function get resultGetTituloPanelPartidasXCotizas():String{
			return _tituloPanelPartidasXCotizacion;
		}
		
		public function resultSetObtenerInfoBusquedaProducto($idpCotiza:String):void
		{
			_infoPartidaBusquedaProd = new ReporteConfirmacionDeDatos();
			if($idpCotiza != null){
				var punteroInfoPartida:Array = _sql.getPunteros([null,null,null,null,null,null,null,null,null,null,$idpCotiza,null]);
				_infoPartidaBusquedaProd = _sql.universo[punteroInfoPartida[0]];
				_infoPartidaBusquedaProd.precioInvestigaString = "$ "+_infoPartidaBusquedaProd.precioInvestiga +" "+_infoPartidaBusquedaProd.monedaInvestiga;
			}else{
				_infoPartidaBusquedaProd.idPCotPharma = null;
			}
			
			dispatchEvent(new Event("regresarInfoPartidaBusquedaProductoModeloConfirmacionDeDatos"));
		}
		[Bindable(event="regresarInfoPartidaBusquedaProductoModeloConfirmacionDeDatos")]
		public function get resultGetRegresarInfoBusquedaProducto():ReporteConfirmacionDeDatos
		{
			return _infoPartidaBusquedaProd;
		}
		
		public function resultSetSettearFiltrosParaBusqudeda($tipoDeProveedor:String,$proveedor:String,$cliente:String,$tipoProducto:String,$fabrica:String,$diaSeleccionado:String,$esac:String,$ev:String,$vistaSelected:String,$isBusquedaAvanzada:Boolean = false):void
		{
			_tipoProveedor = StringUtil.trim($tipoDeProveedor).length==0 || $tipoDeProveedor == "--TODOS--" ? null:$tipoDeProveedor;
			_proveedor = StringUtil.trim($proveedor).length==0 || $proveedor == "--TODOS--" ? null:$proveedor;
			_esac = StringUtil.trim($esac).length==0 || $esac == "--TODOS--" ? null:$esac;
			_ev = StringUtil.trim($ev).length==0 || $ev == "--TODOS--" ? null:$ev;
			_cliente = StringUtil.trim($cliente).length==0 || $cliente == "--TODOS--" ? null:$cliente;
			_tipoProducto = StringUtil.trim($tipoProducto).length==0 || $tipoProducto == "--TODOS--" ? null:$tipoProducto;
			_fabrica = StringUtil.trim($fabrica).length==0 || $fabrica == "--TODOS--" ? null:$fabrica;
			_diaSeleccionado = StringUtil.trim($diaSeleccionado).length==0 || $diaSeleccionado == "TODO" ? null:$diaSeleccionado;
			_currentVista = $vistaSelected;
			_isBusquedaAvanzada = $isBusquedaAvanzada;
			
			if(!$isBusquedaAvanzada){
				_listaClientes = new ArrayCollection();
				var ultimoItemProveedores:ConfirmacionDeDatosItemClientes = new ConfirmacionDeDatosItemClientes();
				ultimoItemProveedores.isUltimo = true;
				ultimoItemProveedores.totClientes = 0
				ultimoItemProveedores.totImporteDlls = 0;
				ultimoItemProveedores.totPiezas = 0;
				_objLabels.currentTitulo =''; 
				_listaClientes.addItem(ultimoItemProveedores);
				dispatchEvent(new Event("regresarListaClientesModeloConfirmacionDeDatos"));
				dispatchEvent(new Event("setearTituloPanelCotEnPharmaModeloConfirmacionDeDatos"));
			}
		}
		
		[Bindable(event='regresaGraficaNivelIngresoModeloConfirmacionDeDatos')]
		public function get graficaNivelDeIngreso():ArrayCollection
		{
			return  _pieNivelIngreso;
		}
		[Bindable(event='regresaGraficaClienteModeloConfirmacionDeDatos')]
		public function get graficaCliente():ArrayCollection
		{
			return  _pieClientes;
		}
		[Bindable(event='regresaGraficaEsacModeloConfirmacionDeDatos')]
		public function get graficaEsac():ArrayCollection
		{
			return  _pieEsac;
		}
		[Bindable(event='regresaGraficaEvModeloConfirmacionDeDatos')]
		public function get graficaEv():ArrayCollection
		{
			return  _pieEv;
		}
		[Bindable(event='regresaGraficaTipoProveedorModeloConfirmacionDeDatos')]
		public function get graficaTipoProveedor():ArrayCollection
		{
			return  _pieTipoProveedor;
		}
		[Bindable(event='regresaGraficaProveedorModeloConfirmacionDeDatos')]
		public function get graficaProveedor():ArrayCollection
		{
			return  _pieProveedor;
		}
		[Bindable(event='regresaGraficaTipoProductoModeloConfirmacionDeDatos')]
		public function get graficaTipoProducto():ArrayCollection
		{
			return  _pieTipoProducto;
		}
		[Bindable(event='regresaGraficaMarcaModeloConfirmacionDeDatos')]
		public function get graficaMarca():ArrayCollection
		{
			return  _pieMarca;
		}
		
		public function faultObtenerCotizacionesEnPharmaPartidas(fault:Object):void{
			trace(fault.toString());
		}
		
	}
}