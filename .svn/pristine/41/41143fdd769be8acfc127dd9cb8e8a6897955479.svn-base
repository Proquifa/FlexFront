package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.ventas.reporteConfirmacion
{
	[Bindable]
	public class ConfirmacionDeDatosCotizaXCliente
	{
		private var _numFila:int;
		private var _numFilaString:String;
		private var _numPiezas:int;
		private var _numPiezasString:String;
		private var _importeDlls:Number;
		private var _importeDllsString:String;
		private var _folioCotizacion:String;
		private var _folioCotizacionString:String;
		private var _isUltimo:Boolean;
		private var _fechaInvestigacionString:String;
		private var _fechaRegistroString:String;
		private var _totImporteDlls:Number;
		private var _totImporteDllsString:String;
		private var _totPiezas:int;
		private var _totPiezasString:String;
		private var _totCotizaciones:int;
		private var _totCotizacionesString:String;
		
		public function ConfirmacionDeDatosCotizaXCliente()
		{
			_isUltimo = false;
			_totPiezasString = "0 Piezas";
			_totImporteDllsString = "$0 USD";
			_totCotizacionesString = "0 Cotizaciones";
		}
		public function get numFila():int
		{
			return _numFila;
		}
		
		public function set numFila(value:int):void
		{
			_numFila = value;
			_numFilaString = '#'+value;
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
		
		public function get importeDlls():Number
		{
			return _importeDlls;
		}
		
		public function set importeDlls(value:Number):void
		{
			_importeDlls = value;
			_importeDllsString = '$'+value+' USD';
		}
		
		public function get importeDllsString():String
		{
			return _importeDllsString;
		}
		
		public function set importeDllsString(value:String):void
		{
			_importeDllsString = value;
		}
		
		
		public function get folioCotizacion():String
		{
			return _folioCotizacion;
		}
		
		public function set folioCotizacion(value:String):void
		{
			_folioCotizacion = value;
			_folioCotizacionString = "C-"+value;
		}
		
		public function get isUltimo():Boolean
		{
			return _isUltimo;
		}
		
		public function set isUltimo(value:Boolean):void
		{
			_isUltimo = value;
		}
		
		public function get totImporteDlls():Number
		{
			return _totImporteDlls;
		}
		
		public function set totImporteDlls(value:Number):void
		{
			_totImporteDlls = value;
			_totImporteDllsString = '$' +value+ ' USD';
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
		
		public function get folioCotizacionString():String
		{
			return _folioCotizacionString;
		}
		
		public function set folioCotizacionString(value:String):void
		{
			_folioCotizacionString = value;
		}
		
		public function get totCotizaciones():int
		{
			return _totCotizaciones;
		}
		
		public function set totCotizaciones(value:int):void
		{
			_totCotizaciones = value;
			if(value==1){
				_totCotizacionesString = value + ' Cotización';
			}else{
				_totCotizacionesString = value + ' Cotizaciones';
			}
		}
		
		public function get totCotizacionesString():String
		{
			return _totCotizacionesString;
		}
		
		public function set totCotizacionesString(value:String):void
		{
			_totCotizacionesString = value;
		}
		
		public function get fechaInvestigacionString():String
		{
			return _fechaInvestigacionString;
		}
		
		public function set fechaInvestigacionString(value:String):void
		{
			_fechaInvestigacionString = value;
		}

		public function get fechaRegistroString():String
		{
			return _fechaRegistroString;
		}

		public function set fechaRegistroString(value:String):void
		{
			_fechaRegistroString = value;
		}


	}
}