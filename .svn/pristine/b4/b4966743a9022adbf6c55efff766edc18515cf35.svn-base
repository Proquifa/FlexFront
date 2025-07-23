package mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.reportes.seguimientos
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.reportes.seguimientos.PartidaCotizacionEnSeguimiento")]
	public class PartidaCotizacionEnSeguimiento
	{
		public function PartidaCotizacionEnSeguimiento()
		{
			this.ultimo = "";
			this.historial = new ArrayCollection();
			this.fechaSiguienteString = "Pendiente";
		}
		
		private var _numFila:int;
		private var _cantidad:Number;
		private var _concepto:String;
		private var _estado:String;
		private var _folioCotizacion:String;
		private var _historial:ArrayCollection;
		private var _idPCotiza:int;
		private var _monto:Number;
		private var _montoString:String;
		private var _partida:Number;
		private var _precio:Number;
		private var _marca:String;
		private var _fechaSiguiente:Date;
		private var _fechaSiguienteString:String;
		private var _monedaCotiza:String;
		private var _tipo:String;
		private var _control:String;
		private var _situacion:String;
		//////////////////////////////////////////////////////
		private var _ultimo:String;
		private var _enfocado:Boolean = false;
		private var _precioString:String;
		private var _ultimoEnEnfoque:Boolean;
		
		public function get ultimoEnEnfoque():Boolean
		{
			return _ultimoEnEnfoque;
		}
		
		public function set ultimoEnEnfoque(value:Boolean):void
		{
			_ultimoEnEnfoque = value;
		}
		
		public function get situacion():String
		{
			return _situacion;
		}
		
		public function set situacion(value:String):void
		{
			_situacion = value;
		}
		
		public function get marca():String
		{
			return _marca;
		}
		
		public function set marca(value:String):void
		{
			_marca = value;
		}
		
		public function get control():String
		{
			return _control;
		}
		
		public function set control(value:String):void
		{
			_control = value;
		}
		
		public function get tipo():String
		{
			return _tipo;
		}
		
		public function set tipo(value:String):void
		{
			_tipo = value;
		}
		
		public function get precioString():String
		{
			_precioString = '$ '+UtilsFormatosNumericos.precisionADosDecimalesConComas( precio );
			return _precioString;
		}
		
		public function set precioString(value:String):void
		{
			_precioString = value;
		}
		
		public function get enfocado():Boolean
		{
			return _enfocado;
		}
		
		public function set enfocado(value:Boolean):void
		{
			_enfocado = value;
		}
		
		public function get montoString():String
		{
			_montoString = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas( monto );
			return _montoString;
		}
		
		public function set montoString(value:String):void
		{
			_montoString = value;
		}
		
		public function get monedaCotiza():String
		{
			return _monedaCotiza;
		}
		
		public function set monedaCotiza(value:String):void
		{
			_monedaCotiza = value;
		}
		
		public function get fechaSiguienteString():String
		{
			return _fechaSiguienteString;
		}
		
		public function set fechaSiguienteString(value:String):void
		{
			_fechaSiguienteString = value;
		}
		
		public function get fechaSiguiente():Date
		{
			return _fechaSiguiente;
		}
		
		public function set fechaSiguiente(value:Date):void
		{
			_fechaSiguiente = value;
			//trace("entro");
			if(value != null){
				this.fechaSiguienteString = UtilsFecha.formatoFechaDiaMesAnioConGuion(value);
			}
			else{
				this.fechaSiguienteString = "Pendiente";
			}
		}
		
		public function get ultimo():String
		{
			return _ultimo;
		}
		
		public function set ultimo(value:String):void
		{
			_ultimo = value;
		}
		
		public function get numFila():int
		{
			return _numFila;
		}
		
		public function set numFila(value:int):void
		{
			_numFila = value;
		}
		
		public function get precio():Number
		{
			return _precio;
		}
		
		public function set precio(value:Number):void
		{
			_precio = value;
		}
		
		public function get partida():Number
		{
			return _partida;
		}
		
		public function set partida(value:Number):void
		{
			_partida = value;
		}
		
		public function get monto():Number
		{
			return _monto;
		}
		
		public function set monto(value:Number):void
		{
			_monto = value;
		}
		
		public function get idPCotiza():int
		{
			return _idPCotiza;
		}
		
		public function set idPCotiza(value:int):void
		{
			_idPCotiza = value;
		}
		
		public function get historial():ArrayCollection
		{                    
			return _historial;
		}
		
		public function set historial(value:ArrayCollection):void
		{
			_historial = value;
			if(value!= null){
				if(value.length > 0){
					for(var m:int = 0; m<this.historial.length;m++){
						historial[m].numFila = this.historial.length - m;
					}
				}
			}
			else{
				_historial = new ArrayCollection();
			}
		}
		
		public function get folioCotizacion():String
		{
			return _folioCotizacion;
		}
		
		public function set folioCotizacion(value:String):void
		{
			_folioCotizacion = value;
		}
		
		public function get estado():String
		{
			return _estado;
		}
		
		public function set estado(value:String):void
		{
			_estado = value;
		}
		
		public function get concepto():String
		{
			return _concepto;
		}
		
		public function set concepto(value:String):void
		{
			_concepto = value;
		}
		
		public function get cantidad():Number
		{
			return _cantidad;
		}
		
		public function set cantidad(value:Number):void
		{
			_cantidad = value;
		}
		
	}
}