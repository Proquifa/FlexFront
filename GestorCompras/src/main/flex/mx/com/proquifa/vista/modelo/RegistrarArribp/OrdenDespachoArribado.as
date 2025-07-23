package mx.com.proquifa.vista.modelo.RegistrarArribp
{
	import mx.collections.ArrayCollection;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.compras.gestorimportaciones.OrdenDespachoArribado")]
	[Bindable]
	public class OrdenDespachoArribado
	{
		
		private var _id:int;
		private var _ordenDespacho:int;
		private var _proveedor:String;
		private var _porArribar:int;
		private var _arribadas:int;
		private var _faltantes:int;
		private var _sobrantes:int;
		private var _imagenes:ArrayCollection;
		private var _partidasArribadas:ArrayCollection;
		
		public function OrdenDespachoArribado()
		{
			_id = 0;
			_ordenDespacho = 0;
			_proveedor = "";
			_porArribar = 0;
			_arribadas = 0;
			_faltantes = 0;
			_sobrantes = 0;
		}
		
		
		public function get id():int
		{
			return _id;	
		}
		
		public function set id(value:int):void
		{
			_id = value;
		}
		
		public function get ordenDespacho():int
		{
			return _ordenDespacho;
		}
		
		public function set ordenDespacho(value:int):void
		{
			_ordenDespacho = value;
		}
		
		public function get proveedor():String
		{
			return _proveedor;
		}
		
		public function set proveedor(value:String):void
		{
			_proveedor = value;
		}
		
		public function get faltantes():int
		{
			return _faltantes;
		}
		
		public function set faltantes(value:int):void
		{
			_faltantes = value;
		}
		
		public function get sobrantes():int
		{
			return _sobrantes;
		}
		
		public function set sobrantes(value:int):void
		{
			_sobrantes = value;
		}
		
		public function get imagenes():ArrayCollection
		{
			return _imagenes;
		}
		
		public function set imagenes(value:ArrayCollection):void
		{
			_imagenes = value;
		}
		
		public function get partidasArribadas():ArrayCollection
		{
			return _partidasArribadas;
		}
		
		public function set partidasArribadas(value:ArrayCollection):void
		{
			_partidasArribadas = value;
		}
		
		public function get porArribar():int
		{
			return _porArribar;
		}
		
		public function set porArribar(value:int):void
		{
			_porArribar = value;
		}
		
		public function get arribadas():int
		{
			return _arribadas;
		}
		
		public function set arribadas(value:int):void
		{
			_arribadas = value;
		}
		
		
	}
}