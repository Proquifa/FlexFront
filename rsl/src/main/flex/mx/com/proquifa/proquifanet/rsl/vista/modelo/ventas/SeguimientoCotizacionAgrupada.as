package mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	import mx.utils.ObjectUtil;
	
	[Bindable]
	public class SeguimientoCotizacionAgrupada
	{
		
		
		private var _numFila:int;
		private var _cotizaciones:ArrayCollection = new ArrayCollection();
		private var _nombreCliente:String;
		private var _totalCotizaciones:int;
		private var _totalPartidas:int;
		private var _fechaSiguienteContacto:Date;
		private var _ultimo:String;
		private var _piezas:int;
		private var _monto:Number;
		private var _montoString:String;
		private var _nombreVendedor:String;
		private var _nombreESAC:String;
		private var _numClientes:int;
		private var _estatusMasCritico:String;
		
		private var _monedaCotizacionPartida:String;
		
		public function SeguimientoCotizacionAgrupada()
		{
			ultimo = "";
			//trace("declara objeto");
			_nombreVendedor = "Sin Asignar";
			_nombreESAC = "Sin Asignar";
			_monto = 0;
		}
		
		public function get monedaCotizacionPartida():String
		{
			return _monedaCotizacionPartida;
		}

		public function set monedaCotizacionPartida(value:String):void
		{
			_monedaCotizacionPartida = value;
		}

		public function get estatusMasCritico():String
		{
			return _estatusMasCritico;
		}

		public function set estatusMasCritico(value:String):void
		{
			_estatusMasCritico = value;
		}

		public function get nombreESAC():String
		{
			return _nombreESAC;
		}
		
		public function set nombreESAC(value:String):void
		{
			if(value != null && value != ""){
				_nombreESAC = value;
			}
			else{
				_nombreESAC = "";
			}
		}
		
		public function get numClientes():int
		{
			return _numClientes;
		}
		
		public function set numClientes(value:int):void
		{
			_numClientes = value;
		}
		
		public function get totalPartidas():int
		{
			return _totalPartidas;
		}
		
		public function set totalPartidas(value:int):void
		{
			_totalPartidas = value;
		}
		
		public function get nombreVendedor():String
		{
			return _nombreVendedor;
		}
		
		public function set nombreVendedor(value:String):void
		{
			if(value != null){
				_nombreVendedor = value;
			}
			else{
				if(_nombreVendedor == "") _nombreVendedor = "Sin Asignar";
			}
			
		}
		public function get montoString():String
		{
			_montoString = '$ '+UtilsFormatosNumericos.precisionADosDecimalesConComas( monto );
			return _montoString;
		}
		
		public function set montoString(value:String):void
		{
			_montoString = value;
		}
		
		public function get monto():Number
		{
			return _monto;
		}
		
		public function set monto(value:Number):void
		{
			_monto = value;
		}
		
		public function get piezas():int
		{
			return _piezas;
		}
		
		public function set piezas(value:int):void
		{
			_piezas = value;
		}
		
		public function get ultimo():String
		{
			return _ultimo;
		}
		
		public function set ultimo(value:String):void
		{ 
			_ultimo = value;
		}
		
		public function get fechaSiguienteContacto():Date
		{
			return _fechaSiguienteContacto;
		}
		
		public function set fechaSiguienteContacto(value:Date):void
		{
			_fechaSiguienteContacto = value;
		}
		
		public function get totalCotizaciones():int
		{
			return _totalCotizaciones;
		}
		
		public function set totalCotizaciones(value:int):void
		{
			_totalCotizaciones = value;
		}
		
		public function get nombreCliente():String
		{
			return _nombreCliente;
		}
		
		public function set nombreCliente(value:String):void
		{
			if(value != null){
				_nombreCliente = value;
			}
			else{
				_nombreCliente = "";
			}
		}
		
		public function get cotizaciones():ArrayCollection
		{
			return _cotizaciones;
		}
		
		public function set cotizaciones(value:ArrayCollection):void
		{
			_cotizaciones = value;
			this.piezas = 0;
			this.monto = 0;
			this.totalPartidas = 0;
			this.numClientes = 0;
			if(value.length > 0){
				this.nombreCliente = value[0].nombreCliente;
				//trace("valor v: " + value[0].nombreVendedor);
				this.nombreVendedor = value[0].nombreEV;
				this.nombreESAC = value[0].nombreVendedor;
				this.totalCotizaciones = value.length;
				var p:int = 0;
				var q:Number = 0;
				for(var m:int = 0; m<value.length;m++){
					this._totalPartidas = this._totalPartidas +  value[m].partidas;
					p = p + value[m].piezas;
					q = q + value[m].montoCotizacion;
				}
				var temp:ArrayCollection = ObjectUtil.copy(value) as ArrayCollection;
				while(temp.length > 0 ){
					this._numClientes = this._numClientes +1;
					var t:int = 0;
					for(t=1; t<temp.length; t++){
						if(temp[t].nombreCliente == temp[0].nombreCliente){
							temp.removeItemAt(t);
							t = t -1;
						}
					}
					temp.removeItemAt(0);
				}
				
				this.piezas = p;
				this.monto = q;
			}
			
		}
		
		public function get numFila():int
		{
			return _numFila;
		}
		
		public function set numFila(value:int):void
		{
			_numFila = value;
		}
		
	}
}