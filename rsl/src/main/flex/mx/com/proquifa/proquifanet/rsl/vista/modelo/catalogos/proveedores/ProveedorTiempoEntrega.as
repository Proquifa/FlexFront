package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.catalogos.proveedores.ProveedorTiempoEntrega")]
	[Bindable]
	public class ProveedorTiempoEntrega
	{
		
		private var _idProveedorTiempoEntrega:Number;
		private var _concepto:String;
		private var _fua:Date;
		
		// VISTA
		private var _visibleEngrane:Boolean;
		private var _hide:Boolean;
		
		public function ProveedorTiempoEntrega()
		{
			idProveedorTiempoEntrega = 0;
		}
		
		
		public function get hide():Boolean
		{
			return _hide;
		}

		public function set hide(value:Boolean):void
		{
			_hide = value;
		}

		public function get idProveedorTiempoEntrega():Number
		{
			return _idProveedorTiempoEntrega;
		}

		public function set idProveedorTiempoEntrega(value:Number):void
		{
			_idProveedorTiempoEntrega = value;
		}

		public function get concepto():String
		{
			return _concepto;
		}

		public function set concepto(value:String):void
		{
			_concepto = value;
		}

		public function get fua():Date
		{
			return _fua;
		}

		public function set fua(value:Date):void
		{
			_fua = value;
		}

		public function get visibleEngrane():Boolean
		{
			return _visibleEngrane;
		}

		public function set visibleEngrane(value:Boolean):void
		{
			_visibleEngrane = value;
		}


	}
}