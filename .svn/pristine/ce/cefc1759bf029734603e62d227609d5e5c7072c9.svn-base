package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.doctosenviados
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.enviodocumentos.EnvioDocumentos")]
	[Bindable]
	public class EnvioDocumentos
	{
		private var _finicioFormato:String;
		private var _ffinFormato:String;
		
		private var _finicio:Date;
		private var _ffin:Date;
		private var _destino:int;
		private var _origen:String;
		private var _tipo:String;
		private var _facturaFpor:String;
		private var _proformaFpor:String;
		private var _contacto:String;
		private var _folioDocumento:String;
		private var _adjuntosDocumento:String;
		private var _estado:String;
		//Variable vista
		private var _numFila:int;
		
		public function EnvioDocumentos()
		{
		}

		public function get proformaFpor():String
		{
			return _proformaFpor;
		}

		public function set proformaFpor(value:String):void
		{
			_proformaFpor = value;
		}

		public function get facturaFpor():String
		{
			return _facturaFpor;
		}

		public function set facturaFpor(value:String):void
		{
			_facturaFpor = value;
		}

		public function get contacto():String
		{
			return _contacto;
		}

		public function set contacto(value:String):void
		{
			_contacto = value;
		}

		public function get finicioFormato():String
		{
			return _finicioFormato;
		}

		public function set finicioFormato(value:String):void
		{
			_finicioFormato = value;
		}

		public function get ffinFormato():String
		{
			return _ffinFormato;
		}

		public function set ffinFormato(value:String):void
		{
			_ffinFormato = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get adjuntosDocumento():String
		{
			return _adjuntosDocumento;
		}

		public function set adjuntosDocumento(value:String):void
		{
			_adjuntosDocumento = value;
		}

		public function get folioDocumento():String
		{
			return _folioDocumento;
		}

		public function set folioDocumento(value:String):void
		{
			_folioDocumento = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get origen():String
		{
			return _origen;
		}

		public function set origen(value:String):void
		{
			_origen = value;
		}

		public function get destino():int
		{
			return _destino;
		}

		public function set destino(value:int):void
		{
			_destino = value;
		}

		public function get ffin():Date
		{
			return _ffin;
		}

		public function set ffin(value:Date):void
		{
			_ffin = value;
			_ffinFormato = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}

		public function get finicio():Date
		{
			return _finicio;
		}

		public function set finicio(value:Date):void
		{
			_finicio = value;
			_finicioFormato = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}

	}
}