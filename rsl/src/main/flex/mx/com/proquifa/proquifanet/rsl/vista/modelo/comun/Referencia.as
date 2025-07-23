package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import flash.utils.ByteArray;
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Referencia")]
	public class Referencia
	{
		private var _idReferencia:Number = 0;
		private var _idIncidente:Number;
		private var _numFila:int;
		private var _idUsuario:Number;
		private var _idAccion:Number;
		
		private var _borrar:Boolean;
		
		private var _folio:String;
		private var _origen:String;
		private var _urlArchivo:String;
		private var _extensionArchivo:String;
		private var _tipo:String;
		private var _nombreResponsable:String;
		private var _nombreResonsable:String;
		private var _justificacion:String;
		private var _nombre:String;
		private var _nombreReferencia:String;
		private var _nomArchivoReal:String;
		private var _nombreArchivo:String;
		private var _ultimo:String = "";
		
		
		private var _idSolicitudVisita:Number;
		private var _idTareaTI:Number;
		private var _idServicioTI:Number;
		private var _idSolicitudServicioTI:Number;
		
		//variable puesta para indicar de totales en una lista
		private var _totalReferencias:Number;
		
		private var _bytes:ByteArray;
		
		public function Referencia()
		{
			//TODO: implement function
		}
		
		public function get idSolicitudServicioTI():Number
		{
			return _idSolicitudServicioTI;
		}
		
		public function set idSolicitudServicioTI(value:Number):void
		{
			_idSolicitudServicioTI = value;
		}
		
		public function get idServicioTI():Number
		{
			return _idServicioTI;
		}
		
		public function set idServicioTI(value:Number):void
		{
			_idServicioTI = value;
		}
		
		public function get idTareaTI():Number
		{
			return _idTareaTI;
		}
		
		public function set idTareaTI(value:Number):void
		{
			_idTareaTI = value;
		}
		
		public function get idSolicitudVisita():Number
		{
			return _idSolicitudVisita;
		}
		
		public function set idSolicitudVisita(value:Number):void
		{
			_idSolicitudVisita = value;
		}
		
		public function get nombre():String
		{
			return _nombre;
		}
		
		public function set nombre(value:String):void
		{
			_nombre = value;
		}
		
		public function get totalReferencias():Number
		{
			return _totalReferencias;
		}
		
		public function set totalReferencias(value:Number):void
		{
			_totalReferencias = value;
		}
		
		public function get idUsuario():Number
		{
			return _idUsuario;
		}
		
		public function set idUsuario(value:Number):void
		{
			_idUsuario = value;
		}
		
		public function get bytes():ByteArray
		{
			return _bytes;
		}
		
		public function set bytes(value:ByteArray):void
		{
			_bytes = value;
		}
		
		public function get tipo():String
		{
			return _tipo;
		}
		
		public function set tipo(value:String):void
		{
			_tipo = value;
		}
		
		public function get extensionArchivo():String
		{
			return _extensionArchivo;
		}
		
		public function set extensionArchivo(value:String):void
		{
			_extensionArchivo = value;
		}
		
		public function get urlArchivo():String
		{
			return _urlArchivo;
		}
		
		public function set urlArchivo(value:String):void
		{
			_urlArchivo = value;
		}
		
		public function get origen():String
		{
			return _origen;
		}
		
		public function set origen(value:String):void
		{
			_origen = value;
		}
		
		public function get folio():String
		{
			return _folio;
		}
		
		public function set folio(value:String):void
		{
			_folio = value;
		}
		
		public function get borrar():Boolean
		{
			return _borrar;
		}
		
		public function set borrar(value:Boolean):void
		{
			_borrar = value;
		}
		
		public function get numFila():int
		{
			return _numFila;
		}
		
		public function set numFila(value:int):void
		{
			_numFila = value;
		}
		
		public function get idIncidente():Number
		{
			return _idIncidente;
		}
		
		public function set idIncidente(value:Number):void
		{
			_idIncidente = value;
		}
		
		public function get idReferencia():Number
		{
			return _idReferencia;
		}
		
		public function set idReferencia(value:Number):void
		{			
			_idReferencia = value;
		}
		
		public function get nomArchivoReal():String
		{
			return _nomArchivoReal;
		}
		
		public function set nomArchivoReal(value:String):void
		{
			_nomArchivoReal = value;
		}
		
		public function get idAccion():Number
		{
			return _idAccion;
		}
		
		public function set idAccion(value:Number):void
		{
			_idAccion = value;
		}
		
		public function get nombreResponsable():String
		{
			return _nombreResponsable;
		}
		
		public function set nombreResponsable(value:String):void
		{
			_nombreResponsable = value;
		}
		
		public function get justificacion():String
		{
			return _justificacion;
		}
		
		public function set justificacion(value:String):void
		{
			_justificacion = value;
		}
		
		public function get nombreReferencia():String
		{
			return _nombreReferencia;
		}
		
		public function set nombreReferencia(value:String):void
		{
			_nombreReferencia = value;
		}
		
		public function get nombreArchivo():String
		{
			return _nombreArchivo;
		}
		
		public function set nombreArchivo(value:String):void
		{
			_nombreArchivo = value;
		}
		
		public function get ultimo():String
		{
			return _ultimo;
		}
		
		public function set ultimo(value:String):void
		{
			_ultimo = value;
		}
		
		public function get nombreResonsable():String
		{
			return _nombreResonsable;
		}
		
		public function set nombreResonsable(value:String):void
		{
			_nombreResonsable = value;
		}
		
		
	}
}