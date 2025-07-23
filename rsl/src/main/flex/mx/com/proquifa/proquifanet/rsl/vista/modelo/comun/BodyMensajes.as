package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	public class BodyMensajes
	{
		private var _usuario:String;
		private var _vieneDe:String;
		
		private var _numeroFolio:String;
		
		private var _modificado:Boolean;
		
		private var _indice:Number;
		
		private var _inicia:Boolean;
		
		public function BodyMensajes()
		{
		}
		
		public function get inicia():Boolean
		{
			return _inicia;
		}

		public function set inicia(value:Boolean):void
		{
			_inicia = value;
		}

		public function get indice():Number
		{
			return _indice;
		}

		public function set indice(value:Number):void
		{
			_indice = value;
		}

		public function get modificado():Boolean
		{
			return _modificado;
		}

		public function set modificado(value:Boolean):void
		{
			_modificado = value;
		}

		public function get numeroFolio():String
		{
			return _numeroFolio;
		}

		public function set numeroFolio(value:String):void
		{
			_numeroFolio = value;
		}

		public function get vieneDe():String
		{
			return _vieneDe;
		}

		public function set vieneDe(value:String):void
		{
			_vieneDe = value;
		}

		public function get usuario():String
		{
			return _usuario;
		}

		public function set usuario(value:String):void
		{
			_usuario = value;
		}

	}
}