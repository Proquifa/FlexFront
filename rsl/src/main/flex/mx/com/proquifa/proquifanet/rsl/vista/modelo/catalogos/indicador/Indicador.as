package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.indicador
{
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.catalogos.indicadores.Indicador")]
	public class Indicador
	{
		private var _idIndicador:Number;
		private var _idSubProceso:Number;	
		private var _concepto:String;
		private var _valor:Number;
		private var _fua:Date;
		private var _idUsuarioActualizo:Number;
		private var _editar:Boolean;	//Indica si fue editado
		private var _segundosValorTiempo:Number;
		private var _segundosValorTiempo2:Number;
		
		public function Indicador()
		{
			_segundosValorTiempo2 = null;
		}

		public function get idIndicador():Number
		{
			return _idIndicador;
		}

		public function set idIndicador(value:Number):void
		{
			_idIndicador = value;
		}

		public function get idSubProceso():Number
		{
			return _idSubProceso;
		}

		public function set idSubProceso(value:Number):void
		{
			_idSubProceso = value;
		}

		public function get concepto():String
		{
			return _concepto;
		}

		public function set concepto(value:String):void
		{
			_concepto = value;
		}

		public function get valor():Number
		{
			return _valor;
		}

		public function set valor(value:Number):void
		{
			_valor = value;
		}

		public function get fua():Date
		{
			return _fua;
		}

		public function set fua(value:Date):void
		{
			_fua = value;
		}

		public function get idUsuarioActualizo():Number
		{
			return _idUsuarioActualizo;
		}

		public function set idUsuarioActualizo(value:Number):void
		{
			_idUsuarioActualizo = value;
		}

		public function get editar():Boolean
		{
			return _editar;
		}

		public function set editar(value:Boolean):void
		{
			_editar = value;
		}

		public function get segundosValorTiempo():Number
		{
			return _segundosValorTiempo;
		}

		public function set segundosValorTiempo(value:Number):void
		{
			_segundosValorTiempo = value;
		}

		public function get segundosValorTiempo2():Number
		{
			return _segundosValorTiempo2;
		}

		public function set segundosValorTiempo2(value:Number):void
		{
			_segundosValorTiempo2 = value;
		}


	}
}