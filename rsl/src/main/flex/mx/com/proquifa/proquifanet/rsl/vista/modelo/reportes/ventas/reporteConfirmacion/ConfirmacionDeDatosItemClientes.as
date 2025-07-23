package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.ventas.reporteConfirmacion
{
	import mx.utils.StringUtil;

	[Bindable]
	public class ConfirmacionDeDatosItemClientes
	{
		private var _numFila:int;
		private var _numFilaString:String;
		private var _nombreCliente:String;
		private var _numCotizaciones:int;
		private var _numCotizacionesString:String;
		private var _numPiezas:int;
		private var _numPiezasString:String;
		private var _fechaInvestigacion:Date;
		private var _fechaInvestigacionString:String;
		private var _folioCotizacion:String;
		private var _importeDlls:Number;
		private var _importeDllsString:String;
		private var _isUltimo:Boolean;
		private var _totClientes:int;
		private var _totClientesString:String;
		private var _totImporteDlls:Number;
		private var _totImporteDllsString:String;
		private var _totPiezas:int;
		private var _totPiezasString:String;
		private var _totFilas:int;
		private var _panelTitulo:String;
		private var _esac:String;
		private var _ev:String;
		
		public function ConfirmacionDeDatosItemClientes()
		{
			isUltimo= false;
			_totClientesString = "0 Clientes";
			_totPiezasString = "0 Piezas";
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
			_numFilaString = "#"+value;
		}

		public function get numFilaString():String
		{
			return _numFilaString;
		}

		public function set numFilaString(value:String):void
		{
			_numFilaString = value;
		}

		public function get nombreCliente():String
		{
			return _nombreCliente;
		}

		public function set nombreCliente(value:String):void
		{
			_nombreCliente = value;
		}

		public function get numCotizaciones():int
		{
			return _numCotizaciones;
		}

		public function set numCotizaciones(value:int):void
		{
			_numCotizaciones = value;
			_numCotizacionesString = value + " Cot";
		}

		public function get numCotizacionesString():String
		{
			return _numCotizacionesString;
		}

		public function set numCotizacionesString(value:String):void
		{
			_numCotizacionesString = value;
		}

		public function get numPiezas():int
		{
			return _numPiezas;
		}

		public function set numPiezas(value:int):void
		{
			_numPiezas = value;
			if(value==1){
				_numPiezasString = value + " pza";
			}else{
				_numPiezasString = value + " pzas";
			}
		}

		public function get numPiezasString():String
		{
			return _numPiezasString;
		}

		public function set numPiezasString(value:String):void
		{
			_numPiezasString = value;
		}

		public function get fechaInvestigacion():Date
		{
			return _fechaInvestigacion;
		}

		public function set fechaInvestigacion(value:Date):void
		{
			_fechaInvestigacion = value;
		}

		public function get fechaInvestigacionString():String
		{
			return _fechaInvestigacionString;
		}

		public function set fechaInvestigacionString(value:String):void
		{
			_fechaInvestigacionString = value;
		}

		public function get importeDlls():Number
		{
			return _importeDlls;
		}

		public function set importeDlls(value:Number):void
		{
			_importeDlls = value;
			_importeDllsString = "$"+value+" USD";
		}

		public function get importeDllsString():String
		{
			return _importeDllsString;
		}

		public function set importeDllsString(value:String):void
		{
			_importeDllsString = value;
		}

		public function get isUltimo():Boolean
		{
			return _isUltimo;
		}

		public function set isUltimo(value:Boolean):void
		{
			_isUltimo = value;
		}

		public function get totClientes():int
		{
			return _totClientes;
		}

		public function set totClientes(value:int):void
		{
			_totClientes = value;
			if(value ==1){
				_totClientesString = value + " Cliente";
			}else if(value>1){
				_totClientesString = value + " Clientes";
			}
		}

		public function get totClientesString():String
		{
			return _totClientesString;
		}

		public function set totClientesString(value:String):void
		{
			_totClientesString = value;
		}

		public function get totImporteDlls():Number
		{
			return _totImporteDlls;
		}

		public function set totImporteDlls(value:Number):void
		{
			_totImporteDlls = value;
			_totImporteDllsString = "$"+value+" USD";
		}

		public function get totImporteDllsString():String
		{
			return _totImporteDllsString;
		}

		public function set totImporteDllsString(value:String):void
		{
			_totImporteDllsString = value;
		}

		public function get totPiezas():int
		{
			return _totPiezas;
		}

		public function set totPiezas(value:int):void
		{
			_totPiezas = value;
			if(value==1){
				_totPiezasString = value + " Pieza";
			}else if(value>1){
				_totPiezasString = value + " Piezas";
			}
		}

		public function get totPiezasString():String
		{
			return _totPiezasString;
		}

		public function set totPiezasString(value:String):void
		{
			_totPiezasString = value;
		}

		public function get totFilas():int
		{
			return _totFilas;
		}

		public function set totFilas(value:int):void
		{
			_totFilas = value;
		}

		public function get panelTitulo():String
		{
			return _panelTitulo;
		}

		public function set panelTitulo(value:String):void
		{
			_panelTitulo = value;
		}

		public function get folioCotizacion():String
		{
			return _folioCotizacion;
		}

		public function set folioCotizacion(value:String):void
		{
			_folioCotizacion = value;
		}

		public function get esac():String
		{
			return _esac;
		}

		public function set esac(value:String):void
		{
			_esac = value;
		}

		public function get ev():String
		{
				return _ev;
		}

		public function set ev(value:String):void
		{
			_ev = value;
		}

	}
}