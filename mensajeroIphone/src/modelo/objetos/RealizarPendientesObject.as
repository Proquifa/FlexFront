package modelo.objetos
{
	import flash.net.registerClassAlias;

	registerClassAlias("modelo.objetos.RealizarPendientesObject",RealizarPendientesObject)
	public class RealizarPendientesObject
	{
		public function RealizarPendientesObject()
		{
		}
		
		private var _empresa:String;
		private var _evento:String;
		private var _pendientes:Array;
		private var _idEmpresa:Number;

		public function get empresa():String
		{
			return _empresa;
		}

		public function set empresa(value:String):void
		{
			_empresa = value;
		}

		public function get evento():String
		{
			return _evento;
		}

		public function set evento(value:String):void
		{
			_evento = value;
		}

		public function get pendientes():Array
		{
			return _pendientes;
		}

		public function set pendientes(value:Array):void
		{
			_pendientes = value;
		}

		public function get idEmpresa():Number
		{
			return _idEmpresa;
		}

		public function set idEmpresa(value:Number):void
		{
			_idEmpresa = value;
		}

	}
}