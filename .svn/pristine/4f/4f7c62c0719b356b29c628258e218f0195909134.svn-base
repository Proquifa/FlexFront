package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import mx.formatters.DateBase;
	import mx.formatters.DateFormatter;

	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.reportes.confirmacionDatos.ReporteConfirmacionDeDatos")]
	public class ReporteConfirmacionDeDatos
	{
		private var _idPCotPharma:String;
		private var _folioCotizacion:String;
		private var _piezas:int;
		private var _fechaInvestiga:Date; 
		private var _nombreProveedor:String;
		private var _tipoProveedor:String;
		private var _importeDolares:Number;
		private var _precioUDolares:Number;
		private var _nombreCliente:String;
		private var _esac:String;
		private var _ev:String;
		private var _tipoProducto:String;
		private var _descripcionProducto:String;
		private var _codigo:String;
		private var _fabrica:String;
		private var  _estadoPharma:String;
		private var _estadoPharmaReal:String;
		private var _fechaRegistro:Date;
		private var _referencia:String;
		private var _contacto:String;
		private var _fechaClasificacion:Date;
		private var _comentariosInvestigacion:String;
		private var _presentacion:String;
		private var _precioInvestiga:Number;
		private var _monedaInvestiga:String;
	    private var _precioInvestigaString:String;
		private var _comentarioRechazoPharma:String;
		private var _comentarioRechazoEsac:String;
		private var _nivelIngreso:String;
		private var _webProveedor:String;
		private var _webMarca:String;
		
		//Para Vista
		private var _esacVista:String;
		private var _evVista:String
		private var _tipoProductoVista:String;
		private var _diasFiltro:String;
		private var _fechaInvestigaString:String;
		private var _isEnEnfoque:Boolean;
		private var _fechaRegistroString:String;
		private var _fechaClasificacionString:String;
		DateBase.monthNamesShort = ["Ene","Feb","Mar","Abr","May","Jun","Jul","Ago","Sept","Oct","Nov","Dic"];
		
		public function ReporteConfirmacionDeDatos()
		{
			_isEnEnfoque=false;
			_fechaInvestigaString = 'ND';
		}
		
		public function get idPCotPharma():String
		{
			return _idPCotPharma;
		}

		public function set idPCotPharma(value:String):void
		{
			_idPCotPharma = value;
		}

		public function get folioCotizacion():String
		{
			return _folioCotizacion;
		}

		public function set folioCotizacion(value:String):void
		{
			_folioCotizacion = value;
		}

		public function get piezas():int
		{
			return _piezas;
		}

		public function set piezas(value:int):void
		{
			_piezas = value;
		}

		public function get fechaInvestiga():Date
		{
			return _fechaInvestiga;
		}

		public function set fechaInvestiga(value:Date):void
		{
			_fechaInvestiga = value;
			if(value != null){
				var formatoFecha:DateFormatter = new DateFormatter();
				formatoFecha.formatString = "DD/MMM/YYYY";
				_fechaInvestigaString = formatoFecha.format( value );
			}
		}

		public function get nombreProveedor():String
		{
			return _nombreProveedor;
		}

		public function set nombreProveedor(value:String):void
		{
			_nombreProveedor = value;
		}

		public function get tipoProveedor():String
		{
			return _tipoProveedor;
		}

		public function set tipoProveedor(value:String):void
		{
			_tipoProveedor = value;
		}

		public function get importeDolares():Number
		{
			return _importeDolares;
		}

		public function set importeDolares(value:Number):void
		{
			_importeDolares = value;
		}

		public function get precioUDolares():Number
		{
			return _precioUDolares;
		}

		public function set precioUDolares(value:Number):void
		{
			_precioUDolares = value;
		}

		public function get nombreCliente():String
		{
			return _nombreCliente;
		}

		public function set nombreCliente(value:String):void
		{
			_nombreCliente = value;
		}

		public function get esac():String
		{
			return _esac;
		}

		public function set esac(value:String):void
		{
			_esac = value.toUpperCase();
			_esacVista = value;
		}

		public function get tipoProducto():String
		{
			return _tipoProducto;
		}

		public function set tipoProducto(value:String):void
		{
			_tipoProducto = value.toLocaleUpperCase();
			_tipoProductoVista = value;
		}

		public function get descripcionProducto():String
		{
			return _descripcionProducto;
		}

		public function set descripcionProducto(value:String):void
		{
			_descripcionProducto = value;
		}

		public function get codigo():String
		{
			return _codigo;
		}

		public function set codigo(value:String):void
		{
			_codigo = value;
		}

		public function get fabrica():String
		{
			return _fabrica;
		}

		public function set fabrica(value:String):void
		{
			_fabrica = value;
		}

		public function get estadoPharma():String
		{
				return _estadoPharma;
		}

		public function set estadoPharma(value:String):void
		{
			_estadoPharmaReal = value;
			
			if(value=='En Realización Pharma' || value=='En Pharma rechazada'){
				_estadoPharma = "En Pharma";
			}else{
			_estadoPharma = value;
			}
		}

		public function get diasFiltro():String
		{
			return _diasFiltro;
		}

		public function set diasFiltro(value:String):void
		{
			_diasFiltro = value;
		}

		public function get fechaInvestigaString():String
		{
			return _fechaInvestigaString;
		}

		public function set fechaInvestigaString(value:String):void
		{
			_fechaInvestigaString = value;
		}

		public function get ev():String
		{
			return _ev;
		}

		public function set ev(value:String):void
		{
			_ev = value.toLocaleUpperCase();
			_evVista = value;
		}

		public function get isEnEnfoque():Boolean
		{
			return _isEnEnfoque;
		}

		public function set isEnEnfoque(value:Boolean):void
		{
			_isEnEnfoque = value;
		}

		public function get fechaRegistro():Date
		{
			return _fechaRegistro;
		}

		public function set fechaRegistro(value:Date):void
		{
			_fechaRegistro = value;
			if(value != null){
				var formatoFecha:DateFormatter = new DateFormatter();
				formatoFecha.formatString = "DD/MMM/YYYY HH:NN";
				_fechaRegistroString = formatoFecha.format( value );
			}
		}

		public function get referencia():String
		{
			return _referencia;
		}

		public function set referencia(value:String):void
		{
			_referencia = value;
		}

		public function get contacto():String
		{
			return _contacto;
		}

		public function set contacto(value:String):void
		{
			_contacto = value;
		}

		public function get fechaClasificacion():Date
		{
			return _fechaClasificacion;
		}

		public function set fechaClasificacion(value:Date):void
		{
			_fechaClasificacion = value;
			if(value != null){
				var formatoFecha:DateFormatter = new DateFormatter();
				formatoFecha.formatString = "DD/MMM/YYYY HH:NN";
				_fechaClasificacionString = formatoFecha.format( value );
			}
		}

		public function get comentariosInvestigacion():String
		{
			return _comentariosInvestigacion;
		}

		public function set comentariosInvestigacion(value:String):void
		{
			_comentariosInvestigacion = value;
		}

		public function get fechaRegistroString():String
		{
			return _fechaRegistroString;
		}

		public function set fechaRegistroString(value:String):void
		{
			_fechaRegistroString = value;
		}

		public function get fechaClasificacionString():String
		{
			return _fechaClasificacionString;
		}

		public function set fechaClasificacionString(value:String):void
		{
			_fechaClasificacionString = value;
		}

		public function get presentacion():String
		{
			return _presentacion;
		}

		public function set presentacion(value:String):void
		{
			_presentacion = value;
		}

		public function get precioInvestiga():Number
		{
			return _precioInvestiga;
		}

		public function set precioInvestiga(value:Number):void
		{
			_precioInvestiga = value;
		}

		public function get monedaInvestiga():String
		{
			return _monedaInvestiga;
		}

		public function set monedaInvestiga(value:String):void
		{
			_monedaInvestiga = value;
		}

		public function get estadoPharmaReal():String
		{
			return _estadoPharmaReal;
		}
		public function set estadoPharmaReal(value:String):void
		{
			_estadoPharmaReal = value;
		}

		public function get precioInvestigaString():String
		{
			return _precioInvestigaString;
		}

		public function set precioInvestigaString(value:String):void
		{
			_precioInvestigaString = value;
		}

		public function get esacVista():String
		{
			return _esacVista;
		}

		public function set esacVista(value:String):void
		{
			_esacVista = value;
		}

		public function get evVista():String
		{
			return _evVista;
		}

		public function set evVista(value:String):void
		{
			_evVista = value;
		}

		public function get tipoProductoVista():String
		{
			return _tipoProductoVista;
		}

		public function set tipoProductoVista(value:String):void
		{
			_tipoProductoVista = value;
		}

		public function get comentarioRechazoPharma():String
		{
			return _comentarioRechazoPharma;
		}

		public function set comentarioRechazoPharma(value:String):void
		{
			_comentarioRechazoPharma = value;
		}

		public function get comentarioRechazoEsac():String
		{
			return _comentarioRechazoEsac;
		}

		public function set comentarioRechazoEsac(value:String):void
		{
			_comentarioRechazoEsac = value;
		}

		public function get nivelIngreso():String
		{
			return _nivelIngreso;
		}

		public function set nivelIngreso(value:String):void
		{
			_nivelIngreso = value;
		}

		public function get webProveedor():String
		{
			return _webProveedor;
		}

		public function set webProveedor(value:String):void
		{
			_webProveedor = value;
		}

		public function get webMarca():String
		{
			return _webMarca;
		}

		public function set webMarca(value:String):void
		{
			_webMarca = value;
		}


	}
}