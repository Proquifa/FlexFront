package modelo.objetos
{
	import flash.net.registerClassAlias;

	registerClassAlias("modelo.objetos.Coordenada",Coordenada);
	public class Coordenada
	{
		
		private var _longitud:Number = 0;
		private var _latitud:Number = 0;
		private var _altitud:Number = 0;
		private var _velocidad:Number = 0;
		
		private var _longitudDestino:Number = 0;
		private var _latitudDestino:Number = 0;
		
		private var _validar:Boolean = false;
		
		
		public function Coordenada()
		{
		}

		public function get validar():Boolean
		{
			return _validar;
		}

		public function set validar(value:Boolean):void
		{
			_validar = value;
		}

		public function get latitudDestino():Number
		{
			return _latitudDestino;
		}

		public function set latitudDestino(value:Number):void
		{
			_latitudDestino = value;
		}

		public function get longitudDestino():Number
		{
			return _longitudDestino;
		}

		public function set longitudDestino(value:Number):void
		{
			_longitudDestino = value;
		}

		public function get velocidad():Number
		{
			return _velocidad;
		}

		public function set velocidad(value:Number):void
		{
			_velocidad = value;
		}

		public function get altitud():Number
		{
			return _altitud;
		}

		public function set altitud(value:Number):void
		{
			_altitud = value;
		}

		public function get latitud():Number
		{
			return _latitud;
		}

		public function set latitud(value:Number):void
		{
			_latitud = value;
		}

		public function get longitud():Number
		{
			return _longitud;
		}

		public function set longitud(value:Number):void
		{
			_longitud = value;
		}

	}
}