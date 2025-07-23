package mx.com.proquifa.proquifanet.desPhsUsa.vistas.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.ActividadPendiente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos.PartidaASurtirPHS;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	public class ModeloPartidaASurtirPhs extends EventDispatcher
	{
		public function ModeloPartidaASurtirPhs(target:IEventDispatcher=null)
		{
			super(target);
		}
		//					Partidas Despacho
		private var _listaPartidaDespacho:ArrayCollection = new ArrayCollection();
		public function setListaPartidaDespacho(datos:ArrayCollection):void{
			this._listaPartidaDespacho = new ArrayCollection();
			this._listaPartidaDespacho = datos;
			for(var t:int = 0; t < _listaPartidaDespacho.length; t++){
				(_listaPartidaDespacho[t] as PartidaASurtirPHS).numFila = t + 1;
			}
			dispatchEvent( new Event("regresaListaPartidaDespacho") );
		}
		[Bindable(event="regresaListaPartidaDespacho")]
		public function get regresolistaPartidaDespacho():ArrayCollection{
			return this._listaPartidaDespacho;
		}
		//					/Partidas Despacho
		//					Actividades pendientes x usuario
		private var _listaActividadPendiente:ArrayCollection = new ArrayCollection();
		public function setListaActividadPendiente($datos:ArrayCollection):void{
			this._listaActividadPendiente = new ArrayCollection();
			this._listaActividadPendiente = $datos;
			dispatchEvent( new Event("regresaListaActividadPendiente") );
		}
		[Bindable(event="regresaListaActividadPendiente")]
		public function get regresolistaActividadPendiente():ArrayCollection{
			return this._listaActividadPendiente;
		}
		//					/Actividades pendientes x usuario
		public function faultService($error:Object):void{
			alertaSingleton.show("Error en el servicio: "+$error, "Error");
		}
	}
}