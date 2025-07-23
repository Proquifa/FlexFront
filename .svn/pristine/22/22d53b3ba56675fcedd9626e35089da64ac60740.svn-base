package vistas.renders.renderEnCierre.Objects
{
	[Bindable]
	public class PendientesEnCierreObject extends Object
	{
		public function PendientesEnCierreObject()
		{
			super();
			key = "";
		}
		
		public var label:String;
		public var icono:String;
		public var total:uint;
		private var _empresa:String;
		private var _direccion:String;
		private var _evento:String;
		
		private var _key:String; 
		
		public var pendientes:Array;

		public function get key():String
		{
			return _key;
		}

		public function set key(value:String):void
		{
			_key = value;
		}

		public function get direccion():String
		{
			return _direccion;
		}

		public function set direccion(value:String):void
		{
			_direccion = value;
			_key = _direccion +"_" + _evento + "_" + _empresa;
		}

		public function get empresa():String
		{
			return _empresa;
		}

		public function set empresa(value:String):void
		{
			_empresa = value;
			_key = _direccion +"_" + _evento + "_" + _empresa;
		}

		public function get evento():String
		{
			return _evento;
		}

		public function set evento(value:String):void
		{
			_evento = value;
			_key = _direccion +"_" + _evento + "_" + _empresa;
		}
	}
}