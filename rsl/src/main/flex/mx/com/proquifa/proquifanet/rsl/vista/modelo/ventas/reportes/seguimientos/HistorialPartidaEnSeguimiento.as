package mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.reportes.seguimientos
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;

	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.reportes.seguimientos.HistorialPartidaEnSeguimiento")]
	public class HistorialPartidaEnSeguimiento
	{
		
		private var _fr:Date;
		private var _vendedor:String;
		private var _comentarios:String;
		private var _estadoFinal:String;
		private var _contacto:String;
		private var _estado:String;
		private var _fer:Date;
		private var _fua:Date;
		private var _canceladaDesde:String;
		private var _razonesESAC:String;
		private var _razonesMonitor:String;
		private var _aceptado:Boolean;
		private var _fechaFinDC:Date;
		private var _numFila:int;
		private var _cotizacionDestino:String;
		private var _ferString:String;
		private var _frString:String;
		private var _ultimo:String;
		///			RENDERERS
		private var _situacion:String;
		
		public function HistorialPartidaEnSeguimiento()
		{
			this.frString = "Pendiente";
			this.ultimo = "";
		}

		public function get situacion():String
		{
			return _situacion;
		}

		public function set situacion(value:String):void
		{
			_situacion = value;
		}

		public function get ultimo():String
		{
			return _ultimo;
		}

		public function set ultimo(value:String):void
		{
			_ultimo = value;
		}

		public function get frString():String
		{
			return _frString;
		}

		public function set frString(value:String):void
		{
			_frString = value;
		}

		public function get ferString():String
		{
			return _ferString;
		}

		public function set ferString(value:String):void
		{
			_ferString = value;
		}

		public function get fechaFinDC():Date
		{
			return _fechaFinDC;
		}

		public function set fechaFinDC(value:Date):void
		{
			_fechaFinDC = value;
		}

		public function get aceptado():Boolean
		{
			return _aceptado;
		}

		public function set aceptado(value:Boolean):void
		{
			_aceptado = value;
		}

		public function get razonesMonitor():String
		{
			return _razonesMonitor;
		}

		public function set razonesMonitor(value:String):void
		{
			_razonesMonitor = value;
		}

		public function get razonesESAC():String
		{
			return _razonesESAC;
		}

		public function set razonesESAC(value:String):void
		{
			_razonesESAC = value;
		}

		public function get canceladaDesde():String
		{
			return _canceladaDesde;
		}

		public function set canceladaDesde(value:String):void
		{
			_canceladaDesde = value;
		}

		public function get fua():Date
		{
			return _fua;
		}

		public function set fua(value:Date):void
		{
			_fua = value;
		}

		public function get fer():Date
		{
			return _fer;
		}

		public function set fer(value:Date):void
		{
			_fer = value;
			if(value != null){
				this.ferString = UtilsFecha.formatoFechaDiaMesAnioConGuion(value);
			}
			else{
				this.ferString = "Pendiente";
			}
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get contacto():String
		{
			return _contacto;
		}

		public function set contacto(value:String):void
		{
			_contacto = value;
		}

		public function get estadoFinal():String
		{
			return _estadoFinal;
		}

		public function set estadoFinal(value:String):void
		{
			if(value == null || value == ""){
				_estadoFinal = "Pendiente";	
			}
			else{
				_estadoFinal = value;
			}
		}

		public function get comentarios():String
		{
			return _comentarios;
		}

		public function set comentarios(value:String):void
		{
			_comentarios = value;
		}

		public function get vendedor():String
		{
			return _vendedor;
		}

		public function set vendedor(value:String):void
		{
			_vendedor = value;
		}

		public function get fr():Date
		{
			return _fr;
		}

		public function set fr(value:Date):void
		{
			_fr = value;
			if(value != null){
				this.frString = UtilsFecha.formatoFechaDiaMesAnioConGuion(value);
			}
			else{
				this.frString = "Pendiente";
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

		public function get cotizacionDestino():String
		{
			return _cotizacionDestino;
		}

		public function set cotizacionDestino(value:String):void
		{
			_cotizacionDestino = value;
		}


	}
}