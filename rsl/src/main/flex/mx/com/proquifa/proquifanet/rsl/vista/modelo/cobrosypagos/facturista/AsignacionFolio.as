package mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.facturista
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;

	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.cobrosypagos.facturista.AsignacionFolio")]
	public class AsignacionFolio
	{
		private var _numFila:int;
		private var _fecha:Date;
		private var _folioInicio:int;
		private var _folioFinal:int;
		private var _idEmpresa:int;
		private var _idEmpleado:int;
		private var _nombreEmpleado:String;
		private var _asignado:Boolean;
		private var _rangoFoliosAsignados:int;
		private var _foliosConsumidos:int;
		private var _tipo:String
		
		////////////////////////////////////variables para formatos flex
		private var _formatoFecha:String;  //regresa la varible  fecha con formato  DDMMMYYYY

		public function AsignacionFolio(){
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get formatoFecha():String
		{
			return _formatoFecha;
		}

		public function set formatoFecha(value:String):void
		{
			_formatoFecha = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get foliosConsumidos():int
		{
			return _foliosConsumidos;
		}

		public function set foliosConsumidos(value:int):void
		{
			_foliosConsumidos = value;
		}

		public function get rangoFoliosAsignados():int
		{
			return _rangoFoliosAsignados;
		}

		public function set rangoFoliosAsignados(value:int):void
		{
			_rangoFoliosAsignados = value;
		}

		public function get asignado():Boolean
		{
			return _asignado;
		}

		public function set asignado(value:Boolean):void
		{
			_asignado = value;
		}

		public function get nombreEmpleado():String
		{
			return _nombreEmpleado;
		}

		public function set nombreEmpleado(value:String):void
		{
			_nombreEmpleado = value;
		}

		public function get idEmpleado():int
		{
			return _idEmpleado;
		}

		public function set idEmpleado(value:int):void
		{
			_idEmpleado = value;
		}

		public function get idEmpresa():int
		{
			return _idEmpresa;
		}

		public function set idEmpresa(value:int):void
		{
			_idEmpresa = value;
		}

		public function get folioFinal():int
		{
			return _folioFinal;
		}

		public function set folioFinal(value:int):void
		{
			_folioFinal = value;
		}

		public function get folioInicio():int
		{
			return _folioInicio;
		}

		public function set folioInicio(value:int):void
		{
			_folioInicio = value;
		}

		public function get fecha():Date
		{
			return _fecha;
		}

		public function set fecha(value:Date):void
		{
			_fecha = value;
			formatoFecha = UtilsFecha.formatoFechaDDMMMYYYY( value );
		}

	}
}