package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.compras.reporteDePermisos
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	import mx.utils.StringUtil;

	[Bindable]
	public class ReporteDePermisosItemProductos
	{
		private var _numFila:int;
		private var _numFilaString:String;
		private var _numPiezas:int;
		private var _numPiezasString:String;
		private var _importeDlls:Number;
		private var _importeDllsString:String;
		private var _fechaET:Date;
		private var _fechaETString:String;
		private var _nombreProducto:String;
		private var _precioU:Number;
		private var _precioUString:String;
		private var _origen:String;
		private var _tipoPermiso:String;
		private var _tipoProducto:String;
		private var _subtipoProducto:String;
		private var _clasificacionProducto:String;
		private var _estadoFisico:String;
		private var _idSolicitud:String;
		private var _etiqueta:String;
		private var _estadoPermiso:String;
		// Para Items En Autorización
		private var _folioSolicitud:String;
		private var _fechaEL:Date;
		private var _fechaELString:String;
		//Para Item Por Someter
		private var _fechaInicio:Date;
		private var _fechaInicioString:String;
		
		//Para el enfoque
		private var _isConEnfoque:Boolean;
		private var _isIniEnfoque:Boolean;
		private var _isFinEnfoque:Boolean;
		
		//Para el Ultimo Item
		private var _isUltimo:Boolean;
		private var _totProductos:int;
		private var _totProductosString:String;
		private var _totImporteDlls:Number;
		private var _totImporteDllsString:String;
		private var _totPiezas:int;
		private var _totPiezasString:String;
		
		public function ReporteDePermisosItemProductos()
		{
			isUltimo = false;
			isConEnfoque = false;
			isIniEnfoque = false;
			isFinEnfoque = false;
			
			_totProductosString = "0 Productos";
			_totImporteDllsString = "$0 USD";
			_totPiezasString = "0 Pzas";
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
			_numFilaString = "#" + value;
		}

		public function get numFilaString():String
		{
			return _numFilaString;
		}

		public function set numFilaString(value:String):void
		{
			_numFilaString = value;
		}

		public function get numPiezas():int
		{
			return _numPiezas;
		}

		public function set numPiezas(value:int):void
		{
			_numPiezas = value;
			if(value ==1)
				_numPiezasString = value + " pza";
			else
				_numPiezasString = value + " pzas";
		}

		public function get numPiezasString():String
		{
			return _numPiezasString;
		}

		public function set numPiezasString(value:String):void
		{
			_numPiezasString = value;
		}

		public function get importeDlls():Number
		{
			return _importeDlls;
		}

		public function set importeDlls(value:Number):void
		{
			_importeDlls = value;
			_importeDllsString = "$"+UtilsFormatosNumericos.precisionADosDecimales(value) + " USD";
		}

		public function get importeDllsString():String
		{
			return _importeDllsString;
		}

		public function set importeDllsString(value:String):void
		{
			_importeDllsString = value;
		}

		public function get fechaET():Date
		{
			return _fechaET;
		}

		public function set fechaET(value:Date):void
		{
			_fechaET = value;
		}

		public function get fechaETString():String
		{
			return _fechaETString;
		}

		public function set fechaETString(value:String):void
		{
			_fechaETString = value;
		}

		public function get nombreProducto():String
		{
			return _nombreProducto;
		}

		public function set nombreProducto(value:String):void
		{
			_nombreProducto = value;
		}

		public function get precioU():Number
		{
			return _precioU;
		}

		public function set precioU(value:Number):void
		{
			_precioU = value;
			_precioUString = "PU $" + UtilsFormatosNumericos.precisionADosDecimales(value) + " USD";
		}

		public function get precioUString():String
		{
			return _precioUString;
		}

		public function set precioUString(value:String):void
		{
			_precioUString = value;
		}

		public function get origen():String
		{
			return _origen;
		}

		public function set origen(value:String):void
		{
			_origen = value;
		}

		public function get tipoPermiso():String
		{
			return _tipoPermiso;
		}

		public function set tipoPermiso(value:String):void
		{
			_tipoPermiso = value;
		}

		public function get tipoProducto():String
		{
			return _tipoProducto;
		}

		public function set tipoProducto(value:String):void
		{
			_tipoProducto = value;
		}

		public function get subtipoProducto():String
		{
			return _subtipoProducto;
		}

		public function set subtipoProducto(value:String):void
		{
			if(value == null)
				_subtipoProducto = "ND";
			else
				_subtipoProducto = value;
		}

		public function get clasificacionProducto():String
		{
			return _clasificacionProducto;
		}

		public function set clasificacionProducto(value:String):void
		{
			if(value == "--NINGUNO--" || value == null || StringUtil.trim(value).length == 0)
				_clasificacionProducto = " ";
			else
				_clasificacionProducto = value;
		}

		public function get estadoFisico():String
		{
			return _estadoFisico;
		}

		public function set estadoFisico(value:String):void
		{
			_estadoFisico = value;
		}

		public function get isUltimo():Boolean
		{
			return _isUltimo;
		}

		public function set isUltimo(value:Boolean):void
		{
			_isUltimo = value;
		}

		public function get totProductos():int
		{
			return _totProductos;
		}

		public function set totProductos(value:int):void
		{
			_totProductos = value;
			if(value ==1 )
				_totProductosString = value + " Producto";
			else
				_totProductosString = value + " Productos";
		}

		public function get totProductosString():String
		{
			return _totProductosString;
		}

		public function set totProductosString(value:String):void
		{
			_totProductosString = value;
		}

		public function get totImporteDlls():Number
		{
			return _totImporteDlls;
		}

		public function set totImporteDlls(value:Number):void
		{
			_totImporteDlls = value;
			_totImporteDllsString = "$" + UtilsFormatosNumericos.precisionADosDecimales(value) + " USD";
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
			if(value == 1)
				_totPiezasString = value + " Pieza";
			else
				_totPiezasString = value + " Piezas";
		}

		public function get totPiezasString():String
		{
			return _totPiezasString;
		}

		public function set totPiezasString(value:String):void
		{
			_totPiezasString = value;
		}

		public function get idSolicitud():String
		{
			return _idSolicitud;
		}

		public function set idSolicitud(value:String):void
		{
			_idSolicitud = value;
		}

		public function get folioSolicitud():String
		{
			return _folioSolicitud;
		}

		public function set folioSolicitud(value:String):void
		{
			_folioSolicitud = value;
		}

		public function get fechaEL():Date
		{
			return _fechaEL;
		}

		public function set fechaEL(value:Date):void
		{
			_fechaEL = value;
		}

		public function get fechaELString():String
		{
			return _fechaELString;
		}

		public function set fechaELString(value:String):void
		{
			_fechaELString = value;
		}

		public function get etiqueta():String
		{
			return _etiqueta;
		}

		public function set etiqueta(value:String):void
		{
			_etiqueta = value;
		}

		public function get isConEnfoque():Boolean
		{
			return _isConEnfoque;
		}

		public function set isConEnfoque(value:Boolean):void
		{
			_isConEnfoque = value;
		}

		public function get isIniEnfoque():Boolean
		{
			return _isIniEnfoque;
		}

		public function set isIniEnfoque(value:Boolean):void
		{
			_isIniEnfoque = value;
		}

		public function get isFinEnfoque():Boolean
		{
			return _isFinEnfoque;
		}

		public function set isFinEnfoque(value:Boolean):void
		{
			_isFinEnfoque = value;
		}

		public function get estadoPermiso():String
		{
			return _estadoPermiso;
		}

		public function set estadoPermiso(value:String):void
		{
			_estadoPermiso = value;
		}

		public function get fechaInicio():Date
		{
			return _fechaInicio;
		}

		public function set fechaInicio(value:Date):void
		{
			_fechaInicio = value;
		}

		public function get fechaInicioString():String
		{
			return _fechaInicioString;
		}

		public function set fechaInicioString(value:String):void
		{
			_fechaInicioString = value;
		}


	}
}