package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Importacion")]
	[Bindable]
	public class Importacion
	{
		
		private var _idEmpresa:int;
		private var _vende:Boolean;
		private var _compra:Boolean;
		private var _importa:Boolean;
		private var _exporta:Boolean;
		private var _padronImportacion:Boolean;
		
		
		public function Importacion()
		{
			_idEmpresa = 0;
			_vende = false;
			_compra = false;
			_importa = false;
			_exporta = false;
			_padronImportacion = false;
		}
		
		public function get idEmpresa():int
		{
			return _idEmpresa;
		}
		
		public function set idEmpresa(value:int):void
		{
			_idEmpresa = value;
		}
		
		public function get importa():Boolean
		{
			return _importa;
		}
		
		public function set importa(value:Boolean):void
		{
			_importa = value;
		}
		
		public function get exporta():Boolean
		{
			return _exporta;
		}
		
		public function set exporta(value:Boolean):void
		{
			_exporta = value;
		}
		
		public function get padronImportacion():Boolean
		{
			return _padronImportacion;
		}
		
		public function set padronImportacion(value:Boolean):void
		{
			_padronImportacion = value;
		}

		public function get vende():Boolean
		{
			return _vende;
		}

		public function set vende(value:Boolean):void
		{
			_vende = value;
		}

		public function get compra():Boolean
		{
			return _compra;
		}

		public function set compra(value:Boolean):void
		{
			_compra = value;
		}
		
		
	}
}