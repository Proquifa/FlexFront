package mx.com.proquifa.vista.modelo
{
	[Bindable]
	public class Pendiente
	{
		private var _pendiente:String;
		private var _noPendientes:int;
		private var _subMenu:Boolean;
		private var _noSelected:Boolean;
		
		public function Pendiente()
		{
		}

		public function get pendiente():String
		{
			return _pendiente;
		}

		public function set pendiente(value:String):void
		{
			_pendiente = value;
		}

		public function get noPendientes():int
		{
			return _noPendientes;
		}

		public function set noPendientes(value:int):void
		{
			_noPendientes = value;
		}

		public function get subMenu():Boolean
		{
			return _subMenu;
		}

		public function set subMenu(value:Boolean):void
		{
			_subMenu = value;
		}

		public function get noSelected():Boolean
		{
			return _noSelected;
		}

		public function set noSelected(value:Boolean):void
		{
			_noSelected = value;
		}


	}
}