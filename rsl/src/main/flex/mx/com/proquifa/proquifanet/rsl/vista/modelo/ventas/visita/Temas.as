package mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.visitas.Temas")]
	[Bindable]
	public class Temas
	{
		private var _numFila:int;
		private var _asunto:String;
		private var _argumentos:String;		
		private var _idTema:Number;
		private var _idVisita:Number;
		private var _eliminar:Boolean;
		
		//conteo para el total de temas en un ItemRenderer
		private var _totalTemas:Number; 
		
		public function Temas()
		{
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get eliminar():Boolean
		{
			return _eliminar;
		}

		public function set eliminar(value:Boolean):void
		{
			_eliminar = value;
		}

		public function get totalTemas():Number
		{
			return _totalTemas;
		}

		public function set totalTemas(value:Number):void
		{
			_totalTemas = value;
		}

		public function get asunto():String
		{
			return _asunto;
		}

		public function set asunto(value:String):void
		{
			_asunto = value;
		}

		public function get argumentos():String
		{
			return _argumentos;
		}

		public function set argumentos(value:String):void
		{
			_argumentos = value;
		}

		public function get idTema():Number
		{
			return _idTema;
		}

		public function set idTema(value:Number):void
		{
			_idTema = value;
		}

		public function get idVisita():Number
		{
			return _idVisita;
		}

		public function set idVisita(value:Number):void
		{
			_idVisita = value;
		}


	}
}