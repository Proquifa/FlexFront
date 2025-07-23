package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.compras.reporteDePermisos
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[Bindable]
	public class ReporteDePermisosItemTiposDeSolicitud
	{
		private var _numFila:int;
		private var _numFilaString:String;
		private var _numProductos:int;
		private var _numProductosString:String;
		private var _importeDlls:Number;
		private var _importeDllsString:String;
		private var _fechaET:Date;
		private var _fechaETString:String;
		private var _tipoSolicitud:String;
		private var _proveedor:String;
		private var _etiqueta:String;
		//Para Items Tipo: En Autorización
		private var _folioLote:String;
		private var _fechaEL:Date;
		private var _fechaELString:String;
		//Para Items Tipo: Por Someter
		private var _fechaInicio:Date;
		private var _fechaInicioString:String;
		
		//Para filtros Vista
		private var _tipoSolicitudFiltro:String;
		
		//Para el Ultimo Item
		private var _isUltimo:Boolean;
		private var _totTiposDeSolicitud:int;
		private var _totTiposDeSolicitudString:String;
		private var _totFolios:int;
		private var _totFoliosString:String;
		private var _totImporteDlls:Number;
		private var _totImporteDllsString:String;
		private var _totProductos:int;
		private var _totProductosString:String;
		
		public function ReporteDePermisosItemTiposDeSolicitud()
		{
			isUltimo = false;
			_totTiposDeSolicitudString = "0 Tipos permiso";
			_totImporteDllsString = "$0 USD";
			_totProductosString = "0 Productos";
			_totFoliosString = "0 Lotes";
		}
		
		public function get numFila():int
		{
			return _numFila;
		}
		
		public function set numFila(value:int):void
		{
			_numFila = value;
			numFilaString = "#"+ value;
		}
		
		public function get numFilaString():String
		{
			return _numFilaString;
		}
		
		public function set numFilaString(value:String):void
		{
			_numFilaString = value;
		}
		
		public function get numProductos():int
		{
			return _numProductos;
		}
		
		public function set numProductos(value:int):void
		{
			_numProductos = value;
			if(value == 1)
				_numProductosString = value + " Producto";
			else
				_numProductosString = value + " Productos";
		}
		
		public function get numProductosString():String
		{
			return _numProductosString;
		}
		
		public function set numProductosString(value:String):void
		{
			_numProductosString = value;
		}
		
		public function get importeDlls():Number
		{
			return _importeDlls;
		}
		
		public function set importeDlls(value:Number):void
		{
			_importeDlls = value;
			_importeDllsString = "$"+UtilsFormatosNumericos.precisionADosDecimales(value) +" USD";
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
		
		public function get tipoSolicitud():String
		{
			return _tipoSolicitud;
		}
		
		public function set tipoSolicitud(value:String):void
		{
			_tipoSolicitud = value;
		}
		
		public function get isUltimo():Boolean
		{
			return _isUltimo;
		}
		
		public function set isUltimo(value:Boolean):void
		{
			_isUltimo = value;
		}
		
		public function get totTiposDeSolicitud():int
		{
			return _totTiposDeSolicitud;
		}
		
		public function set totTiposDeSolicitud(value:int):void
		{
			_totTiposDeSolicitud = value;
			if(value == 1)
				_totTiposDeSolicitudString = value + " Tipo permiso";
			else
				_totTiposDeSolicitudString = value + " Tipos permiso";
		}
		
		public function get totTiposDeSolicitudString():String
		{
			return _totTiposDeSolicitudString;
		}
		
		public function set totTiposDeSolicitudString(value:String):void
		{
			_totTiposDeSolicitudString = value;
		}
		
		public function get totImporteDlls():Number
		{
			return _totImporteDlls;
		}
		
		public function set totImporteDlls(value:Number):void
		{
			_totImporteDlls = value;
			totImporteDllsString = "$"+UtilsFormatosNumericos.precisionADosDecimales(value) + " USD";
		}
		
		public function get totImporteDllsString():String
		{
			return _totImporteDllsString;
		}
		
		public function set totImporteDllsString(value:String):void
		{
			_totImporteDllsString = value;
		}
		
		public function get totProductos():int
		{
			return _totProductos;
		}
		
		public function set totProductos(value:int):void
		{
			_totProductos = value;
			if(value ==1)
				totProductosString = value + " Producto";
			else
				totProductosString = value + " Productos";
		}
		
		public function get totProductosString():String
		{
			return _totProductosString;
		}
		
		public function set totProductosString(value:String):void
		{
			_totProductosString = value;
		}

		public function get proveedor():String
		{
			return _proveedor;
		}

		public function set proveedor(value:String):void
		{
			_proveedor = value;
		}

		public function get tipoSolicitudFiltro():String
		{
			return _tipoSolicitudFiltro;
		}

		public function set tipoSolicitudFiltro(value:String):void
		{
			_tipoSolicitudFiltro = value;
		}

		public function get etiqueta():String
		{
			return _etiqueta;
		}

		public function set etiqueta(value:String):void
		{
			_etiqueta = value;
		}

		public function get folioLote():String
		{
			return _folioLote;
		}

		public function set folioLote(value:String):void
		{
			_folioLote = value;
		}

		public function get totFolios():int
		{
			return _totFolios;
		}

		public function set totFolios(value:int):void
		{
			_totFolios = value;
			if(value ==1)
				_totFoliosString = value + " Lote";
			else
				_totFoliosString = value + " Lotes";
		}

		public function get totFoliosString():String
		{
			return _totFoliosString;
		}

		public function set totFoliosString(value:String):void
		{
			_totFoliosString = value;
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