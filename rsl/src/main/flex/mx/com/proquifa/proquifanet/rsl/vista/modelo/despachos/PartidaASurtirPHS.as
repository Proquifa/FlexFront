package mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PartidaCompra;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.despachos.PartidaASurtirPHS")]
	[Bindable]
	public class PartidaASurtirPHS extends PartidaCompra
	{
		public function PartidaASurtirPHS()
		{
			super();
		}
		private var _paisCliente:String;
		private var _importePFactura:Number;
		private var _situacion:String;
		private var _documentoAsociado:ArrayCollection;
		private var _idFactura:int;
		private var _monedaFactura:String;
		private var _fechaInicioPendiente:Date;
		private var _enTiempo:String;
		/////////////////////////////variables para la tabla y graficas
		private var _FEEMasCercanaString:String;
		private var _numPartidas:int=-1;
		private var _numFacturas:int=-1;
		private var _numSituacionAPartida:int=-1;
		// ESTADO
		private var _stringET:String;
		private var _numET:int=-1;
		private var _numFT:int=-1;
		// FLETE
		private var _numFR:int=-1;
		private var _numFE:int=-1;
		private var _numFP:int=-1;
		// MANEJO
		private var _numCG:int=-1;
		private var _numRG:int=-1;
		private var _numAB:int=-1;
		private var _numNA:int=-1;
		// SITUACION
		private var _numManET:int=-1;
		private var _numManFT:int=-1;
		private var _numManUR:int=-1;
		private var _numST:int= -1;
		private var _diasDesdeFEE:int=-1;
		private var _diasDesdeFIP:int=-1;
		private var _ultimo:String="";
		//CODIGO BARRAS
		private var _barCodeLeido:Boolean=false;
		private var _folioDespachoGrid:String;
		
		public function get barCodeLeido():Boolean
		{
			return _barCodeLeido;
		}

		public function set barCodeLeido(value:Boolean):void
		{
			_barCodeLeido = value;
		}

		public function get folioDespachoGrid():String
		{
			_folioDespachoGrid = "FD-"+pedido+"-"+partidaPedido.toString();
			return _folioDespachoGrid;
		}

		public function set folioDespachoGrid(value:String):void
		{
			_folioDespachoGrid = value;
		}

		public function get diasDesdeFIP():int
		{
			var hoy:Date = new Date();
			if(fechaEstimadaEntrega != null){
				_diasDesdeFIP = UtilsFecha.regresaDiferenciaEntreFechasEnDias( fechaInicioPendiente, hoy)-1;
			}
			return _diasDesdeFIP;
		}

		public function set diasDesdeFIP(value:int):void
		{
			_diasDesdeFIP = value;
		}

		public function get ultimo():String
		{
			return _ultimo;
		}

		public function set ultimo(value:String):void
		{
			_ultimo = value;
		}

		public function get stringET():String
		{
			return _stringET;
		}

		public function set stringET(value:String):void
		{
			_stringET = value;
		}

		public function get numST():int
		{
			return _numST;
		}

		public function set numST(value:int):void
		{
			_numST = value;
		}

		public function get diasDesdeFEE():int
		{
			var hoy:Date = new Date();
			if(fechaEstimadaEntrega != null){
				_diasDesdeFEE = UtilsFecha.regresaDiferenciaEntreFechasEnDias( fechaEstimadaEntrega, hoy)-1;
			}
			return _diasDesdeFEE;
		}

		public function set diasDesdeFEE(value:int):void
		{
			_diasDesdeFEE = value;
		}

		public function get numFacturas():int
		{
			return _numFacturas;
		}

		public function set numFacturas(value:int):void
		{
			_numFacturas = value;
		}

		public function get enTiempo():String
		{
			var fechaHoy:Date = new Date();
			var diferenciaDias:int=0;
			_enTiempo = "unset";
			if(fechaEstimadaEntrega != null){
				diferenciaDias = UtilsFecha.regresaDiferenciaEntreFechasEnDias( fechaEstimadaEntrega, fechaHoy )-1;
				if( diferenciaDias < -5 ){
					_enTiempo = "En tiempo";
				}
				if( diferenciaDias > -6 && diferenciaDias <= -1 ){
					_enTiempo = "Urgente";
				}
				if(diferenciaDias > -1){
					_enTiempo = "Fuera de tiempo";
				}
			}
			return _enTiempo;
		}

		public function set enTiempo(value:String):void
		{
			_enTiempo = value;
		}

		public function get numPartidas():int
		{
			return _numPartidas;
		}

		public function set numPartidas(value:int):void
		{
			_numPartidas = value;
		}

		public function get numManUR():int
		{
			return _numManUR;
		}

		public function set numManUR(value:int):void
		{
			_numManUR = value;
		}

		public function get numManFT():int
		{
			return _numManFT;
		}

		public function set numManFT(value:int):void
		{
			_numManFT = value;
		}

		public function get numManET():int
		{
			return _numManET;
		}

		public function set numManET(value:int):void
		{
			_numManET = value;
		}

		public function get numNA():int
		{
			return _numNA;
		}

		public function set numNA(value:int):void
		{
			_numNA = value;
		}

		public function get numAB():int
		{
			return _numAB;
		}

		public function set numAB(value:int):void
		{
			_numAB = value;
		}

		public function get numRG():int
		{
			return _numRG;
		}

		public function set numRG(value:int):void
		{
			_numRG = value;
		}

		public function get numCG():int
		{
			return _numCG;
		}

		public function set numCG(value:int):void
		{
			_numCG = value;
		}

		public function get numFP():int
		{
			return _numFP;
		}

		public function set numFP(value:int):void
		{
			_numFP = value;
		}

		public function get numFE():int
		{
			return _numFE;
		}

		public function set numFE(value:int):void
		{
			_numFE = value;
		}

		public function get numFR():int
		{
			return _numFR;
		}

		public function set numFR(value:int):void
		{
			_numFR = value;
		}

		public function get numFT():int
		{
			return _numFT;
		}

		public function set numFT(value:int):void
		{
			_numFT = value;
		}

		public function get numET():int
		{
			return _numET;
		}

		public function set numET(value:int):void
		{
			_numET = value;
		}

		public function get numSituacionAPartida():int
		{
			return _numSituacionAPartida;
		}

		public function set numSituacionAPartida(value:int):void
		{
			_numSituacionAPartida = value;
		}
		public function get fechaInicioPendiente():Date
		{
			return _fechaInicioPendiente;
		}

		public function set fechaInicioPendiente(value:Date):void
		{
			_fechaInicioPendiente = value;
		}

		public function get monedaFactura():String
		{
			return _monedaFactura;
		}

		public function set monedaFactura(value:String):void
		{
			_monedaFactura = value;
		}

		public function get FEEMasCercanaString():String
		{
			_FEEMasCercanaString = UtilsFecha.formatoFechaDDMMMYYYY(fechaEstimadaEntrega);
			return _FEEMasCercanaString;
		}

		public function set FEEMasCercanaString(value:String):void
		{
			_FEEMasCercanaString = value;
		}

		public function get idFactura():int
		{
			return _idFactura;
		}

		public function set idFactura(value:int):void
		{
			_idFactura = value;
		}

		public function get documentoAsociado():ArrayCollection
		{
			return _documentoAsociado;
		}

		public function set documentoAsociado(value:ArrayCollection):void
		{
			_documentoAsociado = value;
		}

		public function get situacion():String
		{
			return _situacion;
		}

		public function set situacion(value:String):void
		{
			_situacion = value;
		}

		public function get importePFactura():Number
		{
			return _importePFactura;
		}

		public function set importePFactura(value:Number):void
		{
			_importePFactura = value;
		}

		public function get paisCliente():String
		{
			return _paisCliente;
		}

		public function set paisCliente(value:String):void
		{
			_paisCliente = value;
		}

	}
}