package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.compras.reporteDePermisos
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	
	[Bindable]
	public class ReporteDePermisosItemProveedores
	{
		private var _numFila:int;
		private var _numFilaString:String;
		private var _numTipoSoliciPermiso:int;
		private var _numTipoSoliciPermisoString:String;
		private var _numProductos:int;
		private var _numProductosString:String;
		private var _fechaET:Date;
		private var _fechaETString:String;
		private var _nombreProveedor:String;
		private var _importeDlls:Number;
		private var _importeDllsString:String;
		private var _etiqueta:String;
		private var _nombreProducto:String;
		//Para el tipo: En Autorización
		private var _fechaEL:Date;
		private var _fechaELString:String;
		//Para el tipo Por Someter
		private var _fechaInicio:Date;
		private var _fechaInicioString:String;
		
		//Para el Ultimo Item
		private var _isUltimo:Boolean;
		private var _totProveedores:int;
		private var _totProveedoresString:String;
		private var _totImporteDlls:Number;
		private var _totImporteDllsString:String;
		private var _totProductos:int;
		private var _totProductosString:String;
		private var _panelTitulo:String;
		
		
		public function ReporteDePermisosItemProveedores()
		{
			isUltimo = false;
			_totProveedoresString = "0 Proveedores";
			_totImporteDllsString = "$0 USD";
			_totProductosString = "0 Productos";
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
		
		public function get numTipoSoliciPermiso():int
		{
			return _numTipoSoliciPermiso;
		}
		
		public function set numTipoSoliciPermiso(value:int):void
		{
			_numTipoSoliciPermiso = value;
			if(value == 1){
				_numTipoSoliciPermisoString = value + " Tipo"
			}else{
				_numTipoSoliciPermisoString = value + " Tipos"
			}
		}
		
		public function get numTipoSoliciPermisoString():String
		{
			return _numTipoSoliciPermisoString;
		}
		
		public function set numTipoSoliciPermisoString(value:String):void
		{
			_numTipoSoliciPermisoString = value;
		}
		
		public function get numProductos():int
		{
			return _numProductos;
		}
		
		public function set numProductos(value:int):void
		{
			_numProductos = value;
			if(value == 1){
				_numProductosString = value + " Producto";
			}else{
				_numProductosString = value + " Productos";
			}
		}
		
		public function get numProductosString():String
		{
			return _numProductosString;
		}
		
		public function set numProductosString(value:String):void
		{
			_numProductosString = value;
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
		
		public function get nombreProveedor():String
		{
			return _nombreProveedor;
		}
		
		public function set nombreProveedor(value:String):void
		{
			_nombreProveedor = value;
		}
		
		public function get importeDlls():Number
		{
			return _importeDlls;
		}
		
		public function set importeDlls(value:Number):void
		{
			_importeDlls = value;
			_importeDllsString = "$"+UtilsFormatosNumericos.precisionADosDecimales(value)+" USD";
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
		
		public function get totProveedores():int
		{
			return _totProveedores;
		}
		
		public function set totProveedores(value:int):void
		{
			if(value == 1){
				_totProveedoresString = value + " Proveedor";
			}else{
				_totProveedoresString = value + " Proveedores";
			}
			_totProveedores = value;
		}
		
		public function get totProveedoresString():String
		{
			return _totProveedoresString;
		}
		
		public function set totProveedoresString(value:String):void
		{
			_totProveedoresString = value;
		}
		
		public function get totImporteDlls():Number
		{
			return _totImporteDlls;
		}
		
		public function set totImporteDlls(value:Number):void
		{
			_totImporteDlls = value;
			_totImporteDllsString = "$"+UtilsFormatosNumericos.precisionADosDecimales(value)+ " USD";
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
			if(value ==1){
				_totProductosString = value + " Producto"
			}else{
				_totProductosString = value + " Productos"
			}
			_totProductos = value;
		}
		
		public function get totProductosString():String
		{
			return _totProductosString;
		}
		
		public function set totProductosString(value:String):void
		{
			_totProductosString = value;
		}
		
		public function get panelTitulo():String
		{
			return _panelTitulo;
		}
		
		public function set panelTitulo(value:String):void
		{
			_panelTitulo = value;
		}

		public function get etiqueta():String
		{
			return _etiqueta;
		}

		public function set etiqueta(value:String):void
		{
			_etiqueta = value;
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

		public function get nombreProducto():String
		{
			return _nombreProducto;
		}

		public function set nombreProducto(value:String):void
		{
			_nombreProducto = value;
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