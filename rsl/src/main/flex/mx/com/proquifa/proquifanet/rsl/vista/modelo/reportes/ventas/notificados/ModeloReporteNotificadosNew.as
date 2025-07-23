package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.ventas.notificados
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.collections.SortField;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.ventas.notificados.EventoReporteNotificadosNew;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Etiqueta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.ReporteNotificados;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.SeguimientoCotizacionAgrupada;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.DatosGlobales;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;

	public class ModeloReporteNotificadosNew extends EventDispatcher
	{
		public function ModeloReporteNotificadosNew(target:IEventDispatcher= null)
		{
			super(target);	
		}
		
		/**
		 ************************************************************** Obtener Reporte Notificados ********************************************************
		 */
		private var _reporNoti:ArrayCollection;
		private var _reporNotiModif:ArrayCollection;
		private var _prueba:ReporteNotificados;
		private var _cliente:String;
		private var _avisoCambio:String;
		private var _diaSeleccionado:String;
		private var _etiqueta:String;
		private var _responsable:String;
		private var _master:String="";
		private var _cPedido:String;
		private var _dia:Object = new Object();
		private var _concepto:String;
		private var _switch:String;
		private var _todos:String;
		private var _label:String;
		private var _TipodeNotificacion:String;
		private var _filtrarPorCliente:ArrayCollection;
		private var _filtrarPorCpedido:ArrayCollection;
		private var _filtrarPorDetalles:ArrayCollection;
		private var _sql:Query;
		private var _objLabels:Object = new Object();
		private var _arrEtiquetaDia:Array = [ "Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado" ];
		private var _marca:String;
		private var _clasificacion:String="";
		private var _grafica:String="";
		private var _control:String="";
		private var _tipoResponsable:String="";
		private var _usuarioEv:String="";
		private var _datos:Object = new Object();
		
		private var _pieNivelIngreso:ArrayCollection;
		private var _pieClientes:ArrayCollection;
		private var _pieEV:ArrayCollection;
		private var _pieESAC:ArrayCollection;
		private var _pieMonto:ArrayCollection;
		private var _pieRazonAC:ArrayCollection;
		private var _pieTipoAviso:ArrayCollection;
		private var _pieEnvNoEnviado:ArrayCollection;
		private var _pieMarca:ArrayCollection;
		private var _pieTipoProducto:ArrayCollection;
		
		private var _modifpieNivelIngreso:ArrayCollection;
		private var _modifpieMontos:ArrayCollection;
		private var _modfipieClientes:ArrayCollection;
		private var _modfipieInconsistencias:ArrayCollection;
		private var _modifpieEV:ArrayCollection;
		private var _ModifpieESAC:ArrayCollection;
		
		private var _emp:Empleado = DatosGlobales.getInstance()._usuario;
		[Bindable]	private var _esGerente:Boolean = false;
		
		
		
		public function resultObtenerReportesNotificados($reporteNotificados:ArrayCollection):void{
			if( $reporteNotificados == null ) return;
			
			_sql = new Query( $reporteNotificados, ["etiqueta", "cliente", "diasFiltro",  "responsable", "cpedido","concepto","fee","feePropuesta","comentInterlocutor","folio","incosistencia","tipoProd","marca","clasificacion","control","razon","tipoDeNotificacion","nivel","ev","edoNotif","diasDeAtraso","mastr"])
			
			if( _sql != null ){
				
				if( _emp.idFuncion == 5 || _emp.idFuncion == 7){
					
					_responsable = _emp.idFuncion == 5 ? _emp.usuario :"";
					
				}else{
					if( _emp.usuario == "CTirado" ){
						_responsable="";
					}else if( _emp.idFuncion == 37 ){ // esac master
						
					}
					
				}
				
				filtrarNotificados(_etiqueta, _cliente, _diaSeleccionado,_responsable,_cPedido,_TipodeNotificacion,_marca,_clasificacion,_control,_tipoResponsable);
			}
		} 
		
		public function resultObtenerReportesNotificadosModificados($reporteNotificados:ArrayCollection):void{
			if( $reporteNotificados == null ) return;
			
			_sql = new Query( $reporteNotificados, ["etiqueta", "cliente", "diasFiltro",  "responsable", "cpedido","concepto","fee","feePropuesta","comentInterlocutor","folio","incosistencia","tipoProd","marca","clasificacion","control","razon","tipoDeNotificacion","nivel","ev","edoNotif","diasDeAtraso"])
			
			if( _sql != null ){
				
				if( _emp.idFuncion == 5 || _emp.idFuncion == 7){
					//_responsable=_emp.usuario;
					_responsable = _emp.idFuncion == 5 ? _emp.usuario :"";
				}else{
					if( _emp.usuario == "CTirado" ){
						_responsable="";
					}else if( _emp.idFuncion == 37 ){ // esac master
						
					}
				}
				
				filtrarNotificadosMODIF(_etiqueta, _cliente, _diaSeleccionado,_responsable,_cPedido,_clasificacion,_tipoResponsable);
			}
		} 
		
		
		public function resultObtenerReportesNotificadosAvanzada($reporteNotificados:ArrayCollection):void{
			if( $reporteNotificados == null ) return;
			
			_sql = new Query( $reporteNotificados, ["etiqueta", "cliente", "diasFiltro",  "responsable", "cpedido","concepto","fee","feePropuesta","comentInterlocutor","folio","incosistencia","tipoProd","marca","clasificacion","control","razon","tipoDeNotificacion","nivel","ev","edoNotif","diasDeAtraso"])
			
			if( _sql != null ){
				if( _emp.idFuncion == 5 || _emp.idFuncion == 7){
					_responsable=_emp.usuario;
				}else{
					if( _emp.usuario == "CTirado" ){
						_responsable="";
					}else if( _emp.idFuncion == 37 ){ // esac master
						
					}
				}
				
				filtrarNotificadosMODIF("", "", "", _responsable, "", "","");
			}
		} 

		
		private function encabezadoClientes( $dia:String ):String{
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

		
		
	///////////////////////////////////////////////////////////////// NUMERO DE BOTONERA  /////////////////////////////////////////////////////////////
		
		public function datosBotonera ($etiqueta:String, $cliente:String, $responsable:String ):void{
			_cliente = $cliente == ""  || $cliente == "--TODOS--" ? null: $cliente;
			_etiqueta = $etiqueta == "" ? null: $etiqueta;
			//_responsable = $responsable == ""  || $responsable == "--TODOS--" ?  null:$responsable;
			var numFFila:int = 0;
			var cont:Number=0;
			var ultimoItem:ReporteNotificados = new ReporteNotificados();
			ultimoItem.monto = 0;
			if( _sql != null ){
				_reporNoti = new ArrayCollection();
				var commentInter:String;
				//var etiquetas:Array = _cliente == null ? _sql.getPunteros([ "etiqueta", null, null,null]): [_etiqueta];
				var nombresCliente:Array = _cliente == null ? _sql.getPunteros([null, "cliente",  null, null ]): [_cliente];
				for( var f:int = 0; f < nombresCliente.length; f++){
				}
				var diasFiltro:Array = [ "PASADO", "DIA-3", "DIA-2", "DIA-1", "DIA0", "DIA1", "DIA2", "DIA3", "FUTURO","TODO" ];
				for( var t:int = 0; t < 9; t++ ){
					//[ "nombreCliente", "folioCotizacion", "marca", "control", "tipoProduct", "nivelIngreso", "diasFiltro", "enTiempo", "nombreEV", "nombreVendedor", "estadoSeguimiento" ]);
					
					var daa:String = diasFiltro[t];
					var total:String="";
					var punterosDia:Array = new Array;
					if (_etiqueta == 'AVISO'){
						punterosDia = _sql.getPunteros([ _etiqueta ,null,daa ]);
						 total = punterosDia.length == 0 ? '0': punterosDia.length.toString(); //_sql.getValoresCampo( "folioCotizacion", punterosDia ).length;
					}else{
						punterosDia = _sql.getPunteros([ _etiqueta ,null,daa ],"folio");
						 total = punterosDia.length == 0 ? '0': punterosDia.length.toString(); //_sql.getValoresCampo( "folioCotizacion", punterosDia ).length;
					}
						
					cont = cont + parseInt(total);
					_objLabels[ diasFiltro[t] ] = total;
					
				}
					_objLabels[ diasFiltro[9] ] = cont;
				
						var fechaHoy:Date = new Date();
						var fechaAyer:Date = new Date();
						fechaAyer.setDate( fechaHoy.getDate() - 1 );
						var fechaManana:Date = new Date();
						fechaManana.setDate( fechaHoy.getDate() + 1 );
						_objLabels.hoy = _arrEtiquetaDia[ fechaHoy.day ] + ' ' + fechaHoy.date;
						_objLabels.ayer = _arrEtiquetaDia[ fechaAyer.day ] + ' ' + fechaAyer.date;
						_objLabels.manana = _arrEtiquetaDia[ fechaManana.day ] + ' ' + fechaManana.date;
						_objLabels.panelUnoTitulo = encabezadoClientes( _diaSeleccionado );
						_objLabels.origen = _etiqueta;
						
						
						dispatchEvent( new Event("regresaLabels") );
			}
				
		}
		
		[Bindable(event="regresaLabels")]
		public function get regresarObjLabels():Object{
			return  _objLabels;
		}
		//////////////////////////////////////////////////////////////////////
		
		
		/////////////////////////////// TITULO FECHA  ///////////////////////////////////
		
/*		public function tituloFecha ($diaFiltro:String):void{
			
				 _dia.fecha = $diaFiltro;
				dispatchEvent( new Event("regresaFecha") );
		}
		*/
		[Bindable(event="regresaFecha")]
		public function get regresarfecha():Object{
			return  _diaSeleccionado;
		}
		//////////////////////////////////////////////////////////////////////
		
		
		
		///////////////////////////////////////////////////////////////// FILTRO PRINCIPAL
		
		public function filtrarNotificados( $etiqueta:String, $cliente:String, $diaFiltro:String, $responsable:String, $cPedido:String, $TipoNotifiaccion:String, $marca:String,$clasificacion:String,$control:String, $tipoResponsable:String):void{
			_cliente = $cliente == ""  || $cliente == "--TODOS--" ? null : $cliente;
			if ($diaFiltro =="" || $diaFiltro == null ){
				_diaSeleccionado="DIA0";
			}else{
				_diaSeleccionado= $diaFiltro;
			}
			if  ($diaFiltro =="TODO"){
				_diaSeleccionado= null;
			}
			_etiqueta = $etiqueta == "" || $etiqueta == null ? 'AVISO' : $etiqueta;
			
			if ($tipoResponsable == "ev"){
				_usuarioEv = $responsable;
				_responsable = null;
			}else{
				_usuarioEv = null;
				_responsable = $responsable == ""  || $responsable == "--TODOS--" ?  null : $responsable;
			}
			
			_TipodeNotificacion = $TipoNotifiaccion == "" || $TipoNotifiaccion == "--TODOS--" ?  null : $TipoNotifiaccion;
			_marca = $marca == "" || $marca == "--TODOS--" ?  null : $marca;
			_clasificacion = $clasificacion == "" ? null : $clasificacion;
			_control = $control == "" || $control == "--TODOS--" ?  null : $control;
			var numFFila:int = 0;
			var ultimoItem:ReporteNotificados = new ReporteNotificados();
			ultimoItem.montof = 0;
			var cont:Number=0;
			var piezaFin:Number=0;
			
			dispatchEvent( new Event("regresaFecha") );
			
			if( _sql != null ){
				_reporNoti = new ArrayCollection();
				var commentInter:String;
				var nombresCliente:Array = _cliente == null ? _sql.getPunteros([null, "cliente",  null, null ]): [_cliente];
				_sql.indexObject.clasificacion =[];
				_sql.indexObject.clasificacion["0 - $2,000"]=[];
				_sql.indexObject.clasificacion["$2,001-$10,000"]=[];
				_sql.indexObject.clasificacion["> $10,000"]=[];
				for( var f:int = 0; f < nombresCliente.length; f++){
					var punterosEtiqueta:Array = _sql.getPunteros([ _etiqueta,nombresCliente[f], _diaSeleccionado, _responsable,null,null,null,null,null,null,null,_TipodeNotificacion,_marca,null,_control,null,null,null,_usuarioEv ]);
					if (punterosEtiqueta.length>0){
							var sumMont:Number = _sql.getSumarCampo( "monto", punterosEtiqueta);
							
							if (sumMont <= 2000){
								for( var h:int = 0; h < punterosEtiqueta.length; h++){
									_sql.indexObject.clasificacion["0 - $2,000"].push(punterosEtiqueta[h]);
								}
							}
							if (sumMont > 2000 && sumMont <= 10000){
								for( var z:int = 0; z < punterosEtiqueta.length; z++){
									_sql.indexObject.clasificacion["$2,001-$10,000"].push(punterosEtiqueta[z]);
								}
							}
									if (sumMont > 10000){
							for( var y:int = 0; y < punterosEtiqueta.length; y++){
									_sql.indexObject.clasificacion["> $10,000"].push(punterosEtiqueta[y]);
								}
							}
							
						}
					}
				
				///////PIE CHARTS   ////////////////////////////////////////////////////////////////////////        								 "tipoProd","marca","clasificacion","control","razon","tipoDeNotificacion","nivel","ev","edoNotif"
				_pieNivelIngreso = generateChartReporte( "nivel", null, [_etiqueta,_cliente,_diaSeleccionado, _responsable,null,null,null,null,null,null,null,_TipodeNotificacion,_marca,null,_control,null,null,"nivel",_usuarioEv ] );
				_pieClientes = generateChartReporte( "cliente", _cliente, [_etiqueta,"cliente",_diaSeleccionado, _responsable,null,null,null,null,null,null,null,_TipodeNotificacion,_marca,null,_control,null,null,null,_usuarioEv ] );
				_pieEV = generateChartReporte( "ev", _usuarioEv, [_etiqueta,_cliente,_diaSeleccionado, _responsable,null,null,null,null,null,null,null,_TipodeNotificacion,_marca,null,_control,null,null,null,"ev" ] );
				_pieESAC = generateChartReporte( "responsable", _responsable, [_etiqueta,_cliente,_diaSeleccionado, "responsable",null,null,null,null,null,null,null,_TipodeNotificacion,_marca,null,_control,null,null,null,_usuarioEv ] );
				_pieMonto = generateChartReporte( "clasificacion", null, [_etiqueta,_cliente,_diaSeleccionado, _responsable,null,null,null,null,null,null,null,_TipodeNotificacion,_marca,"clasificacion",_control,null,null,null,_usuarioEv ] );
				_pieRazonAC = generateChartReporte( "razon", null, [_etiqueta,_cliente,_diaSeleccionado, _responsable,null,null,null,null,null,null,null,_TipodeNotificacion,_marca,null,_control,"razon",null,null,_usuarioEv ] );
				_pieTipoAviso = generateChartReporte( "tipoDeNotificacion", null, [_etiqueta,_cliente,_diaSeleccionado, _responsable,null,null,null,null,null,null,null,_TipodeNotificacion,_marca,null,_control,null,"tipoDeNotificacion",null,_usuarioEv ] );
				_pieEnvNoEnviado = generateChartReporte( "edoNotif", null, [_etiqueta,_cliente,_diaSeleccionado, _responsable,null,null,null,null,null,null,null,_TipodeNotificacion,_marca,null,_control,null,null,null,_usuarioEv,"edoNotif" ] );
				_pieMarca = generateChartReporte( "marca", _marca, [_etiqueta,_cliente,_diaSeleccionado, _responsable,null,null,null,null,null,null,null,_TipodeNotificacion,"marca",null,_control,null,null,null,_usuarioEv ] );
				_pieTipoProducto = generateChartReporte( "tipoProd", _TipodeNotificacion, [_etiqueta,_cliente,_diaSeleccionado, _responsable,null,null,null,null,null,null,null,"tipoProd",_marca,null,_control,null,null,null,_usuarioEv ] );
				
				
				
				
				
				dispatchEvent( new Event("regresaGraficaNivelIngreso") );
				dispatchEvent( new Event("regresaGraficaClientes") );
				dispatchEvent( new Event("regresaGraficaEV") );
				dispatchEvent( new Event("regresaGraficaESAC") );
				dispatchEvent( new Event("regresaGraficaMonto") );
				dispatchEvent( new Event("regresaGraficaRazon") );
				dispatchEvent( new Event("regresaGraficaTipoAviso") );
				dispatchEvent( new Event("regresaGraficaEnviadoNoEnviado") );
				dispatchEvent( new Event("regresaGraficaMarca") );
				dispatchEvent( new Event("regresaGraficaTipoProducto") );
				/////////PIE CHARTS   ////////////////////////////////////////////////////////////////////////      
				
				for( var x:int = 0; x < nombresCliente.length; x++){
					var punterosXCliente:Array = _sql.getPunteros([ _etiqueta,nombresCliente[x], _diaSeleccionado, _responsable,null,null,null,null,null,null,null,_TipodeNotificacion,_marca,_clasificacion,_control,null,null,null,_usuarioEv ]);
					var responsable:Array = _sql.getValoresCampo("responsable",punterosXCliente);
					var cpedido:String = (_sql.universo.getItemAt( punterosXCliente[0] ) as ReporteNotificados).cpedido;
					var concepto:String = (_sql.universo.getItemAt( punterosXCliente[0] ) as ReporteNotificados).concepto;
					commentInter = (_sql.universo.getItemAt( punterosXCliente[0] ) as ReporteNotificados).comentInterlocutor;
					if (punterosXCliente.length>0){
						var reporte:ReporteNotificados = new ReporteNotificados();
						var TempCpedido:Array = _sql.getPunteros([ _etiqueta,nombresCliente[x], _diaSeleccionado, _responsable,cpedido ]);
						var TotalCpedido:Array = _sql.getValoresCampo("cpedido",punterosXCliente);
						numFFila++;
						reporte.etiqueta="AVISO";
						reporte.numFila=numFFila;
						reporte.cliente=nombresCliente[x];
						reporte.cpedido = cpedido;
						reporte.concepto = concepto;
						reporte.comentInterlocutor= (_sql.universo.getItemAt( punterosXCliente[0] ) as ReporteNotificados).comentInterlocutor;
						reporte.fechaPS = (_sql.universo.getItemAt( TempCpedido[0] ) as ReporteNotificados).fechaPS;
						reporte.ev = (_sql.universo.getItemAt( TempCpedido[0] ) as ReporteNotificados).ev;
						reporte.fee = (_sql.universo.getItemAt( TempCpedido[0] ) as ReporteNotificados).fee;
						reporte.fechaEstimadaRealizacion = (_sql.universo.getItemAt( TempCpedido[0] ) as ReporteNotificados).fechaEstimadaRealizacion;
						reporte.etiqueta = (_sql.universo.getItemAt(TempCpedido[0]) as ReporteNotificados).etiqueta;
						
						//reporte.claveDePedido = (_sql.universo.getItemAt(punterosXCliente[0]) as ReporteNotificados).cpedido;
						reporte.responsable=responsable[0];
						reporte.numPedidos = TotalCpedido.length;
						reporte.montof = _sql.getSumarCampo( "monto", punterosXCliente);
						reporte.piezas = _sql.getSumarCampo( "piezas", punterosXCliente);
						_reporNoti.addItem( reporte );
						ultimoItem.montof += reporte.montof; 
						piezaFin = piezaFin + reporte.piezas; 
						ultimoItem.pedidos = 0;
						}
					}
				ultimoItem.piezass = piezaFin; 
				var diasFiltro:Array = [ "PASADO", "DIA-3", "DIA-2", "DIA-1", "DIA0", "DIA1", "DIA2", "DIA3", "FUTURO","TODO" ];
				for( var t:int = 0; t < 9; t++ ){
					//[ "nombreCliente", "folioCotizacion", "marca", "control", "tipoProduct", "nivelIngreso", "diasFiltro", "enTiempo", "nombreEV", "nombreVendedor", "estadoSeguimiento" ]);
					
					var daa:String = diasFiltro[t];
					var eti:String = _etiqueta;
					var punterosDia:Array = _sql.getPunteros([ _etiqueta ,null,daa,_responsable,null,null,null,null,null,null,null,null,null,null,null,null,null,null,_usuarioEv ]);
					var total:String = punterosDia.length == 0 ? '0': punterosDia.length.toString(); //_sql.getValoresCampo( "folioCotizacion", punterosDia ).length;
					cont = cont + parseInt(total);
					_objLabels[ diasFiltro[t] ] = total;
					
				}
				_objLabels[ diasFiltro[9] ] = cont;
					var fechaHoy:Date = new Date();
					var fechaAyer:Date = new Date();
					fechaAyer.setDate( fechaHoy.getDate() - 1 );
					var fechaManana:Date = new Date();
					fechaManana.setDate( fechaHoy.getDate() + 1 );
					_objLabels.hoy = _arrEtiquetaDia[ fechaHoy.day ] + ' ' + fechaHoy.date;
					_objLabels.ayer = _arrEtiquetaDia[ fechaAyer.day ] + ' ' + fechaAyer.date;
					_objLabels.manana = _arrEtiquetaDia[ fechaManana.day ] + ' ' + fechaManana.date;
					_objLabels.panelUnoTitulo = encabezadoClientes( _diaSeleccionado );
					_objLabels.origen = _etiqueta;
					
					dispatchEvent( new Event("regresaLabels") );
				
					ultimoItem.ultimo = _reporNoti.length.toString();
					_reporNoti.addItem( ultimoItem );
				}
				dispatchEvent(new Event ("reporteNotificadosModeloReporteNotificadosNew"));
			}
			
			
			[Bindable(event="reporteNotificadosModeloReporteNotificadosNew")]
			public function get ObtenReportesNot() :ArrayCollection{
				return this._reporNoti;
			}
			//////////////////////////////////////////////////////////////////////
			
		
		
		
		
		///////////////////////////////////////////////////////////////// FILTRO PRINCIPAL  MODIFICADOS
			
		public function filtrarNotificadosMODIF( $etiqueta:String, $cliente:String, $diaFiltro:String, $responsable:String, $cPedido:String, $clasificacion:String, $tipoResponsable:String ):void{
			_cliente = $cliente == ""  || $cliente == "--TODOS--" ? null: $cliente;
			_diaSeleccionado = $diaFiltro == "" || $diaFiltro == "TODO" ? null: $diaFiltro;
			_etiqueta = $etiqueta == "" ? null: $etiqueta;
			
			if ($tipoResponsable == "ev"){
				_usuarioEv = $responsable;
				_responsable = null;
			}else{
				_usuarioEv = null;
				_responsable = $responsable == ""  || $responsable == "--TODOS--" ?  null : $responsable;
			}
			_clasificacion = $clasificacion == "" ? null : $clasificacion;
			var numFFila:int = 0;
			var cont:Number=0;
			var montof:Number=0;
			var ultimoItem:ReporteNotificados = new ReporteNotificados();
			ultimoItem.pedidos = 0;
			dispatchEvent( new Event("regresaFecha") );
			if( _sql != null ){
				_reporNotiModif = new ArrayCollection();
				var commentInter:String;
				
				var nombresCliente:Array = _cliente == null ? _sql.getPunteros([null, "cliente",  null, null ]): [_cliente];
				_sql.indexObject.clasificacion =[];
				_sql.indexObject.clasificacion["0 - $2,000"]=[];
				_sql.indexObject.clasificacion["$2,001-$10,000"]=[];
				_sql.indexObject.clasificacion["> $10,000"]=[];
				for( var f:int = 0; f < nombresCliente.length; f++){
					var punterosEtiqueta:Array = _sql.getPunteros([ _etiqueta,nombresCliente[f], _diaSeleccionado, _responsable,null,null,null,null,null,null,null,null,null,null,null,null,null,null,_usuarioEv ],"folio");
					if (punterosEtiqueta.length>0){
						var sumMont:Number = _sql.getSumarCampo( "monto", punterosEtiqueta);
						
						if (sumMont <= 2000){
							for( var h:int = 0; h < punterosEtiqueta.length; h++){
								_sql.indexObject.clasificacion["0 - $2,000"].push(punterosEtiqueta[h]);
							}
						}
						if (sumMont > 2000 && sumMont <= 10000){
							for( var z:int = 0; z < punterosEtiqueta.length; z++){
								_sql.indexObject.clasificacion["$2,001-$10,000"].push(punterosEtiqueta[z]);
							}
						}
						if (sumMont > 10000){
							for( var r:int = 0; r < punterosEtiqueta.length; r++){
								_sql.indexObject.clasificacion["> $10,000"].push(punterosEtiqueta[r]);
							}
						}
						
					}
				}
				
				
				var punteros:Array = new Array();
				for( var y:int = 0; y < nombresCliente.length; y++){
					var punterosXCliente:Array = _sql.getPunteros([ _etiqueta,nombresCliente[y], _diaSeleccionado, _responsable,null,null,null,null,null,null,null,null,null,_clasificacion,null,null,null,null,_usuarioEv],"folio");
					var responsable:Array = _sql.getValoresCampo("responsable",punterosXCliente);
					var folio:String = (_sql.universo.getItemAt( punterosXCliente[0] ) as ReporteNotificados).folio;
					commentInter = (_sql.universo.getItemAt( punterosXCliente[0] ) as ReporteNotificados).comentInterlocutor;
					if (punterosXCliente.length>0){
						punteros.push(punterosXCliente);
						var reporte:ReporteNotificados = new ReporteNotificados();
						var TempCpedido:Array = _sql.getPunteros([ _etiqueta,nombresCliente[y], _diaSeleccionado, _responsable,null,null,null,null,null,folio ]);
						var TotalFolio:Array = _sql.getValoresCampo("folio",punterosXCliente);
						numFFila++;
						reporte.etiqueta="MODIF";
						reporte.folio=(_sql.universo.getItemAt( TempCpedido[0] ) as ReporteNotificados).folio;
						reporte.incosistencia=(_sql.universo.getItemAt( TempCpedido[0] ) as ReporteNotificados).incosistencia;
						reporte.numFila=numFFila;
						reporte.cliente=nombresCliente[y];
						reporte.fechaPS = (_sql.universo.getItemAt( TempCpedido[0] ) as ReporteNotificados).fechaPS;
						reporte.ev = (_sql.universo.getItemAt( TempCpedido[0] ) as ReporteNotificados).ev;
						reporte.etiqueta = (_sql.universo.getItemAt(TempCpedido[0]) as ReporteNotificados).etiqueta;
						reporte.responsable=responsable[0];
						reporte.numPedidos = TotalFolio.length;
						reporte.montof = _sql.getSumarCampo( "monto", punterosXCliente);
						montof += _sql.getSumarCampo( "monto", punterosXCliente);
						_reporNotiModif.addItem( reporte );
						ultimoItem.pedidos += TotalFolio.length;
						ultimoItem.montof = montof; 
					}
				}	
				
				_modifpieNivelIngreso = generateChartReporteModif( "nivel", null, [_etiqueta,_cliente,_diaSeleccionado, _responsable,null,null,null,null,null,null,null,null,null,null,null,null,null,"nivel",_usuarioEv ] );
				_modifpieMontos = generateChartReporteModif( "clasificacion", null, [_etiqueta,_cliente,_diaSeleccionado, _responsable,null,null,null,null,null,null,null,null,null,"clasificacion",null,null,null,null,_usuarioEv ] );
				_modfipieClientes = generateChartReporteModif( "cliente", _cliente, [_etiqueta,"cliente",_diaSeleccionado, _responsable,null,null,null,null,null,null,null,null,null,null,null,null,null,null,_usuarioEv ] );
				_modfipieInconsistencias = generateChartReporteModif("incosistencia",null,[_etiqueta, _cliente, _diaSeleccionado,  _responsable,null,null,null,null,null,null,"incosistencia",null,null,null,null,null,null,null,_usuarioEv]);
				_modifpieEV = generateChartReporteModif( "ev", _usuarioEv, [_etiqueta,_cliente,_diaSeleccionado, _responsable,null,null,null,null,null,null,null,null,null,null,null,null,null,null,"ev" ] );
				_ModifpieESAC = generateChartReporteModif( "responsable", _responsable, [_etiqueta,_cliente,_diaSeleccionado, "responsable",null,null,null,null,null,null,null,null,null,null,null,null,null,null,_usuarioEv ] );
				
				
				dispatchEvent( new Event("regresaGraficaNivelIngresoModif") );
				dispatchEvent( new Event("regresaGraficaMontosModif") );
				dispatchEvent( new Event("regresaGraficaClientesModif") );
				dispatchEvent( new Event("regresaGraficaInconsistenciaModif") );
				dispatchEvent( new Event("regresaGraficaEVModif") );
				dispatchEvent( new Event("regresaGraficaESACModif") );
				
				
				
				var diasFiltro:Array = [ "PASADO", "DIA-3", "DIA-2", "DIA-1", "DIA0", "DIA1", "DIA2", "DIA3", "FUTURO","TODO" ];
				for( var t:int = 0; t < 9; t++ ){
					//[ "nombreCliente", "folioCotizacion", "marca", "control", "tipoProduct", "nivelIngreso", "diasFiltro", "enTiempo", "nombreEV", "nombreVendedor", "estadoSeguimiento" ]);
					
					var daa:String = diasFiltro[t];
					var eti:String = _etiqueta;
					var punterosDia:Array = _sql.getPunteros([ _etiqueta ,null,daa,_responsable,null,null,null,null,null,null,null,null,null,null,null,null,null,null,_usuarioEv ],"folio");
					var total:String = punterosDia.length == 0 ? '0': punterosDia.length.toString(); //_sql.getValoresCampo( "folioCotizacion", punterosDia ).length;
					cont = cont + parseInt(total);
					_objLabels[ diasFiltro[t] ] = total;
					
				}
				_objLabels[ diasFiltro[9] ] = cont;
				var fechaHoy:Date = new Date();
				var fechaAyer:Date = new Date();
				fechaAyer.setDate( fechaHoy.getDate() - 1 );
				var fechaManana:Date = new Date();
				fechaManana.setDate( fechaHoy.getDate() + 1 );
				_objLabels.hoy = _arrEtiquetaDia[ fechaHoy.day ] + ' ' + fechaHoy.date;
				_objLabels.ayer = _arrEtiquetaDia[ fechaAyer.day ] + ' ' + fechaAyer.date;
				_objLabels.manana = _arrEtiquetaDia[ fechaManana.day ] + ' ' + fechaManana.date;
				_objLabels.panelUnoTitulo = encabezadoClientes( _diaSeleccionado );
				_objLabels.origen = _etiqueta;
				
				dispatchEvent( new Event("regresaLabels") );
				
				ultimoItem.ultimo = _reporNotiModif.length.toString();
				_reporNotiModif.addItem( ultimoItem );
			}
			
			dispatchEvent(new Event ("modificacionesModeloReporteNotificadosNew"));
			
		}
		
		[Bindable(event="modificacionesModeloReporteNotificadosNew")]
		public function get ObtenReportesNotModif() :ArrayCollection{
			return this._reporNotiModif;
		}
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		
		
		
		///////////////////////////////////////////////////////////////// PANEL 2 FILTRAR POR CLIENTE //////////////////////
		public function filtarporCliente ($cliente:String, $concepto:String): void{
			
			_filtrarPorCliente = new ArrayCollection();
			var tempReportes:ArrayCollection= new ArrayCollection();
		    tempReportes =  _sql.ensamblarLista( [_etiqueta, $cliente,_diaSeleccionado, _responsable, null, null, null, null, null, null, null,_TipodeNotificacion,_marca,_clasificacion,_control ],"cpedido" );
			var numFFila:int = 0;
			var sumaFinal:Number=0;
			var montoFinal:Number=0;
			var montof:Number=0;
			var ultimoItem:ReporteNotificados = new ReporteNotificados();
				for( var f:int = 0; f < tempReportes.length; f++ ){
					numFFila++;
					var currentFila:ReporteNotificados = tempReportes[f] as ReporteNotificados;
					var cpedido:String = currentFila.cpedido;
					var concepto:String = currentFila.concepto;
					var indicesCurrent:Array =_sql.getPunteros([_etiqueta,$cliente,_diaSeleccionado,null,cpedido,null]);
					var tempSumas:ArrayCollection =  _sql.ensamblarLista( [_etiqueta, $cliente,_diaSeleccionado, null, cpedido, null ] );
					currentFila.montof= _sql.getSumarCampo("monto",indicesCurrent);
					montof = _sql.getSumarCampo("monto",indicesCurrent);
					var piezasSuma:Number = _sql.getSumarCampo("piezas",indicesCurrent);
					sumaFinal=sumaFinal+piezasSuma;
					montoFinal = montoFinal + montof;
					currentFila.piezasCLIE=piezasSuma;
					_filtrarPorCliente.addItem(currentFila);
					
				}
			ultimoItem.piezasFinal=sumaFinal;
			ultimoItem.montoFin=montoFinal;
			ultimoItem.ultimo = tempReportes.length.toString();
			_filtrarPorCliente.addItem(ultimoItem);
			dispatchEvent( new Event("regresaNotificacionesPorCliente") );			
		}
		
		[Bindable(event="regresaNotificacionesPorCliente")]
		public function get regresarNotificacionesPorCliente():ArrayCollection{
			return _filtrarPorCliente;
		}
		///////////////////////////////////////////////////////////////// 	PANEL 2    ////////////////////////////////////////////////////////
		
		
		
		///////////////////////////////////////////////////////////////// PANEL 2 FILTRAR POR CLIENTE  MODIFICADOS //////////////////////
		public function filtarporClienteModif ($cliente:String, $folio:String): void{
			
			_filtrarPorCliente = new ArrayCollection();
			var tempReportes:ArrayCollection =  _sql.ensamblarLista( [_etiqueta, $cliente,_diaSeleccionado, _responsable, null, null, null, null, null, null, null, _TipodeNotificacion ],"folio" );
			var indicesCpeido:Array = _sql.getPunteros( [ _etiqueta, $cliente, _diaSeleccionado, null,null,null],"cpedido" );
			var numFFila:int = 0;
			var sumaFinal:Number=0;
			var montoFinal:Number=0;
			var montof:Number=0;
			var ultimoItem:ReporteNotificados = new ReporteNotificados();
			for( var f:int = 0; f < tempReportes.length; f++ ){
				numFFila++;
				var currentFila:ReporteNotificados = tempReportes[f] as ReporteNotificados;
				var folio:String = currentFila.folio;
				var concepto:String = currentFila.concepto;
				var indicesCurrent:Array =_sql.getPunteros([_etiqueta,$cliente,_diaSeleccionado,null,null,null,null,null,null,folio],"folio");
				var tempSumas:ArrayCollection =  _sql.ensamblarLista( [_etiqueta,$cliente,_diaSeleccionado,null,null,null,null,null,null,folio] );
				currentFila.montof= _sql.getSumarCampo("monto",indicesCurrent);
				montof = _sql.getSumarCampo("monto",indicesCurrent);
				var piezasSuma:Number = _sql.getSumarCampo("piezas",indicesCurrent);
				sumaFinal=sumaFinal+piezasSuma;
				montoFinal = montoFinal + montof;
				currentFila.piezasCLIE=piezasSuma;
				ultimoItem.piezasSuma;
				_filtrarPorCliente.addItem(currentFila);
			}
			ultimoItem.ultimo = tempReportes.length.toString();
			ultimoItem.montoFin=montoFinal;
			_filtrarPorCliente.addItem(ultimoItem);
			dispatchEvent( new Event("regresaNotificacionesPorClienteModif") );			
		}
		
		[Bindable(event="regresaNotificacionesPorClienteModif")]
		public function get regresarNotificacionesPorClienteModif():ArrayCollection{
			return _filtrarPorCliente;
		}
		///////////////////////////////////////////////////////////////// 	PANEL 2    ////////////////////////////////////////////////////////
		
		
		
		
		
		
		
		
		
		///////////////////////////////////////////////////////////////// PANEL 3 DATOS DEL CPEDIDO
		public function filtarporCpedido ($cPedido:String): void{
			
			_filtrarPorCpedido = new ArrayCollection();
			var tempReportes:ArrayCollection = ObjectUtil.copy( _sql.ensamblarLista( [_etiqueta,_cliente,_diaSeleccionado,_responsable,$cPedido,concepto,null,null,null,null,null,_TipodeNotificacion,_marca,_clasificacion,_control,null,null,null,_usuarioEv ],"concepto" ) ) as ArrayCollection;
			var indicesCpeido:Array = _sql.getPunteros( [ _etiqueta, _cliente, _diaSeleccionado, null,$cPedido,null ] );
			var rr:ArrayCollection = _sql.armarLista(indicesCpeido);
			var numFFila:int = 0;
			var montoFi:Number=0;
			var piezasFinal:Number=0;
			var ultimoItem:ReporteNotificados = new ReporteNotificados();
			for( var f:int = 0; f < tempReportes.length; f++ ){
				numFFila++;
				var currentFila:ReporteNotificados = tempReportes[f] as ReporteNotificados;
				var concepto:String = currentFila.concepto;
				var indicesCurrent:Array =_sql.getPunteros([_etiqueta,_cliente,_diaSeleccionado,_responsable,$cPedido,concepto]);
				currentFila.numFila=numFFila;
				var piezasSuma:Number = _sql.getSumarCampo("piezas",indicesCurrent);
				var monto:Number = _sql.getSumarCampo("monto",indicesCurrent);
				currentFila.piezas=piezasSuma;
				var indicesSuma:Array = _sql.getPunteros( [ _etiqueta, _cliente, _diaSeleccionado, null,$cPedido,concepto ] );
				piezasFinal=piezasFinal+piezasSuma;
				montoFi= montoFi+ monto;
				_filtrarPorCpedido.addItem(currentFila);
			}
			ultimoItem.piezasFinal=piezasFinal;
			ultimoItem.montoFinal=montoFi;
			ultimoItem.ultimo = tempReportes.length.toString();
			_filtrarPorCpedido.addItem(ultimoItem);
			dispatchEvent( new Event("regresaNotificacionesPorCpedido") );			
		}
		
		[Bindable(event="regresaNotificacionesPorCpedido")]
		public function get regresarNotificacionesPorCpedido():ArrayCollection{
			return _filtrarPorCpedido;
		}
		/////////////////////////////////////////////////////////////////		PANEL 3
		
		
		
		
		
		///////////////////////////////////////////////////////////////// PANEL 3 DATOS DEL CPEDIDO   MODIFICADOS
		public function filtarporCpedidoModif ($folio:String,$incosistencia:String): void{
			
			_filtrarPorCpedido = new ArrayCollection();
			
			var tempReportes:ArrayCollection = ObjectUtil.copy( _sql.ensamblarLista( [_etiqueta,_cliente,_diaSeleccionado,_responsable,null,null,null,null,null,$folio,$incosistencia, _TipodeNotificacion, null, _clasificacion ] ) ) as ArrayCollection;
			var indicesCpeido:Array = _sql.getPunteros( [ _etiqueta, _cliente, _diaSeleccionado, null,null,null,null,null,null,$folio ] );
			var numFFila:int = 0;
			var ultimoItem:ReporteNotificados = new ReporteNotificados();
			for( var f:int = 0; f < tempReportes.length; f++ ){
				numFFila++;
				var currentFila:ReporteNotificados = tempReportes[f] as ReporteNotificados;
				//var indicesCurrent:Array =_sql.getPunteros([_etiqueta,$cliente,_diaSeleccionado,null,cpedido,null]);
				var concepto:String = currentFila.concepto;
				var indicesCurrent:Array =_sql.getPunteros([ _etiqueta, _cliente, _diaSeleccionado, null,null,null,null,null,null,$folio]);
				currentFila.numFila=numFFila;
				//	currentFila.ultimo=numFFila.toString();
				//	currentFila.cpedido= (_sql.universo.getItemAt(tempReportes[0]) as ReporteNotificados).cpedido;
				//	currentFila.monto=0;
				//	currentFila.piezas=0;
				var piezasSuma:Number = _sql.getSumarCampo("piezas",indicesCurrent);
				//var indicesSuma:Array = _sql.getPunteros( [ _etiqueta, _cliente, _diaSeleccionado, null,$cPedido,concepto ] );
				//currentFila.piezas= _sql.universo.getItemAt(indicesSuma[0] as ReporteNotificados).piezas;
				ultimoItem.piezas=piezasSuma;
				_filtrarPorCpedido.addItem(currentFila);
			}
			ultimoItem.ultimo = tempReportes.length.toString();
			//_filtrarPorCpedido.addItem(ultimoItem);
			dispatchEvent( new Event("regresaNotificacionesPorCpedidoModif") );			
		}
		
		[Bindable(event="regresaNotificacionesPorCpedidoModif")]
		public function get regresarNotificacionesPorCpedidoModif():ArrayCollection{
			return _filtrarPorCpedido;
		}
		/////////////////////////////////////////////////////////////////		PANEL 3
		
		///////////////////////////////////////////////////////////////// PANEL 4 DATOS DEL CPEDIDO   MODIFICADOS
		public function filtarporIncosistencia ($folio:String): void{
			
			_filtrarPorCpedido = new ArrayCollection();
			
			var tempReportes:ArrayCollection = ObjectUtil.copy( _sql.ensamblarLista( [_etiqueta,_cliente,_diaSeleccionado,_responsable,null,null,null,null,null,$folio, null, _TipodeNotificacion, null, _clasificacion ],"incosistencia" ) ) as ArrayCollection;
			var indicesCpeido:Array = _sql.getPunteros( [ _etiqueta, _cliente, _diaSeleccionado, null,null,null,null,null,null,$folio ] );
			var numFFila:int = 0;
			var ultimoItem:ReporteNotificados = new ReporteNotificados();
			for( var f:int = 0; f < tempReportes.length; f++ ){
				numFFila++;
				var currentFila:ReporteNotificados = tempReportes[f] as ReporteNotificados;
				//var indicesCurrent:Array =_sql.getPunteros([_etiqueta,$cliente,_diaSeleccionado,null,cpedido,null]);
				var concepto:String = currentFila.concepto;
				var indicesCurrent:Array =_sql.getPunteros([ _etiqueta, _cliente, _diaSeleccionado, null,null,null,null,null,null,$folio]);
				currentFila.numFila=numFFila;
				//	currentFila.ultimo=numFFila.toString();
				//	currentFila.cpedido= (_sql.universo.getItemAt(tempReportes[0]) as ReporteNotificados).cpedido;
				//	currentFila.monto=0;
				//	currentFila.piezas=0;
				var piezasSuma:Number = _sql.getSumarCampo("piezas",indicesCurrent);
				//var indicesSuma:Array = _sql.getPunteros( [ _etiqueta, _cliente, _diaSeleccionado, null,$cPedido,concepto ] );
				//currentFila.piezas= _sql.universo.getItemAt(indicesSuma[0] as ReporteNotificados).piezas;
				ultimoItem.piezas=piezasSuma;
				_filtrarPorCpedido.addItem(currentFila);
			}
			ultimoItem.ultimo = tempReportes.length.toString();
			//_filtrarPorCpedido.addItem(ultimoItem);
			dispatchEvent( new Event("regresaNotificacionesPorIncosistencia") );			
		}
		
		[Bindable(event="regresaNotificacionesPorIncosistencia")]
		public function get regresarNotificacionesPorIncosistencia():ArrayCollection{
			return _filtrarPorCpedido;
		}
		/////////////////////////////////////////////////////////////////		PANEL 4
		
		
		
		
		
		
		
		///////////////////////////////////////////////////////////////// PANEL 4 DATOS DEL DETALLE   MODIFICADOS
		public function filtarporDetalleModif ($folio:String): void{
			
			_filtrarPorDetalles = new ArrayCollection();
			
			var tempReportes:ArrayCollection = ObjectUtil.copy( _sql.ensamblarLista( [_etiqueta,_cliente,_diaSeleccionado,_responsable,null,null,null,null,null,$folio, null, _TipodeNotificacion, null, _clasificacion] ) ) as ArrayCollection;
			var indicesCpeido:Array = _sql.getPunteros( [ _etiqueta, _cliente, _diaSeleccionado, null,null,null,null,null,null,$folio ] );
			var numFFila:int = 0;
			var ultimoItem:ReporteNotificados = new ReporteNotificados();
			for( var f:int = 0; f < tempReportes.length; f++ ){
				numFFila++;
				var currentFila:ReporteNotificados = tempReportes[f] as ReporteNotificados;
				//var indicesCurrent:Array =_sql.getPunteros([_etiqueta,$cliente,_diaSeleccionado,null,cpedido,null]);
				var concepto:String = currentFila.concepto;
				var indicesCurrent:Array =_sql.getPunteros([ _etiqueta, _cliente, _diaSeleccionado, null,null,null,null,null,null,$folio]);
				currentFila.numFila=numFFila;
				//	currentFila.ultimo=numFFila.toString();
				//	currentFila.cpedido= (_sql.universo.getItemAt(tempReportes[0]) as ReporteNotificados).cpedido;
				//	currentFila.monto=0;
				//	currentFila.piezas=0;
				//var indicesSuma:Array = _sql.getPunteros( [ _etiqueta, _cliente, _diaSeleccionado, null,$cPedido,concepto ] );
				//currentFila.piezas= _sql.universo.getItemAt(indicesSuma[0] as ReporteNotificados).piezas;
				_filtrarPorDetalles.addItem(currentFila);
			}
			ultimoItem.ultimo = tempReportes.length.toString();
			dispatchEvent( new Event("regresaNotificacionesDetallesModif") );			
		}
		
		[Bindable(event="regresaNotificacionesDetallesModif")]
		public function get regresarNotificacionesDetallesModif():ArrayCollection{
			return _filtrarPorDetalles;
		}
		/////////////////////////////////////////////////////////////////		PANEL 4 DETALLE
		
		
		
		
		

		////////////////////////////////////////////////////////////////  PANEL 4 DATOS DE LOS DETALLES
		public function filtarporDetalles ($cpedido:String, $concepto:String): void{
			
			_filtrarPorDetalles = new ArrayCollection();
			
			var tempReportes:ArrayCollection = ObjectUtil.copy( _sql.ensamblarLista( [_etiqueta,_cliente,_diaSeleccionado,_responsable,$cpedido,$concepto,null,null,null,null,null,_TipodeNotificacion,_marca,_clasificacion,_control,null,null,null,_usuarioEv ],"cpedido" ) ) as ArrayCollection;
			var indicesCpeido:Array = _sql.getPunteros( [ _etiqueta, _cliente, _diaSeleccionado, null,$cpedido,$concepto ],"cpedido" );
			var numFFila:int = 0;
			var ultimoItem:ReporteNotificados = new ReporteNotificados();
			for( var f:int = 0; f < tempReportes.length; f++ ){
				numFFila++;
				var currentFila:ReporteNotificados = tempReportes[f] as ReporteNotificados;
				var indicesCurrent:Array =_sql.getPunteros([_etiqueta,_cliente,_diaSeleccionado,null,]);
				currentFila.numFila=numFFila;
				
				
				//	currentFila.ultimo=numFFila.toString();
				//	currentFila.cpedido= (_sql.universo.getItemAt(tempReportes[0]) as ReporteNotificados).cpedido;
				//	currentFila.monto=0;
				//	currentFila.piezas=0;
				var piezasSuma:Number = _sql.getSumarCampo("piezas",indicesCurrent);
				ultimoItem.piezas=piezasSuma; 
				_filtrarPorDetalles.addItem(currentFila);
			}
			ultimoItem.ultimo = tempReportes.length.toString();
			//_filtrarPorCpedido=ultimoItem;
			dispatchEvent( new Event("regresaNotificacionesPorConcepto") );			
		}
		
		[Bindable(event="regresaNotificacionesPorConcepto")]
		public function get regresaNotificacionesPorConcepto():ArrayCollection{
			return _filtrarPorDetalles;
		}
		////////////////////////////////////////////////////////////////  PANEL 4 
		
		
		
		
		////////////////////////////////////////////////////////////////  DATOS SWITCH ////////////////////////////////////////////////////////
		public function obtenerSwitch($switch:String):void{
			
			_switch = $switch;
			dispatchEvent( new Event ("regresarSwitch"));		
			
		}
		[Bindable(event="regresarSwitch")]
		public function get regresarSwitch():String{
			return  _switch;
		}
		////////////////////////////////////////////////////////////////  DATOS SWITCH //////////////////////////////////////////////////////// 
		
		////////////////////////////////////////////////////////////////  GENERAR GRAFICAS ////////////////////////////////////////////////////////
		public function generarGrafica($grafica:String):void{
			
			 _grafica = $grafica;
			dispatchEvent( new Event ("generaGrafica"));		
			
		}
		[Bindable(event="generaGrafica")]
		public function get generaGrafica():String{
			return  _grafica;
		}
		////////////////////////////////////////////////////////////////  GENERAR GRAFICAS //////////////////////////////////////////////////////// 
		
		////////////////////////////////////////////////////////////////  PONER TODOS ////////////////////////////////////////////////////////
		public function ponerEnTodos($todos:String):void{
			
			_todos = $todos;
			dispatchEvent( new Event ("enviarTodos"));		
			
		}
		[Bindable(event="enviarTodos")]
		public function get enviarTodos():String{
			return  _todos;
		}
		////////////////////////////////////////////////////////////////  PONER TODOS  //////////////////////////////////////////////////////// 
		
		
		////////////////////////////////////////////////////////////////  MANDAR LABEL BOTONERA MONTOS ////////////////////////////////////////////////////////
		public function obtenerLabelMonto($label:String):void{
			
			_label = $label;
			dispatchEvent( new Event ("enviarLabelMontos"));		
			
		}
		[Bindable(event="enviarLabelMontos")]
		public function get enviarLabelMontos():String{
			return  _label;
		}
		////////////////////////////////////////////////////////////////  MANDAR LABEL BOTONERA MONTOS //////////////////////////////////////////////////////// 
		
		
		
		////////////////////////////////////////////////////////////////  DATOS BOTONERA PRIMER PANEL ////////////////////////////////////////////////////////
		public function obtenerDatosBotonera( $etiqueta:String, $cliente:String, $diaFiltro:String, $responsable:String, $cPedido:String, $TipoNotifiaccion:String, $marca:String,$clasificacion:String,$control:String, $tipoResponsable:String):void{
			
			_cliente = $cliente == ""  || $cliente == "--TODOS--" ? null : $cliente;
			_diaSeleccionado = $diaFiltro == "" || $diaFiltro == "TODO" ? null : $diaFiltro;
			_etiqueta = $etiqueta == "" ? null : $etiqueta;
			_responsable = $responsable == ""  || $responsable == "--TODOS--" ?  null : $responsable;
			_TipodeNotificacion = $TipoNotifiaccion == "" || $TipoNotifiaccion == "--TODOS--" ?  null : $TipoNotifiaccion;
			_marca = $marca == "" || $marca == "--TODOS--" ?  null : $marca;
			_clasificacion = $clasificacion == "" ? null : $clasificacion;
			_control = $control == "" || $control == "--TODOS--" ?  null : $control;
			_tipoResponsable = $tipoResponsable == "" || $tipoResponsable == "--TODOS--" ?  null : $tipoResponsable;
			
			_datos.cliente=_cliente;
			_datos.diaSeleccionado=_diaSeleccionado;
			_datos.etiqueta=_etiqueta;
			_datos.responsable=_responsable;
			_datos.tipodeNotificacion=_TipodeNotificacion;
			_datos.marca=_marca;
			_datos.clasificacion=_clasificacion;
			_datos.control=_control;
			_datos.tipoResponsable=_tipoResponsable;
			
			dispatchEvent( new Event ("regresarDatosBotonera"));		
			
		}
		[Bindable(event="regresarDatosBotonera")]
		public function get regresarDatosBotonera():Object{
			return  _datos;
		}
		////////////////////////////////////////////////////////////////  DATOS BOTONERA PRIMER PANEL //////////////////////////////////////////////////////// 
		

		
		
		////////////////////////////////////////////////////////////////  GENERADOR CHART REPORTE ////////////////////////////////////////////////////////
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
						cachoPie.total = _sql.getSumarCampo( "monto", punterosFiltro); //, "folioCotizacion" );
						cachoPie.totalPedidos = _sql.getPunteros( consultaReformulada, "cpedido" ).length;
						cachoPie.partidas = _sql.getPunteros( consultaReformulada ).length;
						cachoPie.clientes = _sql.getPunteros( consultaReformulada, "cliente" ).length;
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
		
		
		////////////////////////////////////////////////////////////////  GENERADOR CHART REPORTE ////////////////////////////////////////////////////////
		private function generateChartReporteModif( $propiedad:String, $filtro:String, $consulta:Array ):ArrayCollection
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
						var punterosFiltro:Array = _sql.getPunteros( consultaReformulada ,"folio");
						cachoPie.total = _sql.getSumarCampo( "monto", punterosFiltro); //, "folioCotizacion" );
						cachoPie.totalPedidos = _sql.getPunteros( consultaReformulada, "folio" ).length;
						cachoPie.partidas = _sql.getPunteros( consultaReformulada ).length;
						cachoPie.clientes = _sql.getPunteros( consultaReformulada, "cliente" ).length;
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
		
		
		////////////////////////////////////////////////////////////////  GENERADOR CHART REPORTE ////////////////////////////////////////////////////////
		
		[Bindable(event="regresaGraficaNivelIngreso")]
		public function get regresarGraficaNivelIngreso():ArrayCollection
		{
			return _pieNivelIngreso;
		}
		
		[Bindable(event="regresaGraficaClientes")]
		public function get regresarGraficaClientes():ArrayCollection
		{
			return _pieClientes;
		}
		
		[Bindable(event="regresaGraficaEV")]
		public function get regresarGraficaEV():ArrayCollection
		{
			return _pieEV;
		}
		
		[Bindable(event="regresaGraficaESAC")]
		public function get regresarGraficaESAC():ArrayCollection
		{
			return _pieESAC;
		}
		
		[Bindable(event="regresaGraficaMonto")]
		public function get regresarGraficaMonto():ArrayCollection
		{
			return _pieMonto;
		}
		
		[Bindable(event="regresaGraficaRazon")]
		public function get regresarGraficaRazon():ArrayCollection
		{
			return _pieRazonAC;
		}
		
		[Bindable(event="regresaGraficaTipoAviso")]
		public function get regresarGraficaTipoAviso():ArrayCollection
		{
			return _pieTipoAviso;
		}
		
		[Bindable(event="regresaGraficaEnviadoNoEnviado")]
		public function get regresarGraficaEnviadoNoEnviado():ArrayCollection
		{
			return _pieEnvNoEnviado;
		}
		
		[Bindable(event="regresaGraficaMarca")]
		public function get regresarGraficaMarca():ArrayCollection
		{
			return _pieMarca;
		}
		
		[Bindable(event="regresaGraficaTipoProducto")]
		public function get regresarGraficaTipoProducto():ArrayCollection
		{
			return _pieTipoProducto;
		}
		
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		[Bindable(event="regresaGraficaNivelIngresoModif")]
		public function get regresarGraficaNivelIngresoModif():ArrayCollection
		{
			return _modifpieNivelIngreso;
		}
		
		[Bindable(event="regresaGraficaMontosModif")]
		public function get regresarGraficaMontosModif():ArrayCollection
		{
			return _modifpieMontos;
		}
		
		[Bindable(event="regresaGraficaClientesModif")]
		public function get regresarGraficaClientesModif():ArrayCollection
		{
			return _modfipieClientes;
		}
		
		[Bindable(event="regresaGraficaInconsistenciaModif")]
		public function get regresarGraficaInconsistenciasModif():ArrayCollection
		{
			return _modfipieInconsistencias;
		}
		
		[Bindable(event="regresaGraficaEVModif")]
		public function get regresarGraficaEVModif():ArrayCollection
		{
			return _modifpieEV;
		}
		
		[Bindable(event="regresaGraficaESACModif")]
		public function get regresarGraficaESACModif():ArrayCollection
		{
			return _ModifpieESAC;
		}
		
		
		
		
		
		
		public function errorObtenerReporte(object:Object):void{
			alertaSingleton.showReintentar(object.toString()+"1");
		}
		public function errorObtenerReporteModificados(object:Object):void{
			alertaSingleton.showReintentar(object.toString()+"2");
		}
		public function errorNotificadosFolios(object:Object):void{
			alertaSingleton.showReintentar(object.toString()+"3");
		}
		
	}
}