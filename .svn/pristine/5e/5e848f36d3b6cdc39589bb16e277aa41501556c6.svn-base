package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.compras
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.collections.SortField;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.compras.EventoReporteComprasV2;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PartidaCompra;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.compras.reporteCompras.ReporteComprasItemOrdenDeCompra;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.compras.reporteCompras.ReporteComprasItemPartida;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.compras.reporteCompras.ReporteComprasItemProveedores;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	import mx.utils.StringUtil;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloReporteComprasV2 extends EventDispatcher
	{
		
		private var _graficaProveedores:ArrayCollection;
		private var _graficaMarcas:ArrayCollection;
		private var _graficaProductos:ArrayCollection;
		private var _graficaTipo:ArrayCollection;
		private var _graficaClientes:ArrayCollection;
		private var _graficaControl:ArrayCollection;
		private var _graficaCompradores:ArrayCollection;
		private var _graficaManejo:ArrayCollection;
		
		//VARIABLES NUEVAS
		private var _currentSQL:Query;
		private var _sqlAvanzada:Query;
		private var _sqlRapida:Query;
		
		//variables para llenar los combos del Menu Reporte Compras
		private var todosCombosBox:Object;
		
		//variables Filtros Combos
		private var _proveedor:String;
		private var _comprador:String;
		private var _manejo:String;
		private var _tipo:String;
		private var _marca:String;
		private var _control:String;
		
		//Busqueda rápida
		private var _textoBusquedaRapida:String;
		
		
		//Otros filtros por ejemplo botonera AHYM
		private var _diaSeleccionado:String="HOY";
		private var _etiqueta:String="confirmacion";
		private var _currentVista:String = "tabla";
		
		//listas para las columnas
		private var _listaProveedores:ArrayCollection; //panel 1
		private var _listaOrdenesDeCompra:ArrayCollection; //Panel 2
		private var _listaPartidas:ArrayCollection;// panel 3
		
		private var _objLabels:Object;
		private var _arrEtiquetaDia:Array= ["Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado"];
		private var _isBusquedaAvanzada:Boolean = true;
		
		private var _tituloPanelDos:String;
		private var _tituloPanelTres:String;
		
		/**
		 ************************************************************** lista de compras ********************************************************
		 */
		private var _compras:ArrayCollection;
		private var _botonBar:String;
		public function setListaCompras($listaCompras:ArrayCollection):void{	
			
			if($listaCompras == null)
				return;
			
			if(_isBusquedaAvanzada){
				var inicioTiempo:Number = new Date().time;
				// Se settean los días deacuerdo a si está en confirmación o en transito.
				clasificarPorDias($listaCompras);
				var terminoTiempo:Number = new Date().time;
				
				trace("\nTiempo de Clasificación: " + (terminoTiempo - inicioTiempo) +" ms");
				trace("\n==================================================================");
				_sqlAvanzada = new Query($listaCompras,["diasFiltro","etiqueta","nombreProveedor","responsable","manejo","tipo","fabrica","control","compra","idPartidaCompra","descripcionProducto","destino"]);
			}else{
				_sqlRapida = new Query($listaCompras,["diasFiltro","etiqueta","nombreProveedor","responsable","manejo","tipo","fabrica","control","compra","idPartidaCompra"]);
			}
			
			filtrarCompras(_diaSeleccionado,_etiqueta,_proveedor,_comprador,_manejo,_tipo,_marca,_control,_currentVista,_isBusquedaAvanzada);
			
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"llegaListaDeComprasModeloReporteComprasV2");
			}
		}
		
		public function filtrarCompras($diaSeleccionado:String,$etiqueta:String,$proveedor:String,$comprador:String,$manejo:String,$tipo:String,$marca:String,$control:String,$currentVista:String,$isBusquedaAvanzada:Boolean):void
		{
			
			//Filtros para combos
			_proveedor = longitudCadena($proveedor) == 0 || $proveedor == "--TODOS--" ? null:$proveedor;
			_comprador = longitudCadena($comprador) == 0 || $comprador == "--TODOS--" ? null:$comprador;
			_manejo = longitudCadena($manejo) == 0 || $manejo == "--TODOS--" ? null:$manejo;
			_tipo = longitudCadena($tipo) == 0 || $tipo == "--TODOS--" ? null:$tipo;
			_marca = longitudCadena($marca) == 0 || $marca == "--TODOS--" ? null:$marca;
			_control = longitudCadena($control) == 0 || $control == "--TODOS--" ? null:$control;
			_isBusquedaAvanzada = $isBusquedaAvanzada;
			
			
			//Otros filtros
			_diaSeleccionado = $diaSeleccionado == "TODO" ? null : $diaSeleccionado;
			_etiqueta = $etiqueta != null && longitudCadena($etiqueta) > 0 ? $etiqueta:_etiqueta;
			_currentVista = $currentVista != null && longitudCadena($currentVista) > 0 ? $currentVista:_currentVista;
			
			
			//Diferenciar entre busqueda Rapida y Avanzada
			if(_isBusquedaAvanzada){
				_currentSQL = _sqlAvanzada;
			}else{
				_currentSQL = _sqlRapida;
			}
			
			if(_currentSQL != null){
				
				if(_currentVista == "grafica"){
					
					_graficaProveedores = generateChartReporte("nombreProveedor", _proveedor, [_diaSeleccionado,_etiqueta,'nombreProveedor',_comprador,_manejo,_tipo,_marca,_control] );
					_graficaProductos = generateChartReporte( "descripcionProducto", null,[_diaSeleccionado,_etiqueta,_proveedor,_comprador,_manejo,_tipo,_marca,_control,null,null,"descripcionProducto"]);
					_graficaClientes = generateChartReporte( "destino", null, [_diaSeleccionado,_etiqueta,_proveedor,_comprador,_manejo,_tipo,_marca,_control,null,null,null,"destino"] );
					_graficaCompradores = generateChartReporte( "responsable", _comprador, [_diaSeleccionado,_etiqueta,_proveedor,"responsable",_manejo,_tipo,_marca,_control] );
					_graficaMarcas = generateChartReporte( "fabrica", _marca, [_diaSeleccionado,_etiqueta,_proveedor,_comprador,_manejo,_tipo,"fabrica",_control]);
					_graficaTipo = generateChartReporte( "tipo", _tipo,[_diaSeleccionado,_etiqueta,_proveedor,_comprador,_manejo,"tipo",_marca,_control] );
					_graficaControl = generateChartReporte( "control", _control, [_diaSeleccionado,_etiqueta,_proveedor,_comprador,_manejo,_tipo,_marca,"control"]);
					_graficaManejo = generateChartReporte( "manejo", _manejo,[_diaSeleccionado,_etiqueta,_proveedor,_comprador,"manejo",_tipo,_marca,_control] );
					
					dispatchEvent( new Event("enviaGraficoProveedoresModeloReporteCompras"));
					dispatchEvent( new Event("enviaGraficoMarcasModeloReporteCompras"));
					dispatchEvent( new Event("enviaGraficoProductosModeloReporteCompras"));
					dispatchEvent( new Event("enviaGraficoTiposModeloReporteCompras"));
					dispatchEvent( new Event("enviaGraficoClientesModeloReporteCompras"));
					dispatchEvent( new Event("enviaGraficoControlModeloReporteCompras"));
					dispatchEvent( new Event("enviaGraficoCompradorModeloReporteCompras"));
					dispatchEvent( new Event("enviaGraficoManejoModeloReporteCompras"));
					
				}else{
					
					var listaProveedores:Array = new Array();
					var totalMonto:Number = 0;
					var totalPiezas:int = 0;
					var itemProveedor: ReporteComprasItemProveedores;
					
					var nombresProveedores:Array;
					if(_isBusquedaAvanzada){
						var comprasXFiltros:Array = _currentSQL.getPunteros([_diaSeleccionado,_etiqueta,_proveedor,_comprador,_manejo,_tipo,_marca,_control]);
						nombresProveedores = _proveedor == null ? _currentSQL.getValoresCampoOmitiendoRepetidos("nombreProveedor",comprasXFiltros):[_proveedor];
					}else{
						nombresProveedores = _currentSQL.getValoresCampoOmitiendoRepetidosDeTodoElUniverso("nombreProveedor");
					}
					
					for (var i:int = 0; i < nombresProveedores.length; i++) 
					{
						var currentProveedor:String;
						if(nombresProveedores[i] != null){
							
							currentProveedor = nombresProveedores[i];
							
							var punterosXProveedor:Array; 
							if(_isBusquedaAvanzada)
								punterosXProveedor = _currentSQL.getPunteros([_diaSeleccionado,_etiqueta,currentProveedor,_comprador,_manejo,_tipo,_marca,_control]);
							else
								punterosXProveedor = _currentSQL.getPunteros([null,null,currentProveedor]);
							
							
							if(punterosXProveedor.length > 0 ){
								itemProveedor = new ReporteComprasItemProveedores;
								itemProveedor.numOrdenesCompra = _currentSQL.getValoresCampo("compra",punterosXProveedor).length;
								itemProveedor.numPiezas = _currentSQL.getSumarCampo("cantidadCompra",punterosXProveedor);
								
								if(_diaSeleccionado == "PASADO" || _diaSeleccionado == "FUTURO" || _diaSeleccionado == null){
									
									var j:int;
									var tempFechas:Array = new Array;
									var fechaMasProxima:Date = null;
									var fechaPivote:Number = 0;
									
									if(!_isBusquedaAvanzada){
										_etiqueta = (_currentSQL.universo[punterosXProveedor[0]] as PartidaCompra).etiqueta;
										itemProveedor.mostrarFechaTramOArribo = false;
									}
									
									switch(_etiqueta)
									{
										case "confirmacion":
										{
											tempFechas = _currentSQL.getValoresCampoOmitiendoRepetidos("fechaTramitacion",punterosXProveedor);
											fechaMasProxima = tempFechas[0];
											
											if(tempFechas.length > 1){
												fechaPivote = tempFechas[0].time;
												
												for (j = 1; j <tempFechas.length; j++) 
												{
													if(fechaPivote > tempFechas[j].time){
														fechaPivote = tempFechas[j].time;
														fechaMasProxima = tempFechas[j];
													}
												}
											}
											itemProveedor.fechaTramitacion = fechaMasProxima;
											itemProveedor.labelFechaTramitacion = "Fecha tramitación+:";
											break;
										}
										case "transito":
										{
											itemProveedor.fechaEsperadaArribo = obtenerFechaMasProxima(_currentSQL.armarLista(punterosXProveedor).source);
											break;
										}
									}
								}else{
									if(_etiqueta == "confirmacion"){
										
										itemProveedor.labelFechaTramitacion = "Fecha tramitación:";
										itemProveedor.fechaTramitacion = (_currentSQL.universo[punterosXProveedor[0]] as PartidaCompra).fechaTramitacion;
										
									}else if(_etiqueta == "transito"){
										
										if((_currentSQL.universo[punterosXProveedor[0]] as PartidaCompra).almacenMatriz)
											itemProveedor.fechaEsperadaArribo = (_currentSQL.universo[punterosXProveedor[0]] as PartidaCompra).fechaEsperadaArriboPQF;
										else
											itemProveedor.fechaEsperadaArribo = (_currentSQL.universo[punterosXProveedor[0]] as PartidaCompra).fechaEsperadaArriboUSA;
									}
								}
								
								itemProveedor.nombreProveedor = currentProveedor;
								itemProveedor.monto = _currentSQL.getSumarCampo("precioTotal",punterosXProveedor);
								itemProveedor.comprador = (_currentSQL.universo[punterosXProveedor[0]] as PartidaCompra).responsable;
								itemProveedor.estado = (_currentSQL.universo[punterosXProveedor[0]] as PartidaCompra).estado;
								itemProveedor.ubicacion = (_currentSQL.universo[punterosXProveedor[0]] as PartidaCompra).etiqueta;
								
								listaProveedores.push(itemProveedor);
								totalMonto += itemProveedor.monto;
								totalPiezas += itemProveedor.numPiezas;
							}
						}
					}
					
					
					//ordenar por Nombre de Proveedor
					listaProveedores.sortOn("nombreProveedor");
					
					//Enumerar los items, para el número de filas
					for (var k:int = 0; k < listaProveedores.length; k++) 
					{
						(listaProveedores[k] as ReporteComprasItemProveedores).numFila = k+1;
					}
					_listaProveedores = new ArrayCollection(listaProveedores);
					
					var ultimoItemProveedores:ReporteComprasItemProveedores = new ReporteComprasItemProveedores;
					ultimoItemProveedores.isUltimoItem = true;
					ultimoItemProveedores.totalMonto = totalMonto;
					ultimoItemProveedores.totalPiezas = totalPiezas;
					ultimoItemProveedores.totalProveedores = _listaProveedores.length;
					_listaProveedores.addItem(ultimoItemProveedores);
				}
				
				if(_isBusquedaAvanzada)
				{
					//SE REALIZA EL CONTEO DE PROVEEDORES PARA CADA DÍA
					_objLabels = new Object();
					var diasFiltro:Array = [ "MAÑANA","PASADO MAÑANA","POS PASADO","FUTURO", "HOY", "AYER", "ANTIER", "ANTE ANTIER", "PASADO"];
					var totalProveedores:int = 0;
					for ( j = 0; j < diasFiltro.length; j++) 
					{
						var punterosXdia:Array = _currentSQL.getPunteros([diasFiltro[j],_etiqueta,_proveedor,_comprador,_manejo,_tipo,_marca,_control]);
						_objLabels[ diasFiltro[j] ] = String(punterosXdia.length);
						totalProveedores+= punterosXdia.length;
					}
					
					var hoy:Date = new Date();
					var maniana:Date = UtilsFecha.regresaFechaRespectoAOtra(hoy,"MAÑANA");
					var ayer:Date = UtilsFecha.regresaFechaRespectoAOtra(hoy,"AYER");
					_objLabels.etiquetaHoy = _arrEtiquetaDia[hoy.day] +' '+ hoy.date;
					_objLabels.etiquetaManiana = _arrEtiquetaDia[maniana.day] +' '+ maniana.date;
					_objLabels.etiquetaAyer = _arrEtiquetaDia[ayer.day] +' '+ ayer.date;
					_objLabels.todosProveedores = totalProveedores;
					
					switch(_diaSeleccionado){
						case "PASADO":_objLabels.currentTitulo = "PASADO";break;
						case "ANTE ANTIER":_objLabels.currentTitulo = "ANTE ANTIER";break;
						case "ANTIER":_objLabels.currentTitulo = "ANTIER";break;
						case "AYER":_objLabels.currentTitulo = 'AYER / '+_objLabels.etiquetaAyer;break;
						case "HOY":_objLabels.currentTitulo = 'HOY / '+_objLabels.etiquetaHoy;break;
						case "MAÑANA":_objLabels.currentTitulo = "MAÑANA / "+_objLabels.etiquetaManiana;break;
						case "PASADO MAÑANA":_objLabels.currentTitulo = "PASADO MAÑANA";break;
						case "POS PASADO":_objLabels.currentTitulo = "POS PASADO";break;
						case "FUTURO":_objLabels.currentTitulo = "FUTURO";break;
						default:
						{
							_objLabels.currentTitulo = "TODO";
						}
					}
					
					// SE LLENAN LOS ARRAYS PARA LOS COMBOS DEL MENU REPORTE COMPRAS
					todosCombosBox = new Object;
					todosCombosBox["cmbProveedor"] = agregarTodosACombos(_currentSQL.getValoresCampoOmitiendoRepetidos("nombreProveedor",comprasXFiltros));
					todosCombosBox["cmbComprador"] = agregarTodosACombos(_currentSQL.getValoresCampoOmitiendoRepetidos("responsable",comprasXFiltros));
					todosCombosBox["cmbManejo"] = agregarTodosACombos(_currentSQL.getValoresCampoOmitiendoRepetidos("manejo",comprasXFiltros));
					todosCombosBox["cmbTipo"] = agregarTodosACombos(_currentSQL.getValoresCampoOmitiendoRepetidos("tipo",comprasXFiltros));
					todosCombosBox["cmbMarca"] = agregarTodosACombos(_currentSQL.getValoresCampoOmitiendoRepetidos("fabrica",comprasXFiltros));
					todosCombosBox["cmbControl"] = agregarTodosACombos(_currentSQL.getValoresCampoOmitiendoRepetidos("control",comprasXFiltros));
					
					//Para los combos
					dispatchEvent(new Event("regresarArrayParaComboProveedoresModeloReporteCompras"));
				}else{
					
					if(_listaProveedores.length>0)
						_objLabels.currentTitulo = (_listaProveedores[0] as ReporteComprasItemProveedores).nombreProveedor;
					else
						_objLabels.currentTitulo = "";
				}
				
				//para el conteode botonera AHYM
				dispatchEvent(new Event("regresaConteoProveedoresParaBotonesAHYMDelMenuModelosReporteCompras"));
				
				if(_currentVista == "tabla"){
					dispatchEvent(new Event("regresarListaDeProveedoresPanelUnoModelosReporteCompras"));
					dispatchEvent(new Event("setearTituloPanelUnoProveedoresModelosReporteCompras"));
				}
			}
		}
		
		[Bindable(event="regresarListaDeProveedoresPanelUnoModelosReporteCompras")]
		public function get regresaListaDeProveedoresPanel1():ArrayCollection
		{
			return _listaProveedores;
		}
		
		[Bindable(event="setearTituloPanelUnoProveedoresModelosReporteCompras")]
		public function get regresarTituloDelPanelUnoProveedores():String
		{
			if(_objLabels != null && _objLabels.hasOwnProperty("currentTitulo"))
				return _objLabels.currentTitulo;
			else 
				return null;
		}
		
		[Bindable(event="regresaConteoProveedoresParaBotonesAHYMDelMenuModelosReporteCompras")]
		public function get regresarConteoParaBotonesAHYM():Object
		{
			return _objLabels;	
		}
		
		[Bindable(event="regresarArrayParaComboProveedoresModeloReporteCompras")]
		public function get regresaArrayParaComboProveedores():Object
		{
			return todosCombosBox;
		}
		
		
		private function agregarTodosACombos(array:Array):Array
		{
			var arraytemp:Array = ObjectUtil.copy(array) as Array;
			arraytemp.unshift("--TODOS--");
			return arraytemp;
		}
		
		
		private function obtenerFechaMasProxima(array:Array):Date
		{
			var fechaMasProxima:Object = {fecha:null};
			var keyFechasEvaluadas:Object = new Object;
			for (var k:int = 0; k < array.length; k++) 
			{
				var current:PartidaCompra = array[k] as PartidaCompra;
				
				if(!keyFechasEvaluadas.hasOwnProperty(current.fechaEsperadaArriboPQF) && !keyFechasEvaluadas.hasOwnProperty(current.fechaEsperadaArriboUSA)){
					
					if(current.estado != "Recibido" && current.estado != "Cancelada" && current.estado !="Recibido PHS"){
						
						if(current.almacenMatriz){
							obtenerfechaMasProxima(current.fechaEsperadaArriboPQF,fechaMasProxima);
							keyFechasEvaluadas[current.fechaEsperadaArriboPQF] = current.fechaEsperadaArriboPQF;
						}else{
							obtenerfechaMasProxima(current.fechaEsperadaArriboUSA,fechaMasProxima);
							keyFechasEvaluadas[current.fechaEsperadaArriboUSA] = current.fechaEsperadaArriboUSA;
						}
						
					}else if(current.estado =="Recibido PHS" && current.almacenMatriz){
						obtenerfechaMasProxima(current.fechaEsperadaArriboPQF,fechaMasProxima);
						keyFechasEvaluadas[current.fechaEsperadaArriboPQF] = current.fechaEsperadaArriboPQF;
					}
				}
			}
			return fechaMasProxima.fecha as Date;
		}
		
		
		//PANEL 2 : FILTRAR POR PROVEEDOR
		public function setFiltrarOrdenesCompraPorProvedorParaPanelDos($currentProveedor:String):void
		{
			
			if(_currentSQL != null){
				
				var totOrdenCompras:uint = 0;
				var totImporteDolares:Number = 0;
				var totPiezas:uint = 0;
				
				var listaOrdenesCompraXProveedor:Array = new Array();
				
				if($currentProveedor != null){
					_tituloPanelDos = "";
					
					var punterosXProveedor:Array;
					if(_isBusquedaAvanzada){
						punterosXProveedor = _currentSQL.getPunteros([_diaSeleccionado,_etiqueta,$currentProveedor,_comprador,_manejo,_tipo,_marca,_control]);
					}else{
						punterosXProveedor = _currentSQL.getPunteros([null,null,$currentProveedor,null,null,null,null,null]);
					}
					
					var ordenesDeCompra:Array = _currentSQL.getValoresCampo("compra",punterosXProveedor);
					
					var itemOrdenCompra:ReporteComprasItemOrdenDeCompra;
					
					for (var i:int = 0; i < ordenesDeCompra.length; i++) 
					{
						var currentOrdenCompra:String = ordenesDeCompra[i];
						
						var punterosXOrden:Array;
						if(_isBusquedaAvanzada){
							punterosXOrden = _currentSQL.getPunteros([_diaSeleccionado,_etiqueta,$currentProveedor,_comprador,_manejo,_tipo,_marca,_control,currentOrdenCompra]);
						}else{
							punterosXOrden = _currentSQL.getPunteros([null,null,$currentProveedor,null,null,null,null,null,currentOrdenCompra]);
						}
						
						if(punterosXOrden != null){
							itemOrdenCompra = new ReporteComprasItemOrdenDeCompra;
							
							itemOrdenCompra.numPiezas = _currentSQL.getSumarCampo("cantidadCompra",punterosXOrden);
							itemOrdenCompra.monto = _currentSQL.getSumarCampo("precioTotal",punterosXOrden);
							itemOrdenCompra.ordenCompra = currentOrdenCompra;
							itemOrdenCompra.estado = (_currentSQL.universo[punterosXOrden[0]] as PartidaCompra).estado;
							itemOrdenCompra.ubicacion = (_currentSQL.universo[punterosXOrden[0]] as PartidaCompra).etiqueta;
							
							if(!_isBusquedaAvanzada){
								_etiqueta = (_currentSQL.universo[punterosXOrden[0]] as PartidaCompra).etiqueta;
							}
							
							
							if(_etiqueta == "transito"){
								
								if(_diaSeleccionado == "PASADO" || _diaSeleccionado == "FUTURO" || _diaSeleccionado == null){
									
									itemOrdenCompra.fechaEsperadaArribo = obtenerFechaMasProxima(_currentSQL.armarLista(punterosXOrden).source);
								}else{
									
									if((_currentSQL.universo[punterosXOrden[0]] as PartidaCompra).almacenMatriz)
										itemOrdenCompra.fechaEsperadaArribo = (_currentSQL.universo[punterosXOrden[0]] as PartidaCompra).fechaEsperadaArriboPQF;
									else
										itemOrdenCompra.fechaEsperadaArribo = (_currentSQL.universo[punterosXOrden[0]] as PartidaCompra).fechaEsperadaArriboUSA;
								}
							}else{
								
								if(_diaSeleccionado == "PASADO" || _diaSeleccionado == "FUTURO" || _diaSeleccionado == null){
									itemOrdenCompra.mostrarFechaTramitacion = true;
									itemOrdenCompra.fechaTramitacion = (_currentSQL.universo[punterosXOrden[0]] as PartidaCompra).fechaTramitacion;
								}
							}
							
							itemOrdenCompra.numFila = i+1;
							
							listaOrdenesCompraXProveedor.push(itemOrdenCompra);
							totOrdenCompras ++;
							totImporteDolares += itemOrdenCompra.monto;
							totPiezas += itemOrdenCompra.numPiezas;
						}
					}
					
					_listaOrdenesDeCompra = new ArrayCollection(listaOrdenesCompraXProveedor);
					
					var ultimoItem:ReporteComprasItemOrdenDeCompra = new ReporteComprasItemOrdenDeCompra;
					ultimoItem.isUltimoItem = true;
					ultimoItem.totalOrdenCompra = totOrdenCompras;
					ultimoItem.totalMonto = totImporteDolares;
					ultimoItem.totalPiezas = totPiezas;
					_listaOrdenesDeCompra.addItem(ultimoItem);
					
					if($currentProveedor != null)
						_tituloPanelDos = $currentProveedor;
					else
						_tituloPanelDos = '';
					
					dispatchEvent(new Event("regresarListaDeOrdenesDeCompraParaPanelDosModeloReporteCompras"));
					dispatchEvent(new Event("regresarTituloParaPanelDosModeloReporteCompras"));
				}
			}
		}
		
		
		private function obtenerfechaMasProxima($fecha:Date,$fechaProxima:Object):void{
			
			if($fechaProxima.fecha != null){
				if($fechaProxima.fecha.time > $fecha.time)
					$fechaProxima.fecha = $fecha;
			}else{
				$fechaProxima.fecha = $fecha;
			}
		}
		
		[Bindable(event="regresarListaDeOrdenesDeCompraParaPanelDosModeloReporteCompras")]
		public function get regresarListaDeOrdenesDeCompraPanelDos():ArrayCollection
		{
			return _listaOrdenesDeCompra;
		}
		
		[Bindable(event="regresarTituloParaPanelDosModeloReporteCompras")]
		public function get regresarTituloPanelDos():String
		{
			return _tituloPanelDos;
		}
		
		
		//PANEL TRES PARTIDAS DE LA COMPRA
		public function setFiltrarPartidasPorOrdenesDeCompraParaPanelTres($ordenCompra:String):void
		{
			if(_currentSQL != null){
				
				_listaPartidas = new ArrayCollection;
				var listaPartidasTemp:Array  = new Array;
				
				if($ordenCompra != null){
					_tituloPanelTres = '';
					
					var punterosPorOrdenCompra:Array;
					if(_isBusquedaAvanzada)
						punterosPorOrdenCompra = _currentSQL.getPunteros([null,_etiqueta,_proveedor,_comprador,_manejo,_tipo,_marca,_control,$ordenCompra]);
					else
						punterosPorOrdenCompra = _currentSQL.getPunteros([null,null,null,null,null,null,null,null,$ordenCompra]);
						
					
					var partidaItem:ReporteComprasItemPartida;
					
					for (var i:int = 0; i < punterosPorOrdenCompra.length; i++) 
					{
						var currentPartida:PartidaCompra = _currentSQL.universo[punterosPorOrdenCompra[i]];
						partidaItem = new ReporteComprasItemPartida;
						
						partidaItem.numPiezas = currentPartida.cantidadCompra;
						partidaItem.monto = currentPartida.precioTotal;
						partidaItem.fee = currentPartida.fechaEstimadaEntrega;
						
						if(!_isBusquedaAvanzada)
							_etiqueta = currentPartida.etiqueta;
						
						
						if(_etiqueta == "transito"){
							
							if(currentPartida.almacenMatriz){
								
								
								if(currentPartida.estado == 'En AC Mtz' || currentPartida.estado == 'En tránsito Matriz' 
									|| currentPartida.estado == 'En inspección' || currentPartida.estado == 'Cancelable Mtz' || 
									currentPartida.estado == "A stock" || currentPartida.estado == 'Recibido' || currentPartida.estado == 'En AC Phs' 
									|| currentPartida.estado == 'Cancelable Phs' || currentPartida.estado == 'En inspección Phs' 
									|| currentPartida.estado == 'En tránsito PhS-USA' || currentPartida.estado == 'Recibido PHS'){
									
									partidaItem.lblFecha = "FEA Matriz:";
									partidaItem.fea = currentPartida.fechaEsperadaArriboPQF;
									
									if(_diaSeleccionado == null){
										if(currentPartida.estado != 'Recibido')
											partidaItem.isEnfocado = true;
									}else if(currentPartida.diasFiltro == _diaSeleccionado){
										partidaItem.isEnfocado = true;
									}
								}else{ //CANCELADA
									partidaItem.fea = null;
									partidaItem.lblFecha = "FEA:"; 
								}
								
							}else if(currentPartida.almacenUSA){
								
								if(currentPartida.estado == 'En AC Phs' || currentPartida.estado == 'Cancelable Phs' 
									|| currentPartida.estado == 'En inspección Phs' || currentPartida.estado == 'En tránsito PhS-USA'
									|| currentPartida.estado == 'Recibido PHS'){
									
									partidaItem.lblFecha = "FEA Phs:";
									partidaItem.fea = currentPartida.fechaEsperadaArriboUSA;
									
									if(_diaSeleccionado == null){
										if(currentPartida.estado != 'Recibido PHS')
											partidaItem.isEnfocado = true;
									}else if(currentPartida.diasFiltro == _diaSeleccionado){
										partidaItem.isEnfocado = true;
									}
								}else{ //CANCELADA 
									partidaItem.fea = null;
									partidaItem.lblFecha = "FEA:";
								}
							}
							
							if(currentPartida.estado == 'En AC Mtz' || currentPartida.estado == "En AC Phs")
								partidaItem.estado = "En Ac";
							else if(currentPartida.estado == "Cancelable Mtz" || currentPartida.estado == "Cancelable Phs")
								partidaItem.estado = "Cancelable";
							else
								partidaItem.estado = currentPartida.estado;
						}else{ //Etiqueta: confirmacion
							
							partidaItem.fee = currentPartida.fechaEstimadaEntrega;
							partidaItem.lblFecha = "FEE:";
							if(currentPartida.estado != "Cancelada")
								partidaItem.isEnfocado = true;
							partidaItem.estado = currentPartida.estado;
						}
						
						partidaItem.idPartida = currentPartida.idPartidaCompra;
						partidaItem.ubicacion = _etiqueta;
						partidaItem.descripcionProducto = currentPartida.descripcionProducto;
						partidaItem.precioU = currentPartida.precioUnitario;
						partidaItem.nombreCliente = currentPartida.destino;
						partidaItem.tipoProducto = currentPartida.tipo;
						partidaItem.control = currentPartida.control;
						partidaItem.manejo = currentPartida.manejo;
						partidaItem.partida = 1;
						
						listaPartidasTemp.push(partidaItem);
					}
				}
				
				//ORDENAR Y ENUMERAR LISTA
				if(listaPartidasTemp.length > 1){
					listaPartidasTemp.sortOn("isEnfocado",Array.DESCENDING);
				}
				
				for (var j:int = 0; j < listaPartidasTemp.length; j++) 
				{
					(listaPartidasTemp[j] as ReporteComprasItemPartida).numFila = j+1;
				}
				
				_listaPartidas = new ArrayCollection(listaPartidasTemp);
				_tituloPanelTres = $ordenCompra == "" ? "" : "OC-"+$ordenCompra;
				
				dispatchEvent(new Event("regresarListaDePartidasParaPanelTresModeloReporteCompras"));
				dispatchEvent(new Event("regresarTituloParaPanelTresModeloReporteCompras"));
				
			}
		}
		
		[Bindable(event="regresarListaDePartidasParaPanelTresModeloReporteCompras")]
		public function get regresarListaParaPanelTres():ArrayCollection
		{
			return _listaPartidas;
		}
		
		[Bindable(event="regresarTituloParaPanelTresModeloReporteCompras")]
		public function get regresarTituloParaPanelTres():String
		{
			return _tituloPanelTres;
		}
		
		
		//PANEL CUATRO DETALLE DE PARTIDA
		private var infoPartida:ArrayCollection;
		public function setMandarDetalleDePartidaCompraParaPanelCuatro($infoPartida:ArrayCollection,$estado:String):void
		{
			if($infoPartida != null && $infoPartida.length > 0){
				infoPartida = new ArrayCollection;
				$infoPartida[0].estado = $estado;
				infoPartida = $infoPartida;
			}else{
				infoPartida = null;
			}
			
			dispatchEvent(new Event("regresarDetalleDePartidaParaPanelCuatroModeloReporteCompra"));
		}
		
		[Bindable(event="regresarDetalleDePartidaParaPanelCuatroModeloReporteCompra")]
		public function get regresarDetalleDePartidaPanelCuatro():ArrayCollection
		{
			return infoPartida;
		}
		
		
		private function longitudCadena($cadena:String):int
		{
			return StringUtil.trim($cadena).length;
		}
		private function clasificarPorDias($listaCompras:ArrayCollection):void
		{
			for (var i:int = 0; i < $listaCompras.length; i++) 
			{
				var currentItem:PartidaCompra = $listaCompras[i];
				if(currentItem.estado != "Cancelada" && currentItem.estado != "Recibido" && currentItem.estado != "Recibido PHS"){
					
					if(currentItem.etiqueta == "confirmacion")
					{
						if(currentItem.diferenciaDias	   >=  6) currentItem.diasFiltro = "PASADO";
						else if(currentItem.diferenciaDias ==  5)  currentItem.diasFiltro = "ANTE ANTIER";
						else if(currentItem.diferenciaDias ==  4)  currentItem.diasFiltro = "ANTIER";
						else if(currentItem.diferenciaDias ==  3)  currentItem.diasFiltro = "AYER";
						else if(currentItem.diferenciaDias ==  2)  currentItem.diasFiltro = "HOY";
						else if(currentItem.diferenciaDias ==  1)  currentItem.diasFiltro = "MAÑANA";
						else if(currentItem.diferenciaDias ==  0)  currentItem.diasFiltro = "PASADO MAÑANA";
						else if(currentItem.diferenciaDias == -1)  currentItem.diasFiltro = "POS PASADO";
						else if(currentItem.diferenciaDias <= -2)  currentItem.diasFiltro = "FUTURO";
						
					}else{
						if(currentItem.diferenciaDias	   >=  4) currentItem.diasFiltro = "PASADO";
						else if(currentItem.diferenciaDias ==  3)  currentItem.diasFiltro = "ANTE ANTIER";
						else if(currentItem.diferenciaDias ==  2)  currentItem.diasFiltro = "ANTIER";
						else if(currentItem.diferenciaDias ==  1)  currentItem.diasFiltro = "AYER";
						else if(currentItem.diferenciaDias ==  0)  currentItem.diasFiltro = "HOY";
						else if(currentItem.diferenciaDias == -1)  currentItem.diasFiltro = "MAÑANA";
						else if(currentItem.diferenciaDias == -2)  currentItem.diasFiltro = "PASADO MAÑANA";
						else if(currentItem.diferenciaDias == -3)  currentItem.diasFiltro = "POS PASADO";
						else if(currentItem.diferenciaDias <= -4)  currentItem.diasFiltro = "FUTURO";
					}
				}
			}	
		}
		
		
		[Bindable(event="enviarBotonSeleccionadoModeloReporteCompras")]
		public function get obtenerBotonSeleccionado():String{	
			return this._botonBar;
		}
		
		[Bindable(event="enviarConsultaRapidaModeloReporteCompras")]
		public function get consultaRapida():ArrayCollection{
			return this._compras;
		}
		
		public function settearTodosLosFiltrosParaLaBusqueda($diaSeleccionado:String,$etiqueta:String,$proveedor:String,$comprador:String,$manejo:String,$tipo:String,$marca:String,$control:String,$currentVista:String,$isBusquedaAvanzada:Boolean,$textoBusquedaRapida:String):void
		{
			
			//Filtros para combos
			_proveedor = longitudCadena($proveedor) == 0 || $proveedor == "--TODOS--" ? null:$proveedor;
			_comprador = longitudCadena($comprador) == 0 || $comprador == "--TODOS--" ? null:$comprador;
			_manejo = longitudCadena($manejo) == 0 || $manejo == "--TODOS--" ? null:$manejo;
			_tipo = longitudCadena($tipo) == 0 || $tipo == "--TODOS--" ? null:$tipo;
			_marca = longitudCadena($marca) == 0 || $marca == "--TODOS--" ? null:$marca;
			_control = longitudCadena($control) == 0 || $control == "--TODOS--" ? null:$control;
			
			//Otros filtros
			_diaSeleccionado = $diaSeleccionado == "TODO" ? null : $diaSeleccionado;
			_etiqueta = $etiqueta != null && longitudCadena($etiqueta) > 0 ? $etiqueta:_etiqueta;
			_currentVista = $currentVista != null && longitudCadena($currentVista) > 0 ? $currentVista:_currentVista;
			
			_isBusquedaAvanzada = $isBusquedaAvanzada;
			
			if(!_isBusquedaAvanzada){//Busqueda rápida
				_etiqueta = null;
				_objLabels = new Object;
				
				if($textoBusquedaRapida != null && $textoBusquedaRapida.length == 0 ){
					_listaProveedores = new ArrayCollection();
					
					var ultimoItemProveedores:ReporteComprasItemProveedores = new ReporteComprasItemProveedores;
					ultimoItemProveedores.isUltimoItem = true;
					ultimoItemProveedores.totalMonto = 0;
					ultimoItemProveedores.totalPiezas = 0;
					ultimoItemProveedores.totalProveedores = 0;
					_listaProveedores.addItem(ultimoItemProveedores);
					_objLabels.currentTitulo = '';
					
					dispatchEvent(new Event("regresarListaDeProveedoresPanelUnoModelosReporteCompras"));
					dispatchEvent(new Event("setearTituloPanelUnoProveedoresModelosReporteCompras"));
				}else{
					
					if($textoBusquedaRapida != null && $textoBusquedaRapida == _textoBusquedaRapida ){
						filtrarCompras(_diaSeleccionado,_etiqueta,_proveedor,_comprador,_manejo,_tipo,_marca,_control,_currentVista,_isBusquedaAvanzada);
					}else if($textoBusquedaRapida != null){
						_textoBusquedaRapida = $textoBusquedaRapida;
					}
				}
			}
		}
		
		[Bindable(Event="enviaGraficoProveedoresModeloReporteCompras")]
		public function get enviaProveedores():ArrayCollection{
			return _graficaProveedores;
		}
		
		[Bindable(Event="enviaGraficoMarcasModeloReporteCompras")]
		public function get enviaMarcas():ArrayCollection{
			return _graficaMarcas;
		}
		
		[Bindable(Event="enviaGraficoProductosModeloReporteCompras")]
		public function get enviaProductos():ArrayCollection{
			return _graficaProductos;
		}
		
		[Bindable(Event="enviaGraficoTiposModeloReporteCompras")]
		public function get enviaTipos():ArrayCollection{
			return _graficaTipo;
		}
		
		[Bindable(Event="enviaGraficoClientesModeloReporteCompras")]
		public function get enviaClientes():ArrayCollection{
			return _graficaClientes;
		}
		
		[Bindable(Event="enviaGraficoControlModeloReporteCompras")]
		public function get enviaControl():ArrayCollection{
			return _graficaControl;
		}
		
		[Bindable(Event="enviaGraficoCompradorModeloReporteCompras")]
		public function get enviaComprador():ArrayCollection{
			return _graficaCompradores;
		}
		
		[Bindable(Event="enviaGraficoManejoModeloReporteCompras")]
		public function get enviaManejo():ArrayCollection{
			return _graficaManejo;
		}
		
		private function generateChartReporte( $propiedad:String, $filtro:String, $consulta:Array ):ArrayCollection
		{
			
			var inicioTiempo:Number = new Date().time;
			
			var arrayProvider:ArrayCollection = new ArrayCollection();
			if( _currentSQL.indexObject[ $propiedad ] != null )
			{
				
				// determino si el filtro aplica por campo o por propiedad en campo
				var posIdx:int = $consulta.indexOf( $propiedad );
				for( var key:String in _currentSQL.indexObject[ $propiedad ] )
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
						var punterosFiltro:Array = _currentSQL.getPunteros( consultaReformulada );
						cachoPie.total = _currentSQL.getSumarCampo( "precioTotal", punterosFiltro); 
						cachoPie.totalCompras = _currentSQL.getPunteros( consultaReformulada, "compra" ).length;
						cachoPie.clientes_proveedores = _currentSQL.getPunteros( consultaReformulada, "nombreProveedor" ).length;
						cachoPie.piezasTotal = _currentSQL.getSumarCampo( "cantidadCompra", punterosFiltro);//piezas
						/*cachoPie.partidas = _currentSQL.getPunteros(consultaReformulada).length;*/
						cachoPie.partidas = punterosFiltro.length;
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
			
			var terminoTiempo:Number = new Date().time;
			
			trace("Tiempo en graficar \"+"+ $propiedad +"\": " + (terminoTiempo - inicioTiempo) +" ms");
			
			return arrayProvider;
			
		}
		////////////////////////////////////////////////////////////////  Control de Bloqueo de Pantalla ////////////////////////////////////////////////////////
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				if((EventoReporteComprasV2[$tiposEventos[i]])== null){
					return false;
				}
			}
			return true;
		}
		
		private var currentEnEspera:Boolean;
		private var actualizarEspera:Object = new Object;
		private var numServices:uint;
		private var numServicioCompletos:uint;
		private var serviciosCompletosDifKey:Object = new Object;
		public function setControlDeBloqueoPantalla(mensaje:String,$tiposEvento:Array,$idCurrentBottons:Array,$errorOrWhoFinish:Object):void
		{
			if(mensaje == "iniciarEspera"){
				if(Boolean(verificarSiElExistenLosTiposDeEvento($tiposEvento))){
					numServicioCompletos=0;
					numServices = 0;
					actualizarEspera = new Object();
					serviciosCompletosDifKey = new Object();
					numServices = $tiposEvento.length;
					currentEnEspera = true;
					actualizarEspera.isBusy = true;
					actualizarEspera["idCurrentButtons"] = $idCurrentBottons;
					alertaSingleton.show(catalogoAlertas.INICIAR_ESPERA,"","","","","","",null,true);
				}
			}else if (mensaje =="terminaEspera"){
				if(!serviciosCompletosDifKey.hasOwnProperty($errorOrWhoFinish as String)){
					numServicioCompletos++;
					serviciosCompletosDifKey[($errorOrWhoFinish as String)] = ($errorOrWhoFinish as String);
				}
				if(numServicioCompletos == numServices){
					alertaSingleton.remove(true);
					actualizarEspera.isBusy=false;
					currentEnEspera = false;
					numServices = 0;
				}
			}else if(mensaje =="error"){
				alertaSingleton.remove(true);
				currentEnEspera = false;
				alertaSingleton.showReintentar( $errorOrWhoFinish.toString(), catalogoAlertas.TIT_ERR);
				actualizarEspera.isBusy=false;
			}
			
			dispatchEvent( new Event("actualizaEsperaYBloqueoModeloReporteComprasV2") );
		}
		[Bindable(event="actualizaEsperaYBloqueoModeloReporteComprasV2")]
		public function get actualizarEstadoDeEsperaYBloqueo():Object
		{
			return actualizarEspera;
		}
		
		
		////////////////////////////////////////////////////////////////  Error REPORTE ////////////////////////////////////////////////////////
		
		public function errorListaInfoGeneral(objeto:Object):void{
			alertaSingleton.showReintentar(objeto.toString());
		}
		
		public function errorListaCompras(objeto:Object):void{
			alertaSingleton.showReintentar(objeto.toString());
		}
		
		public function ModeloReporteComprasV2(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}