package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Usuario")]
	public class Usuario
	{
		private var _nombreUsuario:String;		
		
		public function Usuario()
		{
			//TODO: implement function
		}
		
		public function get nombreUsuario():String
		{
			return _nombreUsuario;
		}

		public function set nombreUsuario(value:String):void
		{
			_nombreUsuario = value;
		}

	}
}