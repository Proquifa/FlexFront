package mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos
{
	import mx.collections.ArrayCollection;
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.despachos.ResumenInspeccionProductos")]
	[Bindable]
	public class ResumenInspeccionProductos
	{
		
		private var _nombreCliente:String;
		private var _totalP1:Number;
		private var _totalP2:Number;
		private var _totalP3:Number;
		private var _partidas:ArrayCollection;
		private var _prioridad:String;
		private var _numCliP1:Number;
		private var _numCliP2:Number;
		private var _numCliP3:Number;
		private var _numPartP1:Number;
		private var _numPartP2:Number;
		private var _numPartP3:Number;
		private var _numPiezasP1:Number;
		private var _numPiezasP2:Number;
		private var _numPiezasP3:Number;
		private var _esImportado:Boolean;

		
		
		
		public function ResumenInspeccionProductos()
		{
			
			
		}

	

		public function get esImportado():Boolean
		{
			return _esImportado;
		}

		public function set esImportado(value:Boolean):void
		{
			_esImportado = value;
		}

		public function get numPiezasP3():Number
		{
			return _numPiezasP3;
		}

		public function set numPiezasP3(value:Number):void
		{
			_numPiezasP3 = value;
		}

		public function get numPiezasP2():Number
		{
			return _numPiezasP2;
		}

		public function set numPiezasP2(value:Number):void
		{
			_numPiezasP2 = value;
		}

		public function get numPiezasP1():Number
		{
			return _numPiezasP1;
		}

		public function set numPiezasP1(value:Number):void
		{
			_numPiezasP1 = value;
		}

		public function get numPartP3():Number
		{
			return _numPartP3;
		}

		public function set numPartP3(value:Number):void
		{
			_numPartP3 = value;
		}

		public function get numPartP2():Number
		{
			return _numPartP2;
		}

		public function set numPartP2(value:Number):void
		{
			_numPartP2 = value;
		}

		public function get numPartP1():Number
		{
			return _numPartP1;
		}

		public function set numPartP1(value:Number):void
		{
			_numPartP1 = value;
		}

		public function get numCliP3():Number
		{
			return _numCliP3;
		}

		public function set numCliP3(value:Number):void
		{
			_numCliP3 = value;
		}

		public function get numCliP2():Number
		{
			return _numCliP2;
		}

		public function set numCliP2(value:Number):void
		{
			_numCliP2 = value;
		}

		public function get numCliP1():Number
		{
			return _numCliP1;
		}

		public function set numCliP1(value:Number):void
		{
			_numCliP1 = value;
		}

		public function get prioridad():String
		{
			return _prioridad;
		}

		public function set prioridad(value:String):void
		{
			_prioridad = value;
		}

		public function get partidas():ArrayCollection
		{
			return _partidas;
		}

		public function set partidas(value:ArrayCollection):void
		{
			_partidas = value;
		}

		public function get totalP3():Number
		{
			return _totalP3;
		}

		public function set totalP3(value:Number):void
		{
			_totalP3 = value;
		}

		public function get totalP2():Number
		{
			return _totalP2;
		}

		public function set totalP2(value:Number):void
		{
			_totalP2 = value;
		}

		public function get totalP1():Number
		{
			return _totalP1;
		}

		public function set totalP1(value:Number):void
		{
			_totalP1 = value;
		}

		public function get nombreCliente():String
		{
			return _nombreCliente;
		}

		public function set nombreCliente(value:String):void
		{
			_nombreCliente = value;
		}

	}
}