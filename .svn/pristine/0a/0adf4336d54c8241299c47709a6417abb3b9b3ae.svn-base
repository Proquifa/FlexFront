package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.compras.reporteDePermisos
{
	import mx.formatters.DateBase;
	import mx.formatters.DateFormatter;
	
	[Bindable]
	public class ReporteDePermisosItemHistorialSolicitud
	{
		private var _numFila:uint;
		private var _numFilaString:String;
		private var _fecha:Date;
		private var _fechaString:String;
		private var _nuevaFechaEL:Date;
		private var _nuevaFechaELString:String;
		private var  _documento:String;
		private var _justificacion:String;
		private var _isWithDocument:Boolean;
		
		DateBase.monthNamesShort = ["Ene","Feb","Mar","Abr","May","Jun","Jul","Ago","Sept","Oct","Nov","Dic"];
		
		public function ReporteDePermisosItemHistorialSolicitud()
		{
			_isWithDocument = false;
			_fechaString = "ND";
			_documento = "Sin Documento";
		}
		
		public function get numFila():uint
		{
			return _numFila;
		}
		
		public function set numFila(value:uint):void
		{
			_numFila = value;
			_numFilaString = "# " + value;
		}
		
		public function get numFilaString():String
		{
			return _numFilaString;
		}
		
		public function set numFilaString(value:String):void
		{
			_numFilaString = value;
		}
		
		public function get fecha():Date
		{
			return _fecha;
		}
		
		public function set fecha(value:Date):void
		{
			_fecha = value;
			var formatoFecha:DateFormatter = new DateFormatter();
			formatoFecha.formatString = "DD/MMM/YYYY HH:NN";
			_fechaString = formatoFecha.format(value);
		}
		
		public function get fechaString():String
		{
			return _fechaString;
		}
		
		public function set fechaString(value:String):void
		{
			_fechaString = value;
		}
		
		public function get nuevaFechaEL():Date
		{
			return _nuevaFechaEL;
		}
		
		public function set nuevaFechaEL(value:Date):void
		{
			_nuevaFechaEL = value;
		}
		
		public function get nuevaFechaELString():String
		{
			return _nuevaFechaELString;
		}
		
		public function set nuevaFechaELString(value:String):void
		{
			_nuevaFechaELString = value;
		}
		
		public function get documento():String
		{
			return _documento;
		}
		
		public function set documento(value:String):void
		{
			if(value != null){
				_documento = value;
				_isWithDocument = true;				
			}
		}
		
		public function get justificacion():String
		{
			return _justificacion;
		}
		
		public function set justificacion(value:String):void
		{
			_justificacion = value;
		}
		
		public function get isWithDocument():Boolean
		{
			return _isWithDocument;
		}
		
		public function set isWithDocument(value:Boolean):void
		{
			_isWithDocument = value;
		}
		
		
	}
}