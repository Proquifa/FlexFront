package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.catalogos.proveedores.Licencia")]
	[Bindable]
	public class Licencia
	{
		private var _idProveedor:Number;
		private var _NCTC:Number;
		private var _CIP:Number;
		private var _ATCC:Number;
		private var _IMI:Number;
		private var _NCPF:Number;
		private var _NBRC:Number;
		private var _NCIMB:Number;
		private var _NCYC:Number;
		
		public function Licencia()
		{
			ATCC = 0; CIP = 0;
			NCTC = 0; IMI = 0;
			NCPF = 0; NBRC = 0;
			NCIMB = 0; NCYC = 0;
			
		}

		public function get idProveedor():Number
		{
			return _idProveedor;
		}

		public function set idProveedor(value:Number):void
		{
			_idProveedor = value;
		}

		public function get NCTC():Number
		{
			return _NCTC;
		}

		public function set NCTC(value:Number):void
		{
			_NCTC = value;
		}

		public function get CIP():Number
		{
			return _CIP;
		}

		public function set CIP(value:Number):void
		{
			_CIP = value;
		}

		public function get ATCC():Number
		{
			return _ATCC;
		}

		public function set ATCC(value:Number):void
		{
			_ATCC = value;
		}

		public function get IMI():Number
		{
			return _IMI;
		}

		public function set IMI(value:Number):void
		{
			_IMI = value;
		}

		public function get NCPF():Number
		{
			return _NCPF;
		}

		public function set NCPF(value:Number):void
		{
			_NCPF = value;
		}

		public function get NBRC():Number
		{
			return _NBRC;
		}

		public function set NBRC(value:Number):void
		{
			_NBRC = value;
		}

		public function get NCIMB():Number
		{
			return _NCIMB;
		}

		public function set NCIMB(value:Number):void
		{
			_NCIMB = value;
		}

		public function get NCYC():Number
		{
			return _NCYC;
		}

		public function set NCYC(value:Number):void
		{
			_NCYC = value;
		}


	}
}