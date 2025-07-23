package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores
{
	import mx.collections.ArrayCollection;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.catalogos.proveedores.Flete")]
	[Bindable]
	public class Flete
	{
		private var _idFlete:Number;
		private var _concepto:String;
		private var _leyenda:String;
		private var _monto:Number;
		private var _fua:Date;
		private var _fleteExpress:Boolean;
		private var _tiempoEntrega:String;		
		private var _habilitado:Boolean;
		
		private var _ruta:ArrayCollection;
		private var _concatenaRuta:String;
		//private List<Ruta> ruta;
		
	
		// VISTA
		private var _visibleEngrane:Boolean;
		private var _hide:Boolean;
		private var _nombreRuta:String;
		
		
		
		public function Flete()
		{
			idFlete = 0;
		}

		public function get hide():Boolean
		{
			return _hide;
		}

		public function set hide(value:Boolean):void
		{
			_hide = value;
		}

		public function get idFlete():Number
		{
			return _idFlete;
		}

		public function set idFlete(value:Number):void
		{
			_idFlete = value;
		}

		public function get concepto():String
		{
			return _concepto;
		}

		public function set concepto(value:String):void
		{
			_concepto = value;
		}

		public function get monto():Number
		{
			return _monto;
		}

		public function set monto(value:Number):void
		{
			_monto = value;
		}

		public function get visibleEngrane():Boolean
		{
			return _visibleEngrane;
		}

		public function set visibleEngrane(value:Boolean):void
		{
			_visibleEngrane = value;
		}

		public function get fua():Date
		{
			return _fua;
		}

		public function set fua(value:Date):void
		{
			_fua = value;
		}

		public function get habilitado():Boolean
		{
			return _habilitado;
		}

		public function set habilitado(value:Boolean):void
		{
			_habilitado = value;
		}

		public function get leyenda():String
		{
			return _leyenda;
		}

		public function set leyenda(value:String):void
		{
			_leyenda = value;
		}

		public function get fleteExpress():Boolean
		{
			return _fleteExpress;
		}

		public function set fleteExpress(value:Boolean):void
		{
			_fleteExpress = value;
		}

		public function get tiempoEntrega():String
		{
			return _tiempoEntrega;
		}

		public function set tiempoEntrega(value:String):void
		{
			_tiempoEntrega = value;
		}

		public function get concatenaRuta():String
		{
			return _concatenaRuta;
		}

		public function set concatenaRuta(value:String):void
		{
			_concatenaRuta = value;
		}

		public function get ruta():ArrayCollection
		{
			return _ruta;
		}

		public function set ruta(value:ArrayCollection):void
		{
			_ruta = value;
		}

		public function get nombreRuta():String
		{
			return _nombreRuta;
		}

		public function set nombreRuta(value:String):void
		{
			_nombreRuta = value;
		}



	}
}