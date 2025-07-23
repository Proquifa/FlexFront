package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.agenteAduanal
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.catalogos.agenteAduanal.LugarConcepto")]
	[Bindable]
	public class LugarConcepto
	{
		private var _idConcepto:Number;
		private var _concepto:String;
		private var _monto:Number;
		private var _porcentaje:Number;
		private var _borrar:Boolean;
		private var _fua:Date;
		
		
		// VISTA
		private var _edicion:Boolean;
		
		
		
		public function LugarConcepto()
		{
		}

		public function get idConcepto():Number
		{
			return _idConcepto;
		}

		public function set idConcepto(value:Number):void
		{
			_idConcepto = value;
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

		public function get porcentaje():Number
		{
			return _porcentaje;
		}

		public function set porcentaje(value:Number):void
		{
			_porcentaje = value;
		}

		public function get borrar():Boolean
		{
			return _borrar;
		}

		public function set borrar(value:Boolean):void
		{
			_borrar = value;
		}

		public function get fua():Date
		{
			return _fua;
		}

		public function set fua(value:Date):void
		{
			_fua = value;
		}

		public function get edicion():Boolean
		{
			return _edicion;
		}

		public function set edicion(value:Boolean):void
		{
			_edicion = value;
		}


	}
}