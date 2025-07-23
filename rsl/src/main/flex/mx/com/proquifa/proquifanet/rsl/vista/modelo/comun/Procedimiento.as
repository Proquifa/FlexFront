package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Procedimiento")]
	public class Procedimiento
	{
		private var _idProcedimiento:Number;
		private var _subProceso:Number;
		private var _numFila:Number
		
		private var _nombre:String;
		private var _nombreSubproceso:String;
		private var _nombreProceso:String;		
		private var _activaProcedimiento:Boolean;
		private var _referencia:String = "";
	
		
		public function Procedimiento()
		{
		}
		
		public function get referencia():String
		{
			return _referencia;
		}

		public function set referencia(value:String):void
		{
			_referencia = value;
		}

		public function get nombreProceso():String
		{
			return _nombreProceso;
		}

		public function set nombreProceso(value:String):void
		{
			_nombreProceso = value;
		}

		public function get nombreSubproceso():String
		{
			return _nombreSubproceso;
		}

		public function set nombreSubproceso(value:String):void
		{
			_nombreSubproceso = value;
		}

		public function get activaProcedimiento():Boolean
		{
			return _activaProcedimiento;
		}

		public function set activaProcedimiento(value:Boolean):void
		{
			_activaProcedimiento = value;
		}

		public function get nombre():String
		{
			return _nombre;
		}

		public function set nombre(value:String):void
		{
			_nombre = value;
		}

		public function get numFila():Number
		{
			return _numFila;
		}

		public function set numFila(value:Number):void
		{
			_numFila = value;
		}

		public function get subProceso():Number
		{
			return _subProceso;
		}

		public function set subProceso(value:Number):void
		{
			_subProceso = value;
		}

		public function get idProcedimiento():Number
		{
			return _idProcedimiento;
		}

		public function set idProcedimiento(value:Number):void
		{
			_idProcedimiento = value;
		}

	}
}