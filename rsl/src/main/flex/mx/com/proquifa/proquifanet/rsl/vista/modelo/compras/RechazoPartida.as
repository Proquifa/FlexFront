////////////////////////////////////////////////////////////////////////////////
//Code stub generated with:
//                                Crocus Modeller
//                      Robust UML editor for AS3 & Flex devs.
//                             http://CrocusModeller.com
//
////////////////////////////////////////////////////////////////////////////////


package  mx.com.proquifa.proquifanet.rsl.vista.modelo.compras{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	
	/**
	 * rechazoPartida
	 *
	 * @author el Osva
	 */
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.compras.gestorproductosphs.productoaconfirmar.RechazoPartida")]
	[Bindable]
	public class RechazoPartida {
		///////////////////////
		// PROPERTIES
		///////////////////////
		private var _numFila:int;
		private var _idRechazo:int;
		private var _fecha:Date;
		
		private var _comentariosRechazo:String;
		private var _justificacionRechazo:String;
		private var _responsableRechazo:String;
		///////////////////////
		// GETTERS/SETTERS
		///////////////////////
		
		
		
		
		public function get comentariosRechazo():String
		{
			return _comentariosRechazo;
		}
		
		public function set comentariosRechazo(value:String):void
		{
			_comentariosRechazo = value;
		}
		
		public function get responsableRechazo():String
		{
			return _responsableRechazo;
		}
		
		public function set responsableRechazo(value:String):void
		{
			_responsableRechazo = value;
		}
		
		public function get justificacionRechazo():String
		{
			return _justificacionRechazo;
		}
		
		public function set justificacionRechazo(value:String):void
		{
			_justificacionRechazo = value;
		}
		
		public function get fecha():Date
		{
			return _fecha;
		}
		
		public function set fecha(value:Date):void
		{
			_fecha = value;
		}
		
		public function get idRechazo():int
		{
			return _idRechazo;
		}
		
		public function set idRechazo(value:int):void
		{
			_idRechazo = value;
		}
		
		public function get numFila():int
		{
			return _numFila;
		}
		
		public function set numFila(value:int):void
		{
			_numFila = value;
		}
		
	}
}