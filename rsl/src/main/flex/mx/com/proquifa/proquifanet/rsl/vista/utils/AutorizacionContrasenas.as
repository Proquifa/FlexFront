package mx.com.proquifa.proquifanet.rsl.vista.utils
{
	public class AutorizacionContrasenas
	{
		public function AutorizacionContrasenas()
		{
			//TODO: implement function
		}
		
		/**
		 * Devuelve el usuario segun la contraseña
		 */
		public static function obtenUsuarioPorContraseña( contrasena:String ):String{
			if( contrasena == null || contrasena == "" ){
				return "";
			}
			var usuario:String;
			switch( contrasena ){
					case "4sgh6n":
						usuario = "ctirado";
					break;
					case "hpml330":
						usuario = "administrador";
					break;
			}
			return usuario;
		}
	}

	
}