package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.incidente
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.comun.Eficiencia")]
	public class Eficiencia
	{
		public function Eficiencia()
		{
		}
		
		
		private var _numFila:Number;
		
		
		private var _nombre_Empleado:String;
		
		private var _mes:String;
		
		private var _eficiencia:Number;
		
		private var _eficienciaFormato:String;
		
		private var _proceso:String;
		
		
		
		public function get proceso():String
		{
			return _proceso;
		}

		public function set proceso(value:String):void
		{
			_proceso = value;
		}

		public function get eficienciaFormato():String
		{
			return _eficienciaFormato;
		}

		public function set eficienciaFormato(value:String):void
		{
			_eficienciaFormato = value;
		}

		public function get numFila():Number
		{
			return _numFila;
		}

		public function set numFila(value:Number):void
		{
			_numFila = value;
		}

		public function get eficiencia():Number
		{
			return _eficiencia;
		}

		public function set eficiencia(value:Number):void
		{
			_eficiencia = value;
			eficienciaFormato = Math.round(_eficiencia).toString() + " %"
		}

		public function get mes():String
		{
			return _mes;
		}

		public function set mes(value:String):void
		{
			_mes = value;
		}

		public function get nombre_Empleado():String
		{
			return _nombre_Empleado;
		}

		public function set nombre_Empleado(value:String):void
		{
			_nombre_Empleado = value;
		}

	}
}