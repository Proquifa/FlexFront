package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	
	public class ObtenerPendientesModelo extends EventDispatcher
	{
		
		private var _pendientes:ArrayCollection;
		
		public function ObtenerPendientesModelo(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		[Bindable(event="cambioUnidades")]
		public function get Pendientes():ArrayCollection{
			return this._pendientes
		}
		
		public function setPendientes ( datos:ArrayCollection ):void{
			this._pendientes = datos;				
			dispatchEvent( new Event("cambioUnidades") );
		}
		
	}
}