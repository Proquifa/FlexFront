package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.ventas
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.reportes.seguimientos.SeguimientoCotizacion")]
	[Bindable]
	public class SeguimientoCotizacion
	{
		private var _numFila:int;
		private var _diasAtraso:Number;
		private var _estadoSeguimiento:String;
		private var _enTiempo:String;
		private var _fechaCotizacion:Date;
		private var _fechaCotizacionString:String;
		private var _fechaSiguienteContacto:Date;
		private var _folioCotizacion:String;
		private var _montoCotizacion:Number;
		private var _montoCotizacionString:String;
		private var _montoPartida:Number;
		private var _nombreCliente:String;
		private var _nombreContacto:String;
		private var _nombreVendedor:String;
		private var _piezas:Number;
		private var _tipoSeguimiento:String;
		private var _usuarioVendedor:String;
		private var _idPCotiza:Number;
		private var _nombreProducto:String;
		private var _razon:String;
		private var _fechaCancelacion:Date;
		private var _mes:Number;
		private var _fechaCierre:Date;
		private var _fabrica:String;
		private var _monedaCotiza:String;
		private var _nivelIngreso:String;// AA, AB
		private var _folio:String;
		private var _master:String;
		private var _repetido:Boolean;
		//////////////////////////////////////////Renderers////////////////////////////////////////////////////////////////////////////////
		private var _montoPartidaString:String;
		private var _fechaSiguienteContactoString:String;
		private var _fechaCancelacionString:String;
		private var _fechaCierreString:String;
		private var _ultimo:String;
		private var _partidas:int;
		private var _nombreEV:String;
		
		private var _marca:String;
		private var _tipoProduct:String;
		private var _control:String;
		private var _diasFiltro:String;
		
		private var _situacion:String // FIXME remover
		
		public function SeguimientoCotizacion()
		{
			this.ultimo = "";
			this._enTiempo = "Pendiente";
			this._nombreVendedor = "Sin asignar";
			this._nombreEV = "Sin asignar";
			_montoPartida = 0;
			_montoPartidaString  = "$ 0.00";
		}
	
		public function get master():String
		{
			return _master;
		}

		public function set master(value:String):void
		{
			_master = value;
		}

		public function get situacion():String
		{
			return _situacion;
		}

		public function set situacion(value:String):void
		{
			_situacion = value;
		}

		public function get folio():String
		{
			return _folio;
		}

		public function set folio(value:String):void
		{
			_folio = value;
		}

		public function get diasFiltro():String
		{
			/*redeclaro las fechas con horas, minutos y segundos en 0 para una comparación en bruto*/
			var fechaLejana:Date = fechaSiguienteContacto;
			//trace( 'FechaCOTIZACION: ' + fechaCotizacion.toString() );
			var actual:Date = new Date();
			if( fechaLejana != null )	fechaLejana = new Date(fechaLejana.fullYear, fechaLejana.month, fechaLejana.date, 0, 0, 0);
			actual = new Date(actual.fullYear, actual.month, actual.date, 0, 0, 0);
			var valor:int = UtilsFecha.regresaDiferenciaEntreFechasEnDias( actual, fechaLejana);
			if( valor  > 3 ){
					_diasFiltro = "FUTURO";
			}else if( valor  < -3 ){
					_diasFiltro = "PASADO";
			}else{
				_diasFiltro = 'DIA' + valor.toString();
			}
			return _diasFiltro;
		}

		public function set diasFiltro(value:String):void
		{
			_diasFiltro = value;
		}

		public function get control():String
		{
			return _control;
		}

		public function set control(value:String):void
		{
			_control = value;
		}

		public function get tipoProduct():String
		{
			return _tipoProduct;
		}

		public function set tipoProduct(value:String):void
		{
			_tipoProduct = value;
		}

		public function get marca():String
		{
			return _marca;
		}

		public function set marca(value:String):void
		{
			_marca = value;
		}

		public function get montoCotizacionString():String
		{
			_montoCotizacionString = '$ '+UtilsFormatosNumericos.precisionADosDecimalesConComas( montoCotizacion );
			return _montoCotizacionString;
		}

		public function set montoCotizacionString(value:String):void
		{
			_montoCotizacionString = value;
		}

		public function get nivelIngreso():String
		{
			return _nivelIngreso;
		}

		public function set nivelIngreso(value:String):void
		{
			_nivelIngreso = value;
		}

		public function get nombreEV():String
		{
			return _nombreEV;
		}
		
		public function set nombreEV(value:String):void
		{
			if(value == null || value == ""){
				_nombreEV == "Sin asignar";
			}
			else{
				_nombreEV = value;
			}
		}
		
		public function get partidas():int
		{
			return _partidas;
		}
		
		public function set partidas(value:int):void
		{
			_partidas = value;
		}
		
		public function get monedaCotiza():String
		{
			return _monedaCotiza;
		}
		
		public function set monedaCotiza(value:String):void
		{
			_monedaCotiza = value;
			/*if(value != "Pesos" && value != "Dolares"){
				//trace("hecho");
			}*/
		}
		
		public function get ultimo():String
		{
			return _ultimo;
		}
		
		public function set ultimo(value:String):void
		{
			_ultimo = value;
		}
		
		public function get fechaCotizacionString():String
		{
			return _fechaCotizacionString;
		}
		
		public function set fechaCotizacionString(value:String):void
		{
			_fechaCotizacionString = value;
		}
		
		public function get fabrica():String
		{
			return _fabrica;
		}
		
		public function set fabrica(value:String):void
		{
			_fabrica = value;
		}
		
		public function get fechaCierreString():String
		{
			_fechaCierreString = UtilsFecha.formatoFechaDDMMMYYYY( fechaCierre );
			return _fechaCierreString;
		}
		
		public function set fechaCierreString(value:String):void
		{
			_fechaCierreString = value;
		}
		
		public function get fechaCierre():Date
		{
			return _fechaCierre;
		}
		
		public function set fechaCierre(value:Date):void
		{
			_fechaCierre = value;
		}
		
		public function get fechaCancelacionString():String
		{
			_fechaCancelacionString = UtilsFecha.formatoFechaDDMMMYYYY( fechaCancelacion );
			return _fechaCancelacionString;
		}
		
		public function set fechaCancelacionString(value:String):void
		{
			_fechaCancelacionString = value;
		}
		
		public function get fechaSiguienteContactoString():String
		{
			_fechaSiguienteContactoString = UtilsFecha.formatoFechaDDMMMYYYY( fechaSiguienteContacto );
			return _fechaSiguienteContactoString;
		}
		
		public function set fechaSiguienteContactoString(value:String):void
		{
			_fechaSiguienteContactoString = value;
		}
		
		public function get mes():Number
		{
			return _mes;
		}
		
		public function set mes(value:Number):void
		{
			_mes = value;
		}
		
		public function get montoPartidaString():String
		{
			_montoPartidaString = '$ '+UtilsFormatosNumericos.precisionADosDecimalesConComas( montoPartida );
			return _montoPartidaString;
		}
		
		public function set montoPartidaString(value:String):void
		{
			_montoPartidaString = value;
		}
		
		public function get fechaCancelacion():Date
		{
			return _fechaCancelacion;
		}
		
		public function set fechaCancelacion(value:Date):void
		{
			_fechaCancelacion = value;
		}
		
		public function get razon():String
		{
			return _razon;
		}
		
		public function set razon(value:String):void
		{
			_razon = value;
		}
		
		public function get nombreProducto():String
		{
			return _nombreProducto;
		}
		
		public function set nombreProducto(value:String):void
		{
			_nombreProducto = value;
		}
		
		public function get idPCotiza():Number
		{
			return _idPCotiza;
		}
		
		public function set idPCotiza(value:Number):void
		{
			_idPCotiza = value;
		}
		
		public function get usuarioVendedor():String
		{
			return _usuarioVendedor;
		}
		
		public function set usuarioVendedor(value:String):void
		{
			_usuarioVendedor = value;
		}
		
		public function get tipoSeguimiento():String
		{
			return _tipoSeguimiento;
		}
		
		public function set tipoSeguimiento(value:String):void
		{
			_tipoSeguimiento = value;
		}
		
		public function get piezas():Number
		{
			return _piezas;
		}
		
		public function set piezas(value:Number):void
		{
			_piezas = value;
		}
		
		public function get nombreVendedor():String
		{
			return _nombreVendedor;
		}
		
		public function set nombreVendedor(value:String):void
		{
			if(value == null || value == ""){
				this._nombreVendedor = "Sin asignar";
			}
			else{
				_nombreVendedor = value;
			}
		}
		
		public function get nombreContacto():String
		{
			return _nombreContacto;
		}
		
		public function set nombreContacto(value:String):void
		{
			_nombreContacto = value;
		}
		
		public function get nombreCliente():String
		{
			return _nombreCliente;
		}
		
		public function set nombreCliente(value:String):void
		{
			_nombreCliente = value;
		}
		
		public function get montoPartida():Number
		{
			return _montoPartida;
		}
		
		public function set montoPartida(value:Number):void
		{
			_montoPartida = value;
		}
		
		public function get montoCotizacion():Number
		{
			return _montoCotizacion;
		}
		
		public function set montoCotizacion(value:Number):void
		{
			_montoCotizacion = value;
		}
		
		public function get folioCotizacion():String
		{
			return _folioCotizacion;
		}
		
		public function set folioCotizacion(value:String):void
		{
			_folioCotizacion = value;
		}
		
		public function get fechaSiguienteContacto():Date
		{
			return _fechaSiguienteContacto;
		}
		
		public function set fechaSiguienteContacto(value:Date):void
		{
			_fechaSiguienteContacto = value;
		}
		
		public function get fechaCotizacion():Date
		{
			return _fechaCotizacion;
		}
		
		public function set fechaCotizacion(value:Date):void
		{
			_fechaCotizacion = value;
		}
		
		public function get enTiempo():String
		{
			return _enTiempo;
		}
		
		public function set enTiempo(value:String):void
		{
			_enTiempo = value;
			if(value == null || value == ""){
				_enTiempo = "Pendiente";
			}
		}
		
		public function get estadoSeguimiento():String
		{
			return _estadoSeguimiento;
		}
		
		public function set estadoSeguimiento(value:String):void
		{
			_estadoSeguimiento = value;
		}
		
		public function get diasAtraso():Number
		{
			return _diasAtraso;
		}
		
		public function set diasAtraso(value:Number):void
		{
			_diasAtraso = value;
		}
		
		public function get numFila():int
		{
			return _numFila;
		}
		
		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get repetido():Boolean
		{
			return _repetido;
		}

		public function set repetido(value:Boolean):void
		{
			_repetido = value;
		}

		
	}
}