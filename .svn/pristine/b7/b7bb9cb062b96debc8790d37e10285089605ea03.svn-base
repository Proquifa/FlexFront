package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes
{
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.compras.proveedores.EventoTabProveedores;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.proveedor.ResumenProveedor")]
	[Bindable]
	public class ResumenProveedor
	{
		
		///  =================================   SERVICIO   ================================= //
		
		private var  _nombreProveedor:String;
		private var  _tipoProveedor:String;
		private var  _comprador:String;
		private var  _pagador:String;
		private var  _eventoTablero:EventoTabProveedores;
		
		//  VALORES MONTOS
		private var  _totalCompra:Number;
		private var  _objetivoDeseado:Number;
		private var  _objetivoMontoDeseado:Number;
		private var  _objetivoFundamental:Number;
		private var  _objetivoMontoFundamental:Number;
		private var  _montoCompraAnterior:Number;
		private var  _distribucionProveedor:Number; 
		private var  _distribucionProveedorAnterior:Number; 
		private var  _totalProveedores:int; 
		private var  _sql:Query;
	
		
		
		///  =================================   VISTA   ================================= //
		
		private var  _numFila:Number;
		private var  _posicion:String;
		private var  _estrategicos:Array;
		private var  _normales:Array;
		
		//  VALORES DE FOOTERS "TOTALES"
		private var  _footer_totalCompra:Number;
		private var  _footer_objetivoDeseado:Number;
		private var  _footer_objetivoMontoDeseado:Number;
		private var  _footer_objetivoFundamental:Number;
		private var  _footer_objetivoMontoFundamental:Number;
		private var  _footer_montoCompraAnterior:Number;
		private var  _footer_distribucionProveedor:Number; 
		private var  _footer_totalProveedores:int; 
	
		//  VALORES DE FOOTERS "TOTALES"
		private var  _footer_totalCompraString:String;
		private var  _footer_objetivoDeseadoString:String;
		private var  _footer_objetivoMontoDeseadoString:String;
		private var  _footer_objetivoFundamentalString:String;
		private var  _footer_objetivoMontoFundamentalString:String;
		private var  _footer_montoCompraAnteriorString:String;
		private var  _footer_distribucionProveedorString:String; 
		private var  _footer_totalProveedoresString:String; 

		
		//  VALORES  "STRING DE MONTOS"
		private var  _totalCompraString:String;
		private var  _objetivoDeseadoString:String;
		private var  _objetivoMontoDeseadoString:String;
		private var  _objetivoFundamentalString:String;
		private var  _objetivoMontoFundamentalString:String;
		private var  _montoCompraAnteriorString:String;
		private var  _distribucionProveedorString:String; 
		private var  _distribucionProveedorAnteriorString:String;
		private var  _totalProveedoresString:String; 
		
		
		
		
		public function ResumenProveedor()
		{
			_nombreProveedor = "";
			_tipoProveedor = "";
			_comprador = "";
			_pagador = "";
			_posicion = "";
			
			_numFila = 0;
			_totalCompra = 0;
			_objetivoDeseado = 0;
			_objetivoFundamental = 0;
			_objetivoMontoDeseado = 0;
			_objetivoMontoFundamental = 0;
			_montoCompraAnterior = 0;
			_distribucionProveedor = 0;
			_distribucionProveedorAnterior = 0;
			_totalProveedores = 0;
			
			_footer_totalCompra = 0;
			_footer_objetivoDeseado = 0;
			_footer_objetivoMontoDeseado = 0;
			_footer_objetivoFundamental = 0;
			_footer_objetivoMontoFundamental = 0;
			_footer_montoCompraAnterior = 0;
			_footer_distribucionProveedor = 0;
			_footer_totalProveedores = 0;
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

		public function get comprador():String
		{
			return _comprador;
		}

		public function set comprador(value:String):void
		{
			_comprador = value;
		}
		
		public function get totalCompra():Number
		{
			return _totalCompra;
		}

		public function set totalCompra(value:Number):void
		{
			_totalCompra = value;
			_totalCompraString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_totalCompra);
		}

		public function get objetivoDeseado():Number
		{
			return _objetivoDeseado;
		}

		public function set objetivoDeseado(value:Number):void
		{
			_objetivoDeseado = value;
			_objetivoDeseadoString = UtilsFormatosNumericos.truncarDecimalesCeil(value, 2 ) + " %";
		}

		public function get objetivoMontoDeseado():Number
		{
			return _objetivoMontoDeseado;
		}

		public function set objetivoMontoDeseado(value:Number):void
		{
			_objetivoMontoDeseado = value;
			_objetivoMontoDeseadoString =  "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_objetivoMontoDeseado);
		}

		public function get objetivoFundamental():Number
		{
			return _objetivoFundamental;
		}

		public function set objetivoFundamental(value:Number):void
		{
			_objetivoFundamental = value;
			_objetivoFundamentalString = UtilsFormatosNumericos.truncarDecimalesCeil(value, 2 ) + " %";
		} 

		public function get objetivoMontoFundamental():Number
		{
			return _objetivoMontoFundamental;
		}

		public function set objetivoMontoFundamental(value:Number):void
		{
			_objetivoMontoFundamental = value;
			_objetivoMontoFundamentalString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_objetivoMontoFundamental); 
				
		}

		public function get montoCompraAnterior():Number
		{
			return _montoCompraAnterior;
		}

		public function set montoCompraAnterior(value:Number):void
		{
			_montoCompraAnterior = value;
			_montoCompraAnteriorString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_montoCompraAnterior);
		}
		
		public function get distribucionProveedor():Number
		{
			return _distribucionProveedor;
		}
		
		public function set distribucionProveedor(value:Number):void
		{
			_distribucionProveedor = value;
			_distribucionProveedorString = UtilsFormatosNumericos.truncarDecimalesCeil(value, 2 ) + " %";
		}
		
		public function get pagador():String
		{
			return _pagador;
		}

		public function set pagador(value:String):void
		{
			_pagador = value;
		}

		public function get posicion():String
		{
			return _posicion;
		}

		public function set posicion(value:String):void
		{
			_posicion = value;
		}

		public function get numFila():Number
		{
			return _numFila;
		}

		public function set numFila(value:Number):void
		{
			_numFila = value;
		}

		public function get distribucionProveedorString():String
		{
			return _distribucionProveedorString;
		}

		public function set distribucionProveedorString(value:String):void
		{
			_distribucionProveedorString = value;
		}

		public function get objetivoDeseadoString():String
		{
			return _objetivoDeseadoString;
		}

		public function set objetivoDeseadoString(value:String):void
		{
			_objetivoDeseadoString = value;
		}

		public function get objetivoMontoDeseadoString():String
		{
			return _objetivoMontoDeseadoString;
		}

		public function set objetivoMontoDeseadoString(value:String):void
		{
			_objetivoMontoDeseadoString = value;
		}

		public function get objetivoFundamentalString():String
		{
			return _objetivoFundamentalString;
		}

		public function set objetivoFundamentalString(value:String):void
		{
			_objetivoFundamentalString = value;
		}

		public function get objetivoMontoFundamentalString():String
		{
			return _objetivoMontoFundamentalString;
		}

		public function set objetivoMontoFundamentalString(value:String):void
		{
			_objetivoMontoFundamentalString = value;
		}

		public function get montoCompraAnteriorString():String
		{
			return _montoCompraAnteriorString;
		}

		public function set montoCompraAnteriorString(value:String):void
		{
			_montoCompraAnteriorString = value;
		}

		public function get footer_totalCompra():Number
		{
			return _footer_totalCompra;
		}

		public function set footer_totalCompra(value:Number):void
		{
			_footer_totalCompra = value;
			_footer_totalCompraString =  "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_footer_totalCompra);
		}

		public function get footer_objetivoDeseado():Number
		{
			return _footer_objetivoDeseado;
		}

		public function set footer_objetivoDeseado(value:Number):void
		{
			_footer_objetivoDeseado = value;
			_footer_objetivoDeseadoString = UtilsFormatosNumericos.truncarDecimalesCeil(value, 2 ) + " %";
		}

		public function get footer_objetivoMontoDeseado():Number
		{
			return _footer_objetivoMontoDeseado;
		}

		public function set footer_objetivoMontoDeseado(value:Number):void
		{
			_footer_objetivoMontoDeseado = value;
			_footer_objetivoMontoDeseadoString =  "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_footer_objetivoMontoDeseado);
		}

		public function get footer_objetivoFundamental():Number
		{
			return _footer_objetivoFundamental;
		}

		public function set footer_objetivoFundamental(value:Number):void
		{
			_footer_objetivoFundamental = value;
			_footer_objetivoFundamentalString =  UtilsFormatosNumericos.truncarDecimalesCeil(value, 2 ) + " %";
		}

		public function get footer_objetivoMontoFundamental():Number
		{
			return _footer_objetivoMontoFundamental;
		}

		public function set footer_objetivoMontoFundamental(value:Number):void
		{
			_footer_objetivoMontoFundamental = value;
			_footer_objetivoMontoFundamentalString =  "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_footer_objetivoMontoFundamental);
		}

		public function get footer_montoCompraAnterior():Number
		{
			return _footer_montoCompraAnterior;
		}

		public function set footer_montoCompraAnterior(value:Number):void
		{
			_footer_montoCompraAnterior = value;
			_footer_montoCompraAnteriorString =  "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_footer_montoCompraAnterior);
		}

		public function get footer_distribucionProveedor():Number
		{
			return _footer_distribucionProveedor;
		}

		public function set footer_distribucionProveedor(value:Number):void
		{
			_footer_distribucionProveedor = value;
			_footer_distribucionProveedorString =  UtilsFormatosNumericos.truncarDecimalesCeil(value, 2 ) + " %";
		}

		public function get eventoTablero():EventoTabProveedores
		{
			return _eventoTablero;
		}

		public function set eventoTablero(value:EventoTabProveedores):void
		{
			_eventoTablero = value;
		}

		public function get totalCompraString():String
		{
			return _totalCompraString;
		}

		public function set totalCompraString(value:String):void
		{
			_totalCompraString = value;
		}

		public function get footer_totalCompraString():String
		{
			return _footer_totalCompraString;
		}

		public function set footer_totalCompraString(value:String):void
		{
			_footer_totalCompraString = value;
		}

		public function get footer_objetivoDeseadoString():String
		{
			return _footer_objetivoDeseadoString;
		}

		public function set footer_objetivoDeseadoString(value:String):void
		{
			_footer_objetivoDeseadoString = value;
		}

		public function get footer_objetivoMontoDeseadoString():String
		{
			return _footer_objetivoMontoDeseadoString;
		}

		public function set footer_objetivoMontoDeseadoString(value:String):void
		{
			_footer_objetivoMontoDeseadoString = value;
		}

		public function get footer_objetivoFundamentalString():String
		{
			return _footer_objetivoFundamentalString;
		}

		public function set footer_objetivoFundamentalString(value:String):void
		{
			_footer_objetivoFundamentalString = value;
		}

		public function get footer_objetivoMontoFundamentalString():String
		{
			return _footer_objetivoMontoFundamentalString;
		}

		public function set footer_objetivoMontoFundamentalString(value:String):void
		{
			_footer_objetivoMontoFundamentalString = value;
		}

		public function get footer_montoCompraAnteriorString():String
		{
			return _footer_montoCompraAnteriorString;
		}

		public function set footer_montoCompraAnteriorString(value:String):void
		{
			_footer_montoCompraAnteriorString = value;
		}

		public function get footer_distribucionProveedorString():String
		{
			return _footer_distribucionProveedorString;
		}

		public function set footer_distribucionProveedorString(value:String):void
		{
			_footer_distribucionProveedorString = value;
		}

		public function get sql():Query
		{
			return _sql;
		}

		public function set sql(value:Query):void
		{
			_sql = value;
		}

		public function get distribucionProveedorAnterior():Number
		{
			return _distribucionProveedorAnterior;
		}

		public function set distribucionProveedorAnterior(value:Number):void
		{
			_distribucionProveedorAnterior = value;
			_distribucionProveedorAnteriorString = UtilsFormatosNumericos.truncarDecimalesCeil(value, 2 ) + " %";
		}

		public function get distribucionProveedorAnteriorString():String
		{
			return _distribucionProveedorAnteriorString;
		}

		public function set distribucionProveedorAnteriorString(value:String):void
		{
			_distribucionProveedorAnteriorString = value;
		}

		public function get estrategicos():Array
		{
			return _estrategicos;
		}

		public function set estrategicos(value:Array):void
		{
			_estrategicos = value;
		}

		public function get normales():Array
		{
			return _normales;
		}

		public function set normales(value:Array):void
		{
			_normales = value;
		}

		public function get totalProveedores():Number
		{
			return _totalProveedores;
		}

		public function set totalProveedores(value:Number):void
		{
			_totalProveedores = value;
			var texto:String = _totalProveedores == 1 ? " proveedor": " proveedores";
			_totalProveedoresString =  _totalProveedores.toString()+texto;
		}

		public function get totalProveedoresString():String
		{
			return _totalProveedoresString;
		}

		public function set totalProveedoresString(value:String):void
		{
			_totalProveedoresString = value;
		}

		public function get footer_totalProveedores():int
		{
			return _footer_totalProveedores;
		}

		public function set footer_totalProveedores(value:int):void
		{
			_footer_totalProveedores = value;
			var textoFin:String = _footer_totalProveedores == 1 ? " proveedor": " proveedores";
			_footer_totalProveedoresString =  _footer_totalProveedores.toString() + textoFin;
		}

		public function get footer_totalProveedoresString():String
		{
			return _footer_totalProveedoresString;
		}

		public function set footer_totalProveedoresString(value:String):void
		{
			_footer_totalProveedoresString = value;
		}


	}
}