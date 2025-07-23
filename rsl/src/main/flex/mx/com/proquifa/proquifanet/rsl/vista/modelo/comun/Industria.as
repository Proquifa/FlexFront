package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Industria")]
	[Bindable]
	public class Industria
	{
		
		private var _idIndustria:Number;
		private var _idCorporativo:Number;
		private var _idIndustriaCorporativo:Number;
		private var _nombre:String;
		private var _activo:Boolean;
		
		
		
		public function Industria()
		{
		}

		public function get idIndustria():Number
		{
			return _idIndustria;
		}

		public function set idIndustria(value:Number):void
		{
			_idIndustria = value;
		}

		public function get nombre():String
		{
			return _nombre;
		}

		public function set nombre(value:String):void
		{
			_nombre = value;
		}

		public function get activo():Boolean
		{
			return _activo;
		}

		public function set activo(value:Boolean):void
		{
			_activo = value;
		}

		public function get idCorporativo():Number
		{
			return _idCorporativo;
		}

		public function set idCorporativo(value:Number):void
		{
			_idCorporativo = value;
		}

		public function get idIndustriaCorporativo():Number
		{
			return _idIndustriaCorporativo;
		}

		public function set idIndustriaCorporativo(value:Number):void
		{
			_idIndustriaCorporativo = value;
		}


	}
}