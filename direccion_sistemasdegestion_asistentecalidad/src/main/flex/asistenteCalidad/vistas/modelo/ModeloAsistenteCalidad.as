package asistenteCalidad.vistas.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	
	public class ModeloAsistenteCalidad extends EventDispatcher
	{
		
		
		///////////////////////////// OBTIENE NUMERO PENDIENTES  ///////////////////////////// 
		
		private var $pendientes:ArrayCollection;
		private var $cantidad:Number;
		public function setObtenerPendientesSolcitudes(data:ArrayCollection):void
		{
			if(data == null)
				return;
			
			$pendientes = data;
			$cantidad = data.length;
			
			
			dispatchEvent(new Event("obtenerPendientesModeloAsistenteCalidad"));
			dispatchEvent(new Event("obtenerCantidadModeloAsistenteCalidad"));
		}
		
		[Bindable(event="obtenerPendientesModeloAsistenteCalidad")]
		public function get enviarObtenerPendientesAsistente():ArrayCollection
		{
			return $pendientes;
		}
		
		[Bindable(event="obtenerCantidadModeloAsistenteCalidad")]
		public function get enviarCantidadPendientes():Number
		{
			return $cantidad;
		}
		
		
		///////////////////////////// LISTA DE CONTACTOS DE CLIENTES  ///////////////////////////// 
		
		private var $listaContacto:ArrayCollection;
		public function setObtenerListaContactos(data:ArrayCollection):void
		{
			if(data == null)
				return;
			
			$listaContacto = data;
			dispatchEvent(new Event("obtenerListaContactosCliente"));
		}
		
		[Bindable(event="obtenerListaContactosCliente")]
		public function get enviarListaContactos():ArrayCollection
		{
			return $listaContacto;
		}
		
		///////////////////////////// CONFIRMAR DESCARTAR SOLICITUD USUARIO  ///////////////////////////// 
		
		private var $validaDescartar:Boolean;
		public function setObtenerconfirmacionDescartar(data:Boolean):void
		{
			
			$validaDescartar = data;
			dispatchEvent(new Event("obtenerConfirmarDescartar"));
		}
		
		[Bindable(event="obtenerConfirmarDescartar")]
		public function get enviarConfirmacionDescartar():Boolean
		{
			return $validaDescartar;
		}
		
		
		///////////////////////////// CONFIRMAR VALIDACION DE USUARIO PCONECT  ///////////////////////////// 
		
		private var $validaVincular:Boolean;
		public function setObtenerconfirmacionVincular(data:Boolean):void
		{
			
			$validaVincular = data;
			dispatchEvent(new Event("obtenerConfirmarVincularModeloAsistenteCalidad"));
		}
		
		[Bindable(event="obtenerConfirmarVincularModeloAsistenteCalidad")]
		public function get enviarConfirmacionVincular():Boolean
		{
			return $validaVincular;
		}
		
		
		
		
		
		public function ModeloAsistenteCalidad(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}