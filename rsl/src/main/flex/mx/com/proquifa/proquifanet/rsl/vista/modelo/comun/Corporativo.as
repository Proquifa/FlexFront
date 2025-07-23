package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import mx.collections.ArrayCollection;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Corporativo")]
	[Bindable]
	public class Corporativo
	{
		//VARIABLES SERVICIO
		private var _idCorporativo:Number;
		private var _nombre:String;
		private var _fua:Date;
		private var _clientes:ArrayCollection;
		private var _cliente:Cliente;
		private var _numFila:Number;
		private var _industrias:ArrayCollection;
		private var _cart_updateResponsables:Boolean;
		private var _cart_updateESAC:Boolean;
		private var _idEsac:Number;
		private var _idcobrador:Number;
		private var _idEV:Number;
		private var _extendido:Boolean;
		
		
		private var _areaActual:String;
		private var _areaCorporativo:String;
		
		
		//VARIABLES VISTA
		private var _indexSel:Number;
		private var _imgMinimizadoMax:Boolean;
		
		public function Corporativo()
		{
		}

		
		
		public function get idCorporativo():Number
		{
			return _idCorporativo;
		}

		public function set idCorporativo(value:Number):void
		{
			_idCorporativo = value;
		}

		public function get nombre():String
		{
			return _nombre;
		}

		public function set nombre(value:String):void
		{
			_nombre = value;
		}

		public function get fua():Date
		{
			return _fua;
		}

		public function set fua(value:Date):void
		{
			_fua = value;
		}

		public function get clientes():ArrayCollection
		{
			return _clientes;
		}

		public function set clientes(value:ArrayCollection):void
		{
			_clientes = value;
		}

		public function get cliente():Cliente
		{
			return _cliente;
		}

		public function set cliente(value:Cliente):void
		{
			_cliente = value;
		}

		public function get numFila():Number
		{
			return _numFila;
		}

		public function set numFila(value:Number):void
		{
			_numFila = value;
		}

		public function get industrias():ArrayCollection
		{
			return _industrias;
		}

		public function set industrias(value:ArrayCollection):void
		{
			_industrias = value;
		}

		public function get indexSel():Number
		{
			return _indexSel;
		}

		public function set indexSel(value:Number):void
		{
			_indexSel = value;
		}

		public function get cart_updateResponsables():Boolean
		{
			return _cart_updateResponsables;
		}

		public function set cart_updateResponsables(value:Boolean):void
		{
			_cart_updateResponsables = value;
		}

		public function get cart_updateESAC():Boolean
		{
			return _cart_updateESAC;
		}

		public function set cart_updateESAC(value:Boolean):void
		{
			_cart_updateESAC = value;
		}

		public function get idEsac():Number
		{
			return _idEsac;
		}

		public function set idEsac(value:Number):void
		{
			_idEsac = value;
		}

		public function get idcobrador():Number
		{
			return _idcobrador;
		}

		public function set idcobrador(value:Number):void
		{
			_idcobrador = value;
		}

		public function get idEV():Number
		{
			return _idEV;
		}

		public function set idEV(value:Number):void
		{
			_idEV = value;
		}

		public function get extendido():Boolean
		{
			return _extendido;
		}

		public function set extendido(value:Boolean):void
		{
			_extendido = value;
		}

		public function get imgMinimizadoMax():Boolean
		{
			return _imgMinimizadoMax;
		}

		public function set imgMinimizadoMax(value:Boolean):void
		{
			_imgMinimizadoMax = value;
		}

		public function get areaActual():String
		{
			return _areaActual;
		}

		public function set areaActual(value:String):void
		{
			_areaActual = value;
		}

		public function get areaCorporativo():String
		{
			return _areaCorporativo;
		}

		public function set areaCorporativo(value:String):void
		{
			_areaCorporativo = value;
		}


	}
}