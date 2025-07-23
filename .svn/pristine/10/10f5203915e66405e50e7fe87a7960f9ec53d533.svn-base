package mx.com.proquifa.proquifanet.rsl.vista.modelo.registroWeb
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import mx.collections.ArrayCollection;

	public class ModeloRegistroSeminario extends EventDispatcher
	{
		
		private var _respuestaInsersionParticipante:String;
		
		public function setRespuestaInsertarParticipante( respuesta:String ):void
		{
			this._respuestaInsersionParticipante = respuesta;
			dispatchEvent( new Event("registroModeloRegistroSeminario") );
		}
		
		[Bindable(event="registroModeloRegistroSeminario")]
		public function get respuestaInsercionParticipante():String
		{
			return _respuestaInsersionParticipante;
		}

/*		private var _clientes:ArrayCollection;
		
		public function setClientes( clientes:ArrayCollection):void
		{
			this._clientes =clientes;
			dispatchEvent( new Event("listaClientesModeloRegistroSeminario") );
		}
		
		[Bindable(event="listaClientesModeloRegistroSeminario")]
		public function get Clientes():ArrayCollection
		{
			return _clientes;
		}*/
	}
}