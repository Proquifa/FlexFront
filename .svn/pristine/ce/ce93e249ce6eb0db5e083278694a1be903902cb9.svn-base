package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.comun
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	
	public class ModeloTasaRealizacionGeneral extends EventDispatcher
	{
		private var _listaIncidente:ArrayCollection;
		private var _tasaPromedio:Number;
		
		private var _listaTasaCotiza:ArrayCollection;
		//Metodo para las Cotizaciones lista de los Tipos cerrados y abiertos
		[Bindable(event="listaTasaCotiza")]
		public function get ListaTasaCotizacion():ArrayCollection{
			return this._listaTasaCotiza
		}
		
		public function setListaTasaCotizacion ( datos:ArrayCollection ):void{
			this._listaTasaCotiza = datos;				
			dispatchEvent( new Event( "listaTasaCotiza" ) );
		}
		public function ModeloTasaRealizacionGeneral(target:IEventDispatcher=null)
		{
			//TODO: implement function
			super(target);
		}
		
		//Metodo para los incidentes cerrados y abiertos
		[Bindable(event="listaIncidente")]
		public function get ListaIncidente():ArrayCollection{
			return this._listaIncidente
		}
		
		public function setListaIncidente ( datos:ArrayCollection ):void{
			this._listaIncidente = datos;				
			dispatchEvent( new Event( "listaIncidente" ) );
		}
		
		//Metodo para conseguir el promedio de la tasa de incidentes
		[Bindable(event="proemdioTasa")]
		public function get TasaPromedio():Number{
			return this._tasaPromedio
		}
		
		public function setTasaPromedio( datos:Number ):void{
			this._tasaPromedio = datos;				
			dispatchEvent( new Event( "proemdioTasa" ) );
		}
		
		public function fault_cotizaciones(objeto:Object):void{
			alertaSingleton.showReintentar("Fallo en: Tasa_Realizacion_Cotizaciones");
		}
	}
}