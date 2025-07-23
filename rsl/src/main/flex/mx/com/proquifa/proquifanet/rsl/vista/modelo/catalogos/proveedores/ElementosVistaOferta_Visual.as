package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class ElementosVistaOferta_Visual
	{
		
		private var _titulo:String;
		private var _imagen:String;
		private var _valores:ArrayCollection;
		private var _objAtributo:String;
		private var _objValor:String;
		
		
		public function ElementosVistaOferta_Visual()
		{
			_titulo = "";
			_imagen = "";
			_objAtributo = "";
			_objValor = "";
			_valores = new ArrayCollection();
			
		}
		
		
		public function get titulo():String
		{
			return _titulo;
		}

		public function set titulo(value:String):void
		{
			_titulo = value;
		}

		public function get imagen():String
		{
			return _imagen;
		}

		public function set imagen(value:String):void
		{
			_imagen = value;
		}

		public function get valores():ArrayCollection
		{
			return _valores;
		}

		public function set valores(value:ArrayCollection):void
		{
			_valores = value;
		}

		public function get objAtributo():String
		{
			return _objAtributo;
		}

		public function set objAtributo(value:String):void
		{
			_objAtributo = value;
		}

		public function get objValor():String
		{
			return _objValor;
		}

		public function set objValor(value:String):void
		{
			_objValor = value;
		}


	}
}