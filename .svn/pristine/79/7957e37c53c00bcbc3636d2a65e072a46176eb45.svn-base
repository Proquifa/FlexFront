package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.comun.llamadas
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	
	public class ModeloReporteLlamadas extends EventDispatcher
	{
		private var _listaLlamadas:ArrayCollection;
		private var _listaProductos:ArrayCollection;
		private var _folio:String;
		/**
		 * Funcion de result de busqueda de documento por folio
		 */
		public function setRegresaListaLlamadas( datos:ArrayCollection ):void{
			this._listaLlamadas = FuncionesEstaticas.getInstance().formatoObjetos( datos );
			dispatchEvent(new Event("regresaLlamadas"));
		}
		
		[Bindable(Event="regresaLlamadas")]
		public function get regresaListaLlamadas():ArrayCollection{
			return this._listaLlamadas;
		}
		
		
		/**
		 * Funcion de result de busqueda de productos por marca
		 */
		public function setRegresaListaProductos( datos:ArrayCollection ):void{
			this._listaProductos = datos;
			dispatchEvent(new Event("regresaProductos"));
		}
		
		[Bindable(Event="regresaProductos")]
		public function get RegresaListaProductos():ArrayCollection{
			return this._listaProductos;
		}
		
		
		
		/**
		 * Funcion de result de busqueda de productos por marca
		 */
		public function setRegresaFolio( datos:String ):void{
			this._folio = datos;
			dispatchEvent(new Event("regresaFolio"));
		}
		
		[Bindable(Event="regresaFolio")]
		public function get RegresaFolio():String{
			return this._folio;
		}
		
		
		
		public function ModeloReporteLlamadas(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}