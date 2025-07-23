package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.ventas.seguimiento
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.ventas.cobros.EventoReporteCobros;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.ventas.seguimiento.EventoReporteSeguimiento;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.ventas.SeguimientoCotizacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.SeguimientoCotizacionAgrupada;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.reportes.seguimientos.PartidaCotizacionEnSeguimiento;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	
	import spark.collections.Sort;
	import spark.collections.SortField;
	
	import skins.catalogos.catalogoAlertas;
	
	
	public class ModeloReporteSeguimiento extends EventDispatcher
	{
		public function ModeloReporteSeguimiento(target:IEventDispatcher= null)
		{
			super(target);		
		}
		
		private var _sql:Query;
		private var _origen:String = "";
		private var _cliente:String = "";
		private var _folio:String = "";
		private var _tipo:String = "";
		private var _marca:String = "";
		private var _control:String = "";
		private var _esacMaster:String = "";
		private var _diaSeleccionado:String = "DIA0";
		
		private var _objLabels:Object = new Object();
		private var _cotizacionesSeguimientoAgrupadas:ArrayCollection = new ArrayCollection();
		private var _partidasSeguimiento:ArrayCollection = new ArrayCollection();
		private var _partidaSeleccionada:PartidaCotizacionEnSeguimiento = new PartidaCotizacionEnSeguimiento();
		private var _cotizacionesPorCliente:ArrayCollection;
		
		private var _pieEV:ArrayCollection;
		private var _pieEsac:ArrayCollection;
		private var _pieCliente:ArrayCollection;
		private var _pieMarca:ArrayCollection;
		private var _pieEstadoSeguimiento:ArrayCollection;
		private var _pieEstadoConfirmacion:ArrayCollection;
		private var _pieNivelIngreso:ArrayCollection;
		private var _pieTipoProducto:ArrayCollection;
		
		private var _vistaGraficasBool:String = "tabla";
		private var _totalSoloUnaVez:Boolean = true;
		
		public function resultObtenerIdxSeguimientoCotizacion( $cotizaciones:ArrayCollection, $evt:* = null ):void
		{
				if( $cotizaciones != null )
				{
					_sql = new Query( $cotizaciones, [ "tipoSeguimiento", "nombreCliente", "folioCotizacion", "marca", "control", "tipoProduct", "nivelIngreso", "diasFiltro", "enTiempo", "nombreEV", "nombreVendedor", "estadoSeguimiento", "master" ]);
					if( _sql.indexObject.enTiempo != null )
					{
								var totalFT:int = _sql.indexObject.enTiempo.FT == null ? 0 : (_sql.indexObject.enTiempo.FT as Array).length;
								var totalET:int = _sql.indexObject.enTiempo.ET == null ? 0 : (_sql.indexObject.enTiempo.ET as Array).length;
								totalET = totalET + (_sql.indexObject.enTiempo.Pendiente == null ? 0: (_sql.indexObject.enTiempo.Pendiente as Array).length );
								var tasaRealizacion:Number = ( totalET * 100 ) / ( totalET + totalFT );
								_objLabels.tazaRealizacion = 'TR ' + tasaRealizacion.toFixed(2) + ' %';
					}
					if( _totalSoloUnaVez )
					{
						var total:String = _sql.universo.length.toString();
						_objLabels.TODO = total;
						_totalSoloUnaVez = false;
					}
					dispatchEvent( new Event("regresaLabels") );
					_origen = $evt.origenFiltro;
					filtrarConsultaVista( _cliente, _tipo, _marca, _control, _diaSeleccionado, _folio, _origen, _vistaGraficasBool, _esacMaster );
				}
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLabels");
				}
		}
		
		[Bindable(event="regresaCotizacionAgrupadas")]
		public function get regresarListaSeguimientoCotizacionAgrupada():ArrayCollection
		{
			return _cotizacionesSeguimientoAgrupadas;
		}
		
		public function buscarPorFolio( $strFolio:String ):void
		{
				if( _sql != null )
				{
						var folioCotizacion:Array = _sql.getCampoLike( "folioCotizacion", $strFolio );
						if( folioCotizacion.length > 0 )
						{
								filtrarConsultaVista( null, null, null, null, null, folioCotizacion[0], _origen, "tabla", _esacMaster );
								// FIXME agregar todos los resultados no solo el primero
						}
						else
						{
								dispatchEvent( new Event("regresaLimpiarPaneles") );
						}
				}
		}
		
		public function buscarPorCliente( $strCliente:String ):void
		{
				if( _sql != null )
				{
						var nombreCliente:Array = _sql.getCampoLike( "nombreCliente", $strCliente );
						if( nombreCliente.length > 0 )
						{
								filtrarConsultaVista( ( $strCliente == "" ? null : nombreCliente[0] ), null, null, null, null, null, null, "tabla", _esacMaster );
						}
						else
						{
								dispatchEvent( new Event("regresaLimpiarPaneles") );
						}
				}
		}
		
		private var currentEnEspera:Boolean;
		private var actualizarEspera:Object = new Object;
		private var numServices:uint;
		private var numServicioCompletos:uint;
		private var serviciosCompletosDifKey:Object = new Object;
		private var _repoSeguimiento:ArrayCollection;
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
			
			dispatchEvent( new Event("actualizaEsperaYBloqueoModeloReporteSeguimiento") );
		}
		
		[Bindable(event="actualizaEsperaYBloqueoModeloReporteSeguimiento")]
		public function get actualizarEstadoDeEsperaYBloqueo():Object
		{
			return actualizarEspera;
		}
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				if((EventoReporteSeguimiento[$tiposEventos[i]])== null){
					return false;
				}
			}
			return true;
		}
		public function faultError(error:Object):void{
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"");
			}
			alertaSingleton.showReintentar( error.toString(), catalogoAlertas.TIT_ERR);
		}
		
		public function filtrarConsultaVistaTodoUniverso( $var:String ):void
		{
				filtrarConsultaVista( _cliente, _tipo, _marca, _control, null, _folio, _origen, _vistaGraficasBool, _esacMaster );
		}
		
		public function settterOrigenFiltro( $origen:String, $esacMaster:String ):void
		{
			_origen =  $origen == "" ? null: $origen;
			if( _origen == "Cancelable" )
			{
				_esacMaster =  $esacMaster == "" ? null: $esacMaster;
			}
			else
			{
				_esacMaster = null;
			}
			filtrarConsultaVista( _cliente, _tipo, _marca, _control, _diaSeleccionado, _folio, _origen, _vistaGraficasBool, _esacMaster );
		}
		
		public function filtrarConsultaVista( $cliente:String, $tipo:String, $marca:String, $control:String, $diaSeleccionado:String, $folio:String, $origen:String, $vistaCurrent:String, $esacMaster:String ):void
		{
				_cotizacionesSeguimientoAgrupadas = new ArrayCollection();
				_cliente = $cliente == "" ? null: $cliente;
				_tipo =  $tipo == "" ? null: $tipo;
				_folio =  $folio == "" ? null: $folio;
				_marca =  $marca == "" ? null: $marca;
				_control =  $control == "" ? null: $control;
				_origen =  $origen == "" ? null: $origen;
				_esacMaster =  $esacMaster == "" ? null: $esacMaster;
				//trace( 'Esac en filtro ---- ' + _esacMaster );
				_diaSeleccionado = $diaSeleccionado == "" || $diaSeleccionado == "TODO" ? null: $diaSeleccionado;
				
				_vistaGraficasBool = $vistaCurrent != null && $vistaCurrent != "" ? $vistaCurrent: _vistaGraficasBool;
				if( _sql != null )
				{
						//[ "tipoSeguimiento", "nombreCliente", "folioCotizacion", "marca", "control", "tipoProduct", "nivelIngreso", "diasFiltro", "enTiempo", "nombreEV", "nombreVendedor", "estadoSeguimiento" ]
						if( _vistaGraficasBool == "grafica" )
						{
								//_cronometro = new Date();
								_pieNivelIngreso = generateChartReporte( "nivelIngreso", null, [ _origen, _cliente, _folio, _marca, _control, _tipo, "nivelIngreso", _diaSeleccionado, null, null, null, null, _esacMaster ] );
								_pieEV = generateChartReporte( "nombreEV", null, [ _origen, _cliente, _folio, _marca, _control, _tipo, null, _diaSeleccionado, null, "nombreEV", null, null, _esacMaster ] );
								_pieEsac = generateChartReporte( "nombreVendedor", null, [ _origen, _cliente, _folio, _marca, _control, _tipo, null, _diaSeleccionado, null, null, "nombreVendedor", null, _esacMaster ] );
								_pieCliente = generateChartReporte( "nombreCliente", _cliente, [ _origen, "nombreCliente", _folio, _marca, _control, _tipo, null, _diaSeleccionado, null, null, null, null, _esacMaster ] );
								_pieMarca = generateChartReporte( "marca", _marca, [ _origen, _cliente, _folio, "marca", _control, _tipo, null, _diaSeleccionado, null, null, null, null, _esacMaster] );
								_pieTipoProducto = generateChartReporte( "tipoProduct", _tipo, [ _origen, _cliente, _folio, _marca, _control, "tipoProduct", null, _diaSeleccionado, null, null, null, null, _esacMaster ] );
								_pieEstadoSeguimiento = generateChartReporteEstadoSeguimiento( "tipoSeguimiento", [  "tipoSeguimiento" , _cliente, _folio, _marca, _control, _tipo, null, _diaSeleccionado, null, null, null, null, _esacMaster ] );
								_pieEstadoConfirmacion = generateChartReporteEstadoConfirmacion( "estadoSeguimiento", [ "Confirmación", _cliente, _folio, _marca, _control, _tipo, null, _diaSeleccionado, null, null, null, "estadoSeguimiento", _esacMaster ] );
								
								dispatchEvent( new Event("regresaGraficaNivelIngreso") );
								dispatchEvent( new Event("regresaGraficaEV") );
								dispatchEvent( new Event("regresaGraficaEsac") );
								dispatchEvent( new Event("regresaGraficaCliente") );
								dispatchEvent( new Event("regresaGraficaMarca") );
								dispatchEvent( new Event("regresaGraficaTipoProducto") );
								dispatchEvent( new Event("regresaGraficaEstadoSeguimiento") );
								dispatchEvent( new Event("regresaGraficaEstadoConfirmacion") );
								
								//var diferencia:Number = (new Date().time - _cronometro.time)/ 1000;
								//trace( '##### tiempo creacion graficas: ' + diferencia.toString() );
						}
						else
						{
								var ultimoMontoTotal:Number = 0;
								//var nombresCliente:Array =  _sql.getPunteros( [ _origen, "nombreCliente", _folio, _marca, _control, _tipo, null, _diaSeleccionado, null, null, null, null ]);
								var nombresCliente:* =  _sql.getPunteros([ null, "nombreCliente" ]);
								var idxNombreCliente:Array = _cliente == "" || _cliente == null ? nombresCliente : [ _cliente ];//"nombreCliente"
								var numFFila:int = 0;
								for( var f:int = 0; f < idxNombreCliente.length; f++ )
								{		 
											var punterosCadaCliente:Array = _sql.getPunteros( [ _origen, idxNombreCliente[ f ], _folio, _marca, _control, _tipo, null, _diaSeleccionado, null, null, null, null, _esacMaster ]);
											if( punterosCadaCliente.length > 0 )
											{
													numFFila++;
													var cotizacionNew:SeguimientoCotizacionAgrupada = new SeguimientoCotizacionAgrupada();
													cotizacionNew.numFila = numFFila;
													cotizacionNew.nombreCliente = idxNombreCliente[ f ];
													var estatus:Array = _sql.getValoresCampo( "estadoSeguimiento", punterosCadaCliente );
													if( estatus.indexOf( 'Por Realizar' ) != -1 || estatus.indexOf( 'En Realización(email)' ) != -1 || estatus.indexOf( 'En Realización' ) != -1 )
														cotizacionNew.estatusMasCritico =  "No Trabajada";
													if( estatus.indexOf( 'Cotización Reenviada' ) != -1 )
														cotizacionNew.estatusMasCritico =  "Cotización no recibida";
													if( estatus.indexOf( 'Contacto NO Localizado' ) != -1 )
														cotizacionNew.estatusMasCritico =  "Contacto No Localizado";
													cotizacionNew.monto = _sql.getSumarCampo( "montoCotizacion", punterosCadaCliente ); //, "folioCotizacion" ); // solo sumo el primero porque todos los seguimientos tienen la suma total de la cotizacion
													cotizacionNew.piezas = _sql.getSumarCampo( "piezas", punterosCadaCliente );
													cotizacionNew.totalCotizaciones = _sql.getValoresCampo( "folioCotizacion", punterosCadaCliente ).length;
													
													//"nombreEV", "nombreVendedor",
													
													var sqlArrayEV:Array = _sql.getValoresCampo( "nombreEV", punterosCadaCliente );
													cotizacionNew.nombreVendedor = sqlArrayEV[0];
													var sqlArrayESAC:Array = _sql.getValoresCampo( "nombreVendedor", punterosCadaCliente );
													cotizacionNew.nombreESAC = sqlArrayESAC[0];
													//cotizacionNew.nombreESAC =
													// cotizacionNew.nombreVendedor = _sql.getValoresCampo( "nombreEV", punterosCadaCliente ).length;
													ultimoMontoTotal += cotizacionNew.monto;
													_cotizacionesSeguimientoAgrupadas.addItem( cotizacionNew );
											}
								}
								var lastItem:SeguimientoCotizacionAgrupada = new SeguimientoCotizacionAgrupada();
								lastItem.ultimo = _cotizacionesSeguimientoAgrupadas.length.toString();
								lastItem.monto = ultimoMontoTotal;
								_cotizacionesSeguimientoAgrupadas.addItem( lastItem );
						}
						var diasFiltro:Array = [ "PASADO", "DIA-3", "DIA-2", "DIA-1", "DIA0", "DIA1", "DIA2", "DIA3", "FUTURO" ];
						for( var t:int = 0; t < diasFiltro.length; t++ )
						{
								var punterosDia:Array = _sql.getPunteros([ _origen, _cliente, _folio, _marca, _control, _tipo, null, diasFiltro[t], null, null, null, null, _esacMaster ]);
								var total:String = punterosDia.length == 0 ? '': punterosDia.length.toString(); //_sql.getValoresCampo( "folioCotizacion", punterosDia ).length;
								_objLabels[ diasFiltro[t] ] = total;
						}
						var fechaHoy:Date = new Date();
						var fechaAyer:Date = new Date();
						fechaAyer.setDate( fechaHoy.getDate() - 1 );
						var fechaManana:Date = new Date();
						fechaManana.setDate( fechaHoy.getDate() + 1 );
						_objLabels.hoy = _arrEtiquetaDia[ fechaHoy.day ] + ' ' + fechaHoy.date;
						_objLabels.ayer = _arrEtiquetaDia[ fechaAyer.day ] + ' ' + fechaAyer.date;
						_objLabels.manana = _arrEtiquetaDia[ fechaManana.day ] + ' ' + fechaManana.date;
						_objLabels.panelUnoTitulo = encabezadoClientes( _diaSeleccionado );
						_objLabels.origen = _origen;
						
						dispatchEvent( new Event("regresaLimpiarPaneles") );
						dispatchEvent(new Event("regresaCotizacionAgrupadas"));
						dispatchEvent( new Event("regresaLabels") );
				}
		}
		//			PANEL 2
		public function filtrarClientePanelDos( $cliente:String ):void
		{
				_cotizacionesPorCliente = new ArrayCollection();
				var tempCotizaciones:ArrayCollection = ObjectUtil.copy( _sql.ensamblarLista( [ _origen, $cliente, null, _marca, _control, _tipo, null, _diaSeleccionado, null, null, null, null, _esacMaster ], "folioCotizacion" ) ) as ArrayCollection;
				var indicesCotizacion:Array = _sql.getPunteros( [ _origen, $cliente, null, _marca, _control, _tipo, null, _diaSeleccionado, null, null, null, null, _esacMaster ] );
				var numFFila:int = 0;
				for( var f:int = 0; f < tempCotizaciones.length; f++ )
				{
						var currentFila:SeguimientoCotizacion = tempCotizaciones[f] as SeguimientoCotizacion;
						var folioCot:String = currentFila.folioCotizacion;
						//[ "nombreCliente", "folioCotizacion", "marca", "control", "tipoProduct", "nivelIngreso", "diasFiltro", "enTiempo", "nombreEV", "nombreVendedor", "estadoSeguimiento" ]);
						var indicesCurrent:Array = _sql.getPunteros( [ _origen, $cliente, folioCot, _marca, _control, _tipo, null, _diaSeleccionado, null, null, null, null, _esacMaster ] ); //_sql.getPunteros( [ null, null, folioCot ] );
						currentFila.montoCotizacion = 0;
						var montoSuma:Number = _sql.getSumarCampo( "montoCotizacion", indicesCurrent );
						currentFila.montoCotizacion = montoSuma > -1 ? montoSuma: -9999 ;
						currentFila.piezas = 0;
						var piezasSuma:Number = _sql.getSumarCampo( "piezas", indicesCurrent );
						currentFila.piezas = piezasSuma > -1 ? piezasSuma: -666 ;
						_cotizacionesPorCliente.addItem( currentFila );
				}
				var lastItem:SeguimientoCotizacionAgrupada = new SeguimientoCotizacionAgrupada();
				lastItem.ultimo = tempCotizaciones.length.toString();
				lastItem.monto = _sql.getSumarCampo( "montoCotizacion", indicesCotizacion ); //, "folioCotizacion" );
				lastItem.piezas = _sql.getSumarCampo( "piezas", indicesCotizacion ); //, "folioCotizacion" );
				_cotizacionesPorCliente.addItem( lastItem );
				//trace( 'Ultimo cliente pedido: ' + $cliente + ' :: ' + new Date().time );
				dispatchEvent( new Event("regresaCotizacionesPorCliente") );
		}
		
		[Bindable(event="regresaCotizacionesPorCliente")]
		public function get regresarCotizacionesPorCliente():ArrayCollection
		{
				return _cotizacionesPorCliente;
		}
		//			/PANEL 2
		
		private function encabezadoClientes( $dia:String ):String
		{
				var stReturn:String = "";
				if( $dia == "DIA0" )	stReturn = "HOY / " + _objLabels.hoy;
				if( $dia == "DIA-1" ) stReturn =  "AYER / " + _objLabels.ayer;
				if( $dia == "DIA-2" ) stReturn =  "ANTIER";
				if( $dia == "DIA-3" ) stReturn =  "ANTE ANTIER";
				if( $dia == "PASADO" ) stReturn =  "PASADO";
				if( $dia == "DIA1" ) stReturn =  "MAÑANA / " + _objLabels.manana;
				if( $dia == "DIA2" ) stReturn =  "PASADO MAÑANA";
				if( $dia == "DIA3" ) stReturn =  "POSPASADO";
				if( $dia == "FUTURO" )	stReturn =  "FUTURO";
				return stReturn;
		}
		
		[Bindable(event="regresaLabels")]
		public function get regresarObjLabels():Object
		{
				return  _objLabels;
		}
		
		public function limpiaPanaelesFiltroBotoneraVacio():void{
			dispatchEvent(new Event("regresaLimpiarPaneles"));
		}
		
		
		[Bindable(event="regresaLimpiarPaneles")]
		public function get regresarClean():Boolean
		{
			return  true;
		}
		
		private var _arrEtiquetaDia:Array = [ "Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado" ];
		private var _labelFiltro:String;
		
		public function mandarLabelFiltro( $cliente:int, $empleado:String, $filtro:int ):void
		{
			_labelFiltro = $filtro == 1 ? 'Confirmación': 'Seguimiento';
			dispatchEvent(new Event("regresarFiltroCotizaciones"));
		}
		
		[Bindable(event="regresarFiltroCotizaciones")]
		public function get regresarFiltroCotizacion():String
		{
			return _labelFiltro;
		}
		
		[Bindable (event="regresarCotizacionesSeguimientoEvent")]
		public function get regresarCotizacionesSeguimiento():ArrayCollection
		{
			return _cotizacionesSeguimientoAgrupadas;
		}
	
		public function resultObtenerPartidasSeguimiento($partidas:ArrayCollection):void
		{
			_partidasSeguimiento = new ArrayCollection();
			if( $partidas != null && $partidas.length > 0 )
			{
					_partidasSeguimiento = $partidas;
					var folioPartida:String = (_partidasSeguimiento[0] as PartidaCotizacionEnSeguimiento).folioCotizacion;
					var primerCotizacion:SeguimientoCotizacion = _sql.ensamblarLista( [null, null, folioPartida ] ).length > 0 ? _sql.ensamblarLista( [null, null, folioPartida ] ).getItemAt(0) as SeguimientoCotizacion: null;
					if( primerCotizacion == null ) return;
					var fechaCotizacion:Date = primerCotizacion.fechaSiguienteContacto;
					for( var m:int = 0; m< _partidasSeguimiento.length; m++ )
					{
							_partidasSeguimiento[m].numFila = m +1;
							var necesariosEnfoque:int = 1;
							var cuentaEnfoque:int = 0;
							if( _tipo != null && _tipo.length > 0 )
								necesariosEnfoque++;
							if( _control != null && _control.length > 0 )
								necesariosEnfoque++;
							if( _marca != null && _marca.length > 0 )
								necesariosEnfoque++;
							var currentFila:PartidaCotizacionEnSeguimiento = _partidasSeguimiento[m] as PartidaCotizacionEnSeguimiento;
							if( currentFila.fechaSiguiente != null && fechaCotizacion != null )
							{
										if( currentFila.fechaSiguiente.date == fechaCotizacion.date 
											&& currentFila.fechaSiguiente.month == fechaCotizacion.month
											&& currentFila.fechaSiguiente.fullYear == fechaCotizacion.fullYear)
											cuentaEnfoque++;
							}
							if( currentFila.tipo == _tipo )
								cuentaEnfoque++;
							if( currentFila.control == _control )
								cuentaEnfoque++;
							if( currentFila.marca == _marca )
								cuentaEnfoque++;
							if( cuentaEnfoque == necesariosEnfoque 
								&& currentFila.estado != "Recotizada"
								&& currentFila.estado != "Pedido"
								&& currentFila.estado != "Cancelada" )
								currentFila.enfocado = true;
					}
			}
			var numericDataSort:Sort = new Sort();
			numericDataSort.fields = [new SortField( "ultimo" ), new SortField( "enfocado", true )];
			$partidas.sort = numericDataSort;
			$partidas.refresh();
			_partidasSeguimiento = $partidas;
			actualizaUltimo( _partidasSeguimiento );
			dispatchEvent(new Event("regresarPartidasSeguimientoEvent"));
		}
		
		[Bindable (event="regresarPartidasSeguimientoEvent")]
		public function get regresarPartidasSeguimiento():ArrayCollection
		{
			return _partidasSeguimiento;
		}
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		public function recibirPartidaSeleccionada($partida:PartidaCotizacionEnSeguimiento):void
		{
			_partidaSeleccionada = new PartidaCotizacionEnSeguimiento();
			_partidaSeleccionada = $partida;
			dispatchEvent(new Event("regresarPartidaSeleccionadaEvent"));
		}
		
		[Bindable (event="regresarPartidaSeleccionadaEvent")]
		public function get regresarPartidaSeleccionada():PartidaCotizacionEnSeguimiento
		{
			return _partidaSeleccionada;
		}
		
		protected function actualizaUltimo( $lista: ArrayCollection ):ArrayCollection
		{
				if( $lista == null )
					return $lista;
				var ultimoItem:SeguimientoCotizacionAgrupada;
				for( var k:int = 0; k < $lista.length; k++ )
				{
						if( $lista[ k ] is SeguimientoCotizacionAgrupada )
						{
								var currentSeguimiento:SeguimientoCotizacionAgrupada = $lista[k] as SeguimientoCotizacionAgrupada;
								if( currentSeguimiento.ultimo != "" )
								{
										ultimoItem = currentSeguimiento;
								}
						}
				}
				if( ultimoItem == null )
				{
						ultimoItem = new SeguimientoCotizacionAgrupada();
						ultimoItem.ultimo = $lista.length.toString();
						$lista.addItem(ultimoItem);
				}
				else
				{
						ultimoItem.ultimo = ($lista.length -1).toString();
				}
				return $lista;
		}
		
		[Bindable(event="regresaGraficaEV")]
		public function get regresarGraficaEV():ArrayCollection
		{
			return _pieEV;
		}
		
		[Bindable(event="regresaGraficaEsac")]
		public function get regresarGraficaEsac():ArrayCollection
		{
			return _pieEsac;
		}
		
		[Bindable(event="regresaGraficaNivelIngreso")]
		public function get regresarGraficaNivelIngreso():ArrayCollection
		{
			return _pieNivelIngreso;
		}
		
		[Bindable(event="regresaGraficaTipoProducto")]
		public function get regresarGraficaTipoProducto():ArrayCollection
		{
			return _pieTipoProducto;
		}
		
		[Bindable(event="regresaGraficaCliente")]
		public function get regresarGraficaCliente():ArrayCollection
		{
			return _pieCliente;
		}
		
		[Bindable(event="regresaGraficaMarca")]
		public function get regresarGraficaMarca():ArrayCollection
		{
			return _pieMarca;
		}
		
		[Bindable(event="regresaGraficaEstadoSeguimiento")]
		public function get regresarGraficaEstadoSeguimiento():ArrayCollection
		{
			return _pieEstadoSeguimiento;
		}
		
		[Bindable(event="regresaGraficaEstadoConfirmacion")]
		public function get regresarGraficaEstadoConfirmacion():ArrayCollection
		{
			return _pieEstadoConfirmacion;
		}
		
		private function generateChartReporteEstadoConfirmacion( $propiedad:String, $consulta:Array ):ArrayCollection
		{
			var arrayProvider:ArrayCollection = new ArrayCollection();
			if( _sql.indexObject[ $propiedad ] != null )
			{
				var resumenNoTrabajada:ResumenConsulta = new ResumenConsulta();
				resumenNoTrabajada.total = 0;
				resumenNoTrabajada.cotizacionesTotal = 0;
				resumenNoTrabajada.partidas = 0;
				resumenNoTrabajada.clientes = 0;
				resumenNoTrabajada.piezasTotal = 0;
				var resumenCotNoRecib:ResumenConsulta = new ResumenConsulta();
				resumenCotNoRecib.total = 0;
				resumenCotNoRecib.cotizacionesTotal = 0;
				resumenCotNoRecib.partidas = 0;
				resumenCotNoRecib.clientes = 0;
				resumenCotNoRecib.piezasTotal = 0;
				var resumenContactoNo:ResumenConsulta = new ResumenConsulta();
				resumenContactoNo.total = 0;
				resumenContactoNo.cotizacionesTotal = 0;
				resumenContactoNo.partidas = 0;
				resumenContactoNo.clientes = 0;
				resumenContactoNo.piezasTotal = 0;
				var cachoPie:ResumenConsulta = null; //new ResumenConsulta();
				for( var key:String in _sql.indexObject[ $propiedad ] )
				{
					var posIdx:int = $consulta.indexOf( $propiedad );
					if( posIdx != -1 )
					{// contiene el campo a filtrar
						var consultaReformulada:Array = ObjectUtil.copy( $consulta ) as Array; 
						consultaReformulada[ posIdx ] = key;
						var punterosFiltro:Array = _sql.getPunteros( consultaReformulada );
						var sumarBool:Boolean = false;
						if( key == 'Por Realizar' || key == 'En Realización(email)' ||  key == 'En Realización' )
						{
								resumenNoTrabajada.etiqueta =  "No Trabajada";
								resumenNoTrabajada.total += _sql.getSumarCampo( "montoCotizacion", punterosFiltro); //, "folioCotizacion" );
								resumenNoTrabajada.cotizacionesTotal += _sql.getPunteros( consultaReformulada, "folioCotizacion" ).length;
								resumenNoTrabajada.partidas += _sql.getPunteros( consultaReformulada ).length;
								resumenNoTrabajada.clientes += _sql.getPunteros( consultaReformulada, "nombreCliente" ).length;
								resumenNoTrabajada.piezasTotal += _sql.getSumarCampo( "piezas", punterosFiltro); //, "folioCotizacion"  );
								sumarBool = true;
						}
						else if( key == 'Cotización Reenviada' )
						{
								resumenCotNoRecib.etiqueta =  "Cotización no recibida";
								resumenCotNoRecib.total += _sql.getSumarCampo( "montoCotizacion", punterosFiltro); //, "folioCotizacion" );
								resumenCotNoRecib.cotizacionesTotal += _sql.getPunteros( consultaReformulada, "folioCotizacion" ).length;
								resumenCotNoRecib.partidas += _sql.getPunteros( consultaReformulada ).length;
								resumenCotNoRecib.clientes += _sql.getPunteros( consultaReformulada, "nombreCliente" ).length;
								resumenCotNoRecib.piezasTotal += _sql.getSumarCampo( "piezas", punterosFiltro); //, "folioCotizacion"  );
								sumarBool = true;
						}
						else if( key == 'Contacto NO Localizado' )
						{
								resumenContactoNo.etiqueta =  "Contacto No Localizado";
								resumenContactoNo.total += _sql.getSumarCampo( "montoCotizacion", punterosFiltro); //, "folioCotizacion" );
								resumenContactoNo.cotizacionesTotal += _sql.getPunteros( consultaReformulada, "folioCotizacion" ).length;
								resumenContactoNo.partidas += _sql.getPunteros( consultaReformulada ).length;
								resumenContactoNo.clientes += _sql.getPunteros( consultaReformulada, "nombreCliente" ).length;
								resumenContactoNo.piezasTotal += _sql.getSumarCampo( "piezas", punterosFiltro); //, "folioCotizacion"  );
								sumarBool = true;
						}
					}
				}
				arrayProvider.addItem( resumenContactoNo );
				arrayProvider.addItem( resumenCotNoRecib );
				arrayProvider.addItem( resumenNoTrabajada );
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
		
		private function generateChartReporteEstadoSeguimiento( $propiedad:String, $consulta:Array ):ArrayCollection
		{
			var arrayProvider:ArrayCollection = new ArrayCollection();
			if( _sql.indexObject[ $propiedad ] != null )
			{
				for( var key:String in _sql.indexObject[ $propiedad ] )
				{
					var posIdx:int = $consulta.indexOf( $propiedad );
					if( posIdx != -1 && key != "Confirmación" )
					{// contiene el campo a filtrar
						var cachoPie:ResumenConsulta = new ResumenConsulta();
						var consultaReformulada:Array = ObjectUtil.copy( $consulta ) as Array; 
						consultaReformulada[ posIdx ] = key;
						var punterosFiltro:Array = _sql.getPunteros( consultaReformulada );
						cachoPie.etiqueta = key;
						cachoPie.total = _sql.getSumarCampo( "montoCotizacion", punterosFiltro); //, "folioCotizacion" );
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
										cachoPie.total = _sql.getSumarCampo( "montoCotizacion", punterosFiltro); //, "folioCotizacion" );
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

		public function faultObtenerPartidasSeguimiento(fault:Object):void
		{
			trace( fault.toString() );
		}
		
		public function faultObtenerCotizacionesSeguimientoPartidas(fault:Object):void
		{
			trace(fault.toString());
		}
	}
}