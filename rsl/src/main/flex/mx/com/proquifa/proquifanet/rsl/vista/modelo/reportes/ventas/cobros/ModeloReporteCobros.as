package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.ventas.cobros
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.collections.SortField;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.ventas.cobros.EventoReporteCobros;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.Cobros;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	
	import skins.catalogos.catalogoAlertas;
	import skins.catalogos.catalogoColores;

	public class ModeloReporteCobros extends EventDispatcher
	{
		
		private var _repoCobros:ArrayCollection;
		private var _repoFiltroCobros:ArrayCollection;
		private var _repoFiltroFacturas:ArrayCollection;
		private var _infoCombo:ArrayCollection;
		private var _chartCliente:ArrayCollection;
		private var _chartNIngreso:ArrayCollection;
		private var _chartDCredito:ArrayCollection;
		private var _chartFPor:ArrayCollection;
		private var _chartMPago:ArrayCollection;
		private var _chartCPago:ArrayCollection;
		private var _sql:Query;
		private var _filtroSql:Query;
		private var _diasFiltro:String;
		private var _nombreCliente:String;
		private var _nombreClienteFactura:String;
		private var _cpago:String;
		private var _factura:String;
		private var _medioPago:String;
		private var _fpor:String;
		private var _diaSeleccionado:String;
		private var _clasificacion:String="";
		private var _diaSeleccionadoAnterior:String = '';
		private var _clasificacionAnterior:String = '';
		private var _nivelIngreso:String = '';
		private var _estado:String = '';
		private var _flag:Boolean = false;
		private var _esac:String = '';
		private var _cobrador:String = '';
		
		private var _objLabels:Object = new Object();
		private var _arrEtiquetaDia:Array = [ "Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado" ];
		private var _indice:int = 0;
		private var _indiceAnterior:int = 0;
		
		private var todosCombosBox:Object;
	
		/**
		 ************************************************************** lista de facturas ********************************************************
		 */
		
		private var _facturas:ArrayCollection;
		public function setListaFacturas($facturas:ArrayCollection):void{	
			if($facturas == null) return;
			_diasFiltro = '';
			_nombreCliente = '';
			_cpago = '';
			_factura = '';
			_clasificacion = null;
			_medioPago = '';
			_fpor = '';
			_nivelIngreso = null;
			_esac='';
			_cobrador='';
			_facturas = $facturas;
			
			_sql = new Query( $facturas, ["diasFiltro", "nombreCliente", "cpago","factura","clasificacion","montoDolares","piezas","medioPago","fpor","totalFacturas","nivelIngreso","diasRestantesCobro","estado","partidas","esac","cobrador"]);
			filtrarCobros(_diasFiltro,_nombreCliente,_cpago,_factura,_clasificacion,_medioPago,_fpor,_esac,_cobrador);
			
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
		
		//FILTRO PRINCIPAL INICIAL
		
		public function filtrarCobros( $diasFiltro:String, $nombreCliente:String, $cPgo:String, $factura:String, $clasificacion:String, $medioPago:String, $fpor:String,$esac:String,$cobrador:String):void{

			if ($diasFiltro =="" || $diasFiltro == null ){
				_diaSeleccionado="DIA0";
			}else{
				_diaSeleccionado= $diasFiltro;
			}
				
			if  ($diasFiltro =="TODO"){
				_diaSeleccionado= null;
			}
			_nombreCliente = $nombreCliente == ""  || $nombreCliente == "--TODOS--" ? null : $nombreCliente;
			_esac = $esac == ""  || $esac == "--TODOS--" ? null : $esac;
			_cobrador = $cobrador == ""  || $cobrador == "--TODOS--" ? null : $cobrador;
			_fpor = $fpor == "" || $fpor == "--TODOS--" ? null : $fpor;  
			_cpago = $cPgo == "" || $cPgo == "--TODOS--" ? null : $cPgo;
			_medioPago = $medioPago == "" || $medioPago == "--TODOS--" ? null : $medioPago;
			_factura = $factura == "" ? null : $factura;

			var numFFila:int = 0;
			var cont:Number=0;
			var piezaFin:Number=0;
			var ultimoItem:Cobros = new Cobros();
			ultimoItem.montoDolares = 0;
			
			dispatchEvent( new Event("regresaFecha") );
			
			if( _sql != null ){
				_repoCobros = new ArrayCollection();
				_infoCombo = new ArrayCollection();
				var nombresCliente:Array = _nombreCliente == null ? _sql.getPunteros([null, "nombreCliente",  null, null, null, null, null,null ]): [_nombreCliente];
				_sql.indexObject.clasificacion =[];
				_sql.indexObject.clasificacion["0 - $2,000"]=[];
				_sql.indexObject.clasificacion["$2,001 - $10,000"]=[];
				_sql.indexObject.clasificacion["> $10,000"]=[];
				for( var f:int = 0; f < nombresCliente.length; f++){
					var punterosEtiqueta:Array = _sql.getPunteros([ _diaSeleccionado,nombresCliente[f], _cpago, _factura, null, null, null, _medioPago, _fpor,null]);
					if (punterosEtiqueta.length>0){
						var sumMont:Number = _sql.getSumarCampo( "montoDolares", punterosEtiqueta);
						
						if (sumMont <= 2000){
							for( var h:int = 0; h < punterosEtiqueta.length; h++){
								_sql.indexObject.clasificacion["0 - $2,000"].push(punterosEtiqueta[h]);
							}
						}
						if (sumMont > 2000 && sumMont <= 10000){
							for( var z:int = 0; z < punterosEtiqueta.length; z++){
								_sql.indexObject.clasificacion["$2,001 - $10,000"].push(punterosEtiqueta[z]);
							}
						}
						if (sumMont > 10000){
							for( var y:int = 0; y < punterosEtiqueta.length; y++){
								_sql.indexObject.clasificacion["> $10,000"].push(punterosEtiqueta[y]);
							}
						}
						
					}
				}
		   
				for( var x:int = 0; x < nombresCliente.length; x++){
					var punterosXCliente:Array = _sql.getPunteros([ _diaSeleccionado,nombresCliente[x], _cpago, _factura,_clasificacion,null,null,_medioPago, _fpor,null,null,null,null,null,_esac,_cobrador]);

					if (punterosXCliente.length>0){
						var cobros:Cobros = new Cobros();
						var TempFactura:Array = _sql.getPunteros([ _diaSeleccionado,nombresCliente[x], _cpago, _factura, _clasificacion,null,null, _medioPago, _fpor,null,null,null,null,null,_esac,_cobrador],'factura');
						var totalFacturas:Array = _sql.getValoresCampo("factura",TempFactura);
				 
						numFFila++;
						cobros.numFila = numFFila;
						cobros.nombreCliente = nombresCliente[x];
						cobros.cpedido = (_sql.universo.getItemAt( punterosXCliente[0] ) as Cobros).cpedido;
						cobros.clasificacion = (_sql.universo.getItemAt( punterosXCliente[0] ) as Cobros).clasificacion;
						cobros.fechaFacturacion= (_sql.universo.getItemAt( punterosXCliente[0] ) as Cobros).fechaFacturacion;
						cobros.diasRestantesCobro = (_sql.universo.getItemAt( punterosXCliente[0] ) as Cobros).diasRestantesCobro;
						cobros.fechaEsperadaPago= (_sql.universo.getItemAt( punterosXCliente[0] ) as Cobros).fechaEsperadaPago;
						cobros.fpor = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).fpor;
						cobros.medioPago = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).medioPago;
						cobros.cpago = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).cpago;
						cobros.esac = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).esac;
						cobros.ev = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).ev;
						cobros.cobrador = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).cobrador;
						cobros.estado = (_sql.universo.getItemAt(TempFactura[0]) as Cobros).estado;
						cobros.diasRestantesCobro = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).diasRestantesCobro;
						cobros.nivelIngreso = (_sql.universo.getItemAt(TempFactura[0]) as Cobros).nivelIngreso;
						cobros.partidas = (_sql.universo.getItemAt(TempFactura[0]) as Cobros).partidas;
						cobros.montoDolares = _sql.getSumarCampo( "montoDolares", punterosXCliente);
						cobros.piezas =  _sql.getSumarCampo( "piezas", punterosXCliente);
						cobros.totalFacturas = totalFacturas.length; 
						
						_repoCobros.addItem( cobros );
						_infoCombo.addItem(cobros);
						piezaFin = piezaFin + cobros.piezas; 
						ultimoItem.montoDolares += cobros.montoDolares;
						ultimoItem.piezas = _sql.getSumarCampo( "piezas", punterosXCliente);
					}
				}
				ultimoItem.piezas = piezaFin; 
				
				obtenerTotalClientesDias();
				
				_filtroSql = new Query( _repoCobros, ["diasFiltro", "nombreCliente", "cpago","factura","clasificacion","montoDolares","piezas","medioPago","fpor","totalFacturas","nivelIngreso","diasRestantesCobro","esac","cobrador"]);
				
				ultimoItem.nombreCliente = _repoCobros.length.toString();
				ultimoItem.estado = 'ultimo';
				_repoCobros.addItem( ultimoItem );
			}
			
			if(_diaSeleccionado != _diaSeleccionadoAnterior //|| _clasificacion != _clasificacionAnterior
			){
				_diaSeleccionadoAnterior = _diaSeleccionado;
				dispatchEvent(new Event ("infoCombosModeloReporteCobros"));
				obtenerInfoCombos();
			} 
			
			if( _filtroSql != null ){
				_repoFiltroCobros = new ArrayCollection();
				var clientes:Array = _nombreCliente == null ? _filtroSql.getPunteros([null, "nombreCliente",  null, null, null, null, null ]): [_nombreCliente];
			}
			
			// PIE CHARTS // 
			
			dispatchEvent(new Event ("reporteCobrosModeloReporteCobros"));
		}
		
		private function obtenerInfoCombos():void{
			
			var cobrosXFiltros:Array = new Array();
			var obtenerPunteros:Boolean = false;
			
			if (_diaSeleccionado == null){
				if (_nombreCliente == null && _cpago == null && _medioPago == null && _fpor == null ){
					obtenerPunteros = true;
				}else{
					obtenerPunteros = true;
					//cobrosXFiltros = _sql.getPunteros([  null, _nombreCliente, _cpago, null, null, null, null, _medioPago, _fpor,null],"nombreCliente");
				}
			}else{
				cobrosXFiltros = _sql.getPunteros([_diaSeleccionado, null, null, null, null, null, null, null, null,null],"nombreCliente");
				//cobrosXFiltros = _sql.getPunteros([_diaSeleccionado, _nombreCliente, _cpago, null, null, null, null, _medioPago, _fpor,null],"nombreCliente");
			}
			
			todosCombosBox = new Object;
			if(obtenerPunteros){
				todosCombosBox["cmbCliente"] = agregarTodosACombos(_sql.getValoresCampoOmitiendoRepetidosDeTodoElUniverso("nombreCliente"));
				todosCombosBox["cmbMedio"] = agregarTodosACombos(_sql.getValoresCampoOmitiendoRepetidosDeTodoElUniverso("medioPago"));
				todosCombosBox["cmbpago"] = agregarTodosACombos(_sql.getValoresCampoOmitiendoRepetidosDeTodoElUniverso("cpago"));
				todosCombosBox["cmbVendio"] = agregarTodosACombos(_sql.getValoresCampoOmitiendoRepetidosDeTodoElUniverso("fpor"));
				todosCombosBox["cmbCobrador"] = agregarTodosACombos(_sql.getValoresCampoOmitiendoRepetidosDeTodoElUniverso("cobrador"));
				todosCombosBox["cmbESAC"] = agregarTodosACombos(_sql.getValoresCampoOmitiendoRepetidosDeTodoElUniverso("esac"));
			}else{
				todosCombosBox["cmbCliente"] = agregarTodosACombos(_sql.getValoresCampo("nombreCliente",cobrosXFiltros));
				todosCombosBox["cmbMedio"] = agregarTodosACombos(_sql.getValoresCampo("medioPago",cobrosXFiltros));
				todosCombosBox["cmbpago"] = agregarTodosACombos(_sql.getValoresCampo("cpago",cobrosXFiltros));
				todosCombosBox["cmbVendio"] = agregarTodosACombos(_sql.getValoresCampo("fpor",cobrosXFiltros));
				todosCombosBox["cmbCobrador"] = agregarTodosACombos(_sql.getValoresCampo("cobrador",cobrosXFiltros));
				todosCombosBox["cmbESAC"] = agregarTodosACombos(_sql.getValoresCampo("esac",cobrosXFiltros));
			}				
			dispatchEvent(new Event("regresaArrayComboReporteCobros"));
		}
		
		private function agregarTodosACombos(array:Array):Array
		{
			var arraytemp:Array = ObjectUtil.copy(array) as Array;
			arraytemp.unshift("--TODOS--");
			return arraytemp;
		}
		
		[Bindable(event="regresaArrayComboReporteCobros")]
		public function get regresaArrayComboReporteCobros():Object{
			return todosCombosBox;
		}
		
		private function obtenerTotalClientesDias():void{
			
			var diasFiltro:Array = [ "PASADO", "DIA-3", "DIA-2", "DIA-1", "DIA0", "DIA1", "DIA2", "DIA3", "FUTURO", "TODO" ];
			for( var t:int = 0; t < 10; t++ ){
				var daa:String = diasFiltro[t];
				var punterosDia:Array;
				if (daa == "TODO"){
					if (_nombreCliente == null && _cpago == null && _medioPago == null && _fpor == null && _esac == null && _cobrador == null ){
						punterosDia = _sql.getValoresCampoOmitiendoRepetidosDeTodoElUniverso("factura");
					}else{
						var productosXFiltros:Array = _sql.getPunteros([  null, _nombreCliente, _cpago, _factura, null, null, null, _medioPago, _fpor,null,null,null,null,null,_esac,_cobrador]);
						punterosDia = _sql.getValoresCampoOmitiendoRepetidos("factura",productosXFiltros);
					}
				}else{
					punterosDia = _sql.getPunteros([  daa, _nombreCliente, _cpago, _factura, null, null, null, _medioPago, _fpor,null,null,null,null,null,_esac,_cobrador],"factura");
				}
				var total:String = punterosDia.length == 0 ? '0': punterosDia.length.toString(); 
				//cont = cont + parseInt(total);
				_objLabels[ diasFiltro[t] ] = total;
				
			}
			
			//_objLabels[ diasFiltro[9] ] = cont;
			var fechaHoy:Date = new Date();
			var fechaAyer:Date = new Date();
			fechaAyer.setDate( fechaHoy.getDate() - 1 );
			var fechaManana:Date = new Date();
			fechaManana.setDate( fechaHoy.getDate() + 1 );
			_objLabels.hoy = _arrEtiquetaDia[ fechaHoy.day ] + ' ' + fechaHoy.date;
			_objLabels.ayer = _arrEtiquetaDia[ fechaAyer.day ] + ' ' + fechaAyer.date;
			_objLabels.manana = _arrEtiquetaDia[ fechaManana.day ] + ' ' + fechaManana.date;
			_objLabels.panelUnoTitulo = encabezadoClientes( _diaSeleccionado );
			
			dispatchEvent( new Event("regresaLabels") );
		}
		
		// FILTRA FILTRO COBROS
		public function filtrarFiltroCobros( $diasFiltro:String, $nombreCliente:String, $cPgo:String, $factura:String, $clasificacion:String, $medioPago:String, $fpor:String, $esac:String, $cobrador:String):void{
			
			if ($diasFiltro =="" || $diasFiltro == null ){
				_diaSeleccionado="DIA0";
			}else{
				_diaSeleccionado= $diasFiltro;
			}
			if  ($diasFiltro =="TODO"){
				_diaSeleccionado= null;
			}
			_nombreCliente = $nombreCliente == ""  || $nombreCliente == "--TODOS--" ? null : $nombreCliente;
			_esac = $esac == ""  || $esac == "--TODOS--" ? null : $esac;
			_cobrador = $cobrador ="" || $cobrador == "--TODOS--" ? null : $cobrador;
			_fpor = $fpor == "" || $fpor == "--TODOS--" ? null : $fpor;  
			_cpago = $cPgo == "" || $cPgo == "--TODOS--" ? null : $cPgo;
			_medioPago = $medioPago == "" || $medioPago == "--TODOS--" ? null : $medioPago;
			_clasificacion = $clasificacion == "" ? null : $clasificacion;
			_factura = $factura == "" ? null : $factura;
			
			var numFFila:int = 0;
			var cont:Number=0;
			var piezaFin:Number=0;
			var ultimoItemFiltro:Cobros = new Cobros();
			ultimoItemFiltro.montoDolares = 0;
			
			if( _sql != null ){
				_repoFiltroCobros = new ArrayCollection();
				var nombresCliente:Array = _nombreCliente == null ? _sql.getPunteros([null, "nombreCliente",  null, null, null, null, null ]): [_nombreCliente];
				
				// PIE CHARTS //      
				var punteroCombos:Array = _sql.getPunteros([ _diaSeleccionado, null, null, null,null,null,null,null, null]);
				_infoCombo = _sql.armarLista(punteroCombos);
				
				for( var x:int = 0; x < nombresCliente.length; x++){
					var punterosXCliente:Array = _sql.getPunteros([ _diaSeleccionado,nombresCliente[x], _cpago, _factura, _clasificacion,null,null, _medioPago, _fpor,null,null,null,null,null,_esac,_cobrador]);
					
					if (punterosXCliente.length>0){
						var cobros:Cobros = new Cobros();
						var TempFactura:Array = _sql.getPunteros([ _diaSeleccionado,nombresCliente[x], _cpago, _factura, _clasificacion,null,null, _medioPago, _fpor,null,null,null,null,null,_esac,_cobrador],'factura');
						var totalFacturas:Array = _sql.getValoresCampo("factura",TempFactura);
						
						numFFila++;
						cobros.numFila = numFFila;
						cobros.nombreCliente = nombresCliente[x];
						cobros.cpedido = (_sql.universo.getItemAt( punterosXCliente[0] ) as Cobros).cpedido;
						
						cobros.fechaFacturacion= (_sql.universo.getItemAt( punterosXCliente[0] ) as Cobros).fechaFacturacion;
						cobros.fechaEsperadaPago= (_sql.universo.getItemAt( punterosXCliente[0] ) as Cobros).fechaEsperadaPago;
						cobros.fpor = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).fpor;
						cobros.medioPago = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).medioPago;
						cobros.cpago = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).cpago;
						cobros.esac = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).esac;
						cobros.ev = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).ev;
						cobros.cobrador = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).cobrador;
						cobros.estado = (_sql.universo.getItemAt(TempFactura[0]) as Cobros).estado;
						cobros.diasRestantesCobro = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).diasRestantesCobro;
						cobros.partidas = (_sql.universo.getItemAt( TempFactura[0] ) as Cobros).partidas;
						cobros.montoDolares = _sql.getSumarCampo( "montoDolares", punterosXCliente);
						cobros.piezas = _sql.getSumarCampo( "piezas", punterosXCliente);	
						cobros.totalFacturas = totalFacturas.length; 
						
						_repoFiltroCobros.addItem( cobros );
						piezaFin = piezaFin + cobros.piezas; 
						ultimoItemFiltro.montoDolares += cobros.montoDolares;
						ultimoItemFiltro.piezas = _sql.getSumarCampo( "piezas", punterosXCliente);
					}
				}
				ultimoItemFiltro.piezas = piezaFin; 
				
				ultimoItemFiltro.nombreCliente = _repoFiltroCobros.length.toString();
				ultimoItemFiltro.estado = 'ultimo';
				_repoFiltroCobros.addItem( ultimoItemFiltro );
			}
			
			obtenerTotalClientesDias();
			
			dispatchEvent(new Event ("reporteFiltroCobrosModeloReporteCobros"));
			
		}
		
		// FILTRAR FACTURAS X CLIENTE
		public function obtenerFacturasCliente($nombreCliente:Cobros):void{
			
			_nombreClienteFactura = $nombreCliente.nombreCliente == ""  || $nombreCliente.nombreCliente == "--TODOS--" ? null : $nombreCliente.nombreCliente;
			
			var numFFila:int = 0;
			var cont:Number=0;
			var piezaFin:Number=0;
			var ultimoItem:Cobros = new Cobros();
			_repoFiltroFacturas = new ArrayCollection();
			ultimoItem.montoDolares = 0;
			
			_flag = $nombreCliente.finLista;
			var tempFacturas:Array = _sql.getPunteros([ _diaSeleccionado, _nombreClienteFactura, _cpago, $nombreCliente.factura == 0 ? null : $nombreCliente.factura,null,null,null,_medioPago, _fpor,null,null,null,null,null,_esac,_cobrador]);
			if ($nombreCliente.finLista && tempFacturas.length>0){
				for( var x:int = 0; x < tempFacturas.length; x++){
					var cobros:Cobros = new Cobros();
					cobros = (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros);
					numFFila++;
					cobros.numFila = numFFila;
					cobros.nombreCliente = _nombreClienteFactura;
					cobros.finLista = $nombreCliente.finLista;
					cobros.totalFacturas = tempFacturas.length;
					
					_repoFiltroFacturas.addItem( cobros );
					piezaFin = piezaFin + cobros.piezas; 
					ultimoItem.montoDolares += cobros.montoDolares;
					ultimoItem.piezas = _sql.getSumarCampo( "piezas", tempFacturas);	
				}
				
			}
			else{
				ultimoItem.montoDolares = $nombreCliente.montoDolares;
				ultimoItem.piezas = $nombreCliente.piezas;
				_repoFiltroFacturas.addItem($nombreCliente);
				ultimoItem.estado = 'ultimo';
				_repoFiltroFacturas.addItem( ultimoItem );
				dispatchEvent(new Event ("filtroFacturasClienteModeloReporteCobros"));
				return;
			}
			ultimoItem.piezas = piezaFin; 
			
			ultimoItem.nombreCliente = _repoFiltroFacturas.length.toString();
			ultimoItem.estado = 'ultimo';
			_repoFiltroFacturas.addItem( ultimoItem );
			
			dispatchEvent(new Event ("filtroFacturasClienteModeloReporteCobros"));
		}
		
		
		public function generarGraficas($arrTemp:Array, $clasificacion:String):void{
			
			_chartCliente = new ArrayCollection();
			_chartFPor = new ArrayCollection();
			_chartCPago = new ArrayCollection();
			_chartMPago = new ArrayCollection();
			_chartNIngreso = new ArrayCollection();
			_chartDCredito = new ArrayCollection();
			
			//PIE CHARTS //
			var arry:ArrayCollection = new ArrayCollection($arrTemp);
			var graficas:Query = new Query(arry , ["diasFiltro", "nombreCliente", "cpago","factura","clasificacion","montoDolares","piezas","medioPago","fpor","totalFacturas","nivelIngreso","diasRestantesCobro","estado"]);
			
			generateChartReporte2($arrTemp);
			
			_chartCliente = generateChartReporte( "nombreCliente", _nombreCliente, [_diaSeleccionado,'nombreCliente', _cpago, _factura, $clasificacion, null, null, _medioPago, _fpor,null,null,null,"Por Cobrar",null,_esac,_cobrador] );
			_chartFPor = generateChartReporte( "fpor", _fpor, [_diaSeleccionado,_nombreCliente, _cpago, _factura, $clasificacion, null, null, _medioPago, 'fpor',null,null,null,"Por Cobrar",null,_esac,_cobrador] );
			_chartCPago = generateChartReporte( "cpago", _cpago, [_diaSeleccionado,_nombreCliente, 'cpago', _factura, $clasificacion, null, null, _medioPago, _fpor,null,null,null,"Por Cobrar",null,_esac,_cobrador] );
			_chartMPago = generateChartReporte( "medioPago", _medioPago, [_diaSeleccionado,_nombreCliente,_cpago, _factura, $clasificacion, null, null, 'medioPago', _fpor,null,null,null,"Por Cobrar",null,_esac,_cobrador] );
			_chartNIngreso = generateChartReporte( "nivelIngreso", _nivelIngreso, [_diaSeleccionado,_nombreCliente, _cpago, _factura, $clasificacion, null, null, _medioPago, _fpor,null,"nivelIngreso",null,"Por Cobrar",null,_esac,_cobrador] );
			
			_chartDCredito = graficaDiasRestante($arrTemp);
			_indiceAnterior = 0;
			if (_indice == 1){
				mostrarGraficas();
			}
			
		}
		
		public function mostrarGraficas():void{
			if (_indice != _indiceAnterior ){
				dispatchEvent( new Event("regresaGraficaClientes") );
				dispatchEvent( new Event("regresaGraficaFPor") );
				dispatchEvent( new Event("regresaGraficaCPago") );
				dispatchEvent( new Event("regresaGraficaMPago") );
				dispatchEvent( new Event("regresaGraficaNivelIngreso") );
				dispatchEvent( new Event("regresaGraficaDiasRestantes") );
				_indiceAnterior = 1;
			}
		}
		
		private function generateChartReporte2($array:Array):ArrayCollection{
			var chart:ArrayCollection = new ArrayCollection;
			if ($array != null){
				for (var i:int = 0; i < $array.length; i++){
					var grafica:ResumenConsulta = new ResumenConsulta();
					var tempFacturas:Array = _sql.getPunteros([ _diaSeleccionado, $array[i].nombreCliente.toUpperCase(), _cpago, _factura, _clasificacion,null,null, _medioPago, _fpor,null,null,null,null,null,_esac,_cobrador],'cpago');
					for (var x:int = 0; x < tempFacturas.length; x++){
						if ((_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).estado == "ultimo"){
						}
						else{
							grafica.piezasTotal += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).piezas;
							grafica.total += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).montoDolares;
							grafica.partidas += 1; grafica.factura += 1;
							if (!grafica.numFila){
								grafica.clientes += 1; grafica.numFila = 1;
							}
						}
					}
					grafica.numFila = 0;
					chart.addItem(grafica);
				}
				var dataSortField:SortField = new SortField();
				dataSortField.name = "total";
				dataSortField.descending = true;
				var numericDataSort:Sort = new Sort();
				numericDataSort.fields = [dataSortField];
				chart.sort = numericDataSort;
				chart.refresh();
				return chart;
			}
			return chart;
		}
		
		private function generateChartReporte( $propiedad:String, $filtro:String, $consulta:Array ):ArrayCollection
		{
			var arrayProvider:ArrayCollection = new ArrayCollection();
			if( _sql.indexObject[ $propiedad ] != null )
			{
				var posIdx:int = $consulta.indexOf( $propiedad );
				for( var key:String in _sql.indexObject[ $propiedad ] )
				{
					var consultaReformulada:Array = ObjectUtil.copy( $consulta ) as Array; 
					if( posIdx != -1 )
						consultaReformulada[ posIdx ] = key;
					if( $filtro != null )
						consultaReformulada[ posIdx ] = $filtro;
					if( posIdx != -1 && $filtro == null || key == $filtro )
					{
						var cachoPie:ResumenConsulta = new ResumenConsulta();
						cachoPie.etiqueta = key;
						var punterosFiltro:Array = _sql.getPunteros( consultaReformulada );
						cachoPie.total = _sql.getSumarCampo( "montoDolares", punterosFiltro); 
						cachoPie.factura = _sql.getSumarCampo("totalFacturas", punterosFiltro );
						cachoPie.clientes = _sql.getPunteros( consultaReformulada, "nombreCliente" ).length;
						cachoPie.piezasTotal = _sql.getSumarCampo( "piezas", punterosFiltro);
						cachoPie.factura = punterosFiltro.length;
						cachoPie.partidas =  _sql.getSumarCampo( "partidas", punterosFiltro);
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
		
		private function graficaDiasRestante($array:Array):ArrayCollection{
			var enTiempo:ResumenConsulta = new ResumenConsulta();
			var delPago:ResumenConsulta = new ResumenConsulta();
			var vencimiento:ResumenConsulta = new ResumenConsulta();
			var despuesPago:ResumenConsulta = new ResumenConsulta();
			var moroso:ResumenConsulta = new ResumenConsulta();
			var diasRestante:ArrayCollection = new ArrayCollection;
			var pendiente:ResumenConsulta = new ResumenConsulta();
			
			
			if ($array != null){
				for (var i:int = 0; i < $array.length; i++){
					var tempFacturas:Array = _sql.getPunteros([ _diaSeleccionado, $array[i].nombreCliente.toUpperCase(), _cpago, _factura, _clasificacion,null,null, _medioPago, _fpor,null,null,null,null,null,_esac,_cobrador],'factura');
					for (var x:int = 0; x < tempFacturas.length; x++){
						if ((_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).estado == "ultimo"){
						}
						else if(parseInt((_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).diasRestantesCobro) > 3 ){
							enTiempo.piezasTotal += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).piezas;
							enTiempo.total += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).montoDolares;
							enTiempo.partidas += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).partidas;
							enTiempo.factura += 1;
							if (!enTiempo.numFila){
								enTiempo.clientes += 1; enTiempo.numFila = 1;
							}
						}
						else if(parseInt((_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).diasRestantesCobro) <= 3 && 
							parseInt((_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).diasRestantesCobro) > 0 ){
							delPago.piezasTotal += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).piezas;
							delPago.total += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).montoDolares;
							delPago.partidas += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).partidas;
							delPago.factura += 1;
							if (!delPago.numFila){
								delPago.clientes += 1; delPago.numFila = 1;
							}
						}
						else if(parseInt((_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).diasRestantesCobro) == 0 ){
							vencimiento.piezasTotal += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).piezas;
							vencimiento.total += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).montoDolares;
							vencimiento.partidas += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).partidas;
							vencimiento.factura += 1;
							if (!vencimiento.numFila){
								vencimiento.clientes += 1; vencimiento.numFila = 1;
							}
						}
						else if(parseInt((_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).diasRestantesCobro) >= -3 && 
							parseInt((_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).diasRestantesCobro) < 0 ){
							despuesPago.piezasTotal += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).piezas;
							despuesPago.total += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).montoDolares;
							despuesPago.partidas += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).partidas;
							despuesPago.factura += 1;
							if (!despuesPago.numFila){
								despuesPago.clientes += 1; despuesPago.numFila = 1;
							}
						}
						else if(parseInt((_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).diasRestantesCobro) < -3 ){
							moroso.piezasTotal += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).piezas;
							moroso.total += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).montoDolares;
							moroso.partidas += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).partidas;
							moroso.factura += 1;
							if (!moroso.numFila){
								moroso.clientes += 1; moroso.numFila = 1;
							}
						}
						else{
							pendiente.piezasTotal += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).piezas;
							pendiente.total += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).montoDolares;
							pendiente.partidas += (_sql.universo.getItemAt( tempFacturas[x] ) as Cobros).partidas;
							pendiente.factura += 1;
							if (!pendiente.numFila){
								pendiente.clientes += 1; pendiente.numFila = 1;
							}
						}
					}
					enTiempo.numFila = delPago.numFila = vencimiento.numFila = despuesPago.numFila = moroso.numFila = pendiente.numFila = 0;
				}
				if (enTiempo.partidas > 0){
					enTiempo.etiqueta = "En tiempo";
					diasRestante.addItem(enTiempo);
				}
				if(delPago.partidas > 0){
					delPago.etiqueta = "A 3 días del pago";
					diasRestante.addItem(delPago);
				}
				if(vencimiento.partidas > 0){
					vencimiento.etiqueta = "Vencimiento";
					diasRestante.addItem(vencimiento);
				}
				if(despuesPago.partidas > 0){
					despuesPago.etiqueta = "3 días despues del pago";
					diasRestante.addItem(despuesPago);
				}
				if(moroso.partidas > 0){
					moroso.etiqueta = "Moroso";
					diasRestante.addItem(moroso);
				}
				if (pendiente.partidas > 0){
					pendiente.etiqueta = "Pendiente";
					diasRestante.addItem(pendiente);
				}
				var dataSortField:SortField = new SortField();
				dataSortField.name = "total";
				dataSortField.descending = true;
				var numericDataSort:Sort = new Sort();
				numericDataSort.fields = [dataSortField];
				diasRestante.sort = numericDataSort;
				diasRestante.refresh();
				return diasRestante;
			}
			return diasRestante;
		}
		
		[Bindable(event="infoCombosModeloReporteCobros")]
		public function get obtenInfoCombos():ArrayCollection{
				return this._infoCombo;
		}
		
		[Bindable(event="reporteCobrosModeloReporteCobros")]
		public function get obtenReportesCobros():ArrayCollection{
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"reporteCobrosModeloReporteCobros");
			}
			
			return this._repoCobros;
		}

		[Bindable(event="reporteFiltroCobrosModeloReporteCobros")]
		public function get obtenFiltroReportesCobros():ArrayCollection{
			return this._repoFiltroCobros;
		}

		[Bindable(event="filtroFacturasClienteModeloReporteCobros")]
		public function get obtenFiltroFacturasCliente():ArrayCollection{
			return this._repoFiltroFacturas;
		}
		
		[Bindable(event="regresaLabels")]
		public function get regresarObjLabels():Object{
			return  _objLabels;
		}
		
		[Bindable(event="regresaFecha")]
		public function get regresarfecha():Object{
			return  _diaSeleccionado;
		}
		
		[Bindable(event="regresaGraficaClientes")]
		public function get enviaClientes():ArrayCollection{
			return  _chartCliente;
		}

		[Bindable(event="regresaGraficaFPor")]
		public function get enviaFPor():ArrayCollection{
			return  _chartFPor;
		}
		
		[Bindable(event="regresaGraficaCPago")]
		public function get enviaCPago():ArrayCollection{
			return  _chartCPago;
		}
		
		[Bindable(event="regresaGraficaMPago")]
		public function get enviaMPago():ArrayCollection{
			return  _chartMPago;
		}
		[Bindable(event="regresaGraficaNivelIngreso")]
		public function get enviaNIngreso():ArrayCollection{
			return  _chartNIngreso;
		}
		[Bindable(event="regresaGraficaDiasRestantes")]
		public function get enviaDCredito():ArrayCollection{
			return  _chartDCredito;
		}

		
		private var _cobro:Cobros;
		public function setObtenFacturaCliente($cobro:Cobros):void{
			
			_cobro = $cobro;
			dispatchEvent( new Event ("enviarFolioFactura"));		
			
		}
		[Bindable(event="enviarFolioFactura")]
		public function get obtenFacturaCliente():Cobros{
			return  _cobro;
		}
		
		private var _historial:ArrayCollection;
		public function setHistorialFactura($historial:ArrayCollection):void{	
			_historial = $historial;
			dispatchEvent( new Event ("enviarHistorialFactura"));		
		}
		[Bindable(event="enviarHistorialFactura")]
		public function get obtenerHistorialFactura():ArrayCollection{
			return _historial;
		}
		
		private var _label:String;
		public function obtenerLabelMonto($label:String):void{
			
			_label = $label;
			dispatchEvent( new Event ("enviarLabelMontos"));		
			
		}
		[Bindable(event="enviarLabelMontos")]
		public function get enviarLabelMontos():String{
			return  _label;
		}
		
		
		public function errorUniverso(objeto:Object):void{
			alertaSingleton.showReintentar(objeto.toString());
		}
		
		public function errorHistorial(objeto:Object):void{
			alertaSingleton.showReintentar(objeto.toString());
		}
		
		public function ModeloReporteCobros(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function setIndice($indice:int):void{
			_indice = $indice;
		}
		
		
		private var _lista:ArrayCollection;
		public function setObtenPedidosFacturaCliente($pedidos:ArrayCollection):void{
			
			var $sql:Query;
			var punteros:Array;
			var listaPartidasTemp:Array = new Array;
			var partidaItem:Cobros;
			
			var isAvanzada:Boolean = _flag;
			
			if ($pedidos != null ){
				
				$sql = new Query($pedidos,["diasFiltro","nombreCliente","cpedido","factura","piezas","estado"]);
				//punteros = $sql.getPunteros([_diaSeleccionado]);
				
				for (var i:int = 0; i < $sql.universo.length; i++){
					partidaItem = new Cobros();
					partidaItem = ObjectUtil.copy($sql.universo[i]) as Cobros;
					if ($sql.universo[i].estado == "Por Cobrar" ){
						
						if (isAvanzada && _diaSeleccionado != null && $sql.universo[i].diasFiltro != _diaSeleccionado){
							continue;
						}
						partidaItem.isEnfocado = true;
						
						var dias:int = parseInt(($sql.universo[i] as Cobros).diasRestantesCobro);
						if (dias > 3 ){
							partidaItem.color = catalogoColores.LABEL_VERDE;
						}
						else if (dias > 0 && dias <= 3){
							partidaItem.color = catalogoColores.LABEL_AMARILLO_FUERTE;//0xFFFF70;
						}
						else if (($sql.universo[i] as Cobros).diasRestantesCobro != "Pendiente" && dias == 0){
							partidaItem.color = catalogoColores.LABEL_NARANJA;
						}
						else if (dias < 0 && dias >= -3){
							partidaItem.color = catalogoColores.LABEL_ROJO;
						}
						else if (dias < -3){
							partidaItem.color = catalogoColores.LABEL_MORADO;
						}
						else{
							partidaItem.color = null;
						}
					}
					partidaItem.partidas = 1;
					listaPartidasTemp.push(partidaItem);
				}
				
				if (listaPartidasTemp.length > 1){
					listaPartidasTemp.sortOn("isEnfocado",Array.DESCENDING);
				}
				
				for (i = 0; i < listaPartidasTemp.length; i++){
					listaPartidasTemp[i].numFila = i + 1;
				}
			}
			
			//dispatchEvent( new Event("enviarDiaSeleccionadoReporteCobro") );
			_lista = new ArrayCollection(listaPartidasTemp);
			dispatchEvent( new Event ("enviarPedidosFacturaReporteCobro"));		
			
		}
		/*[Bindable(event="enviarDiaSeleccionadoReporteCobro")]
		public function get enviarDiaSeleccionadoReporteCobros():String{
			return _flag?_diaSeleccionado:null;
		}*/
		[Bindable(event="enviarPedidosFacturaReporteCobro")]
		public function get enviarPedidosFacturaCliente():ArrayCollection{
			return  _lista;
		}
		
		private var _facturaCobro:Cobros;
		public function setObtenerInformeFacturaCliente($event:EventoReporteCobros):void{
			
			_facturaCobro = $event.cobro;
			dispatchEvent( new Event ("enviarFacturaInformeReporteCobro"));		
			
		}
		[Bindable(event="enviarFacturaInformeReporteCobro")]
		public function get enviarFacturaInformeReporteCobro():Cobros{
			return  _facturaCobro;
		}
		
		private var _lstFactura:ArrayCollection;
		public function setObtenFacturaClienteReporteCobros($event:ArrayCollection):void{
			
			if ($event != null && $event.length > 0 ){
				var ultimoItem:Cobros = new Cobros();
				ultimoItem.montoDolares = 0;
				ultimoItem.piezas = 0;
				_lstFactura = $event;
				for (var i:int = 0; i < _lstFactura.length; i++){
					_lstFactura[i].numFila = i + 1;
					_lstFactura[i].totalFacturas = 1;
					ultimoItem.montoDolares += _lstFactura[i].montoDolares;
					ultimoItem.piezas += _lstFactura[i].piezas;
				}
				ultimoItem.nombreCliente = _lstFactura.length.toString();
				ultimoItem.estado = 'ultimo';
				_lstFactura.addItem(ultimoItem);
			}
			else{
				_lstFactura = null;
			}
			dispatchEvent( new Event ("enviarFacturaReporteCobro"));		
			
		}
		[Bindable(event="enviarFacturaReporteCobro")]
		public function get enviarFacturaReporteCobro():ArrayCollection{
			return _lstFactura;		
		}
		
		public function limpiarCpedidos($tipo:String):void{
			
			if ($tipo == "listaClientes"){
				this._repoFiltroFacturas = null;
				dispatchEvent( new Event("filtroFacturasClienteModeloReporteCobros"));
			}else if($tipo == "listaFacturas"){
				//dispatchEvent( new Event("enviarDiaSeleccionadoReporteCobro") );
				_lista = null;
				dispatchEvent( new Event ("enviarPedidosFacturaReporteCobro"));	
			} else if ($tipo == "listaHistorial"){
				_historial = null;
				dispatchEvent( new Event ("enviarHistorialFactura"));
				_facturaCobro = null;
				dispatchEvent( new Event ("enviarFacturaInformeReporteCobro"));	
			}
		}
		
		/**
		* Control de bloqueo de Pantalla
		*/
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
			
			dispatchEvent( new Event("actualizaEsperaYBloqueoModeloReporteCobros") );
		}
		
		[Bindable(event="actualizaEsperaYBloqueoModeloReporteCobros")]
		public function get actualizarEstadoDeEsperaYBloqueo():Object
		{
			return actualizarEspera;
		}
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				if((EventoReporteCobros[$tiposEventos[i]])== null){
					return false;
				}
			}
			return true;
		}
	}
}
