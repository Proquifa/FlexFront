package mx.com.proquifa.proquifanet.compras.vista.modelo
{
	import flash.display.DisplayObject;
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.EventoGenerico;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.InformacionVentana;
	
	public class ManejadorVentanas extends EventDispatcher	
	{
		private var diccionarioVentanas:Dictionary = new Dictionary();
		
		public function getVentana( infoVentana:InformacionVentana ):DisplayObject{
		   var ventana:DisplayObject = diccionarioVentanas[ infoVentana.idVentana ];   // existe ventana?
		   if( ventana == null ){
		      switch( infoVentana.idVentana ){
		      }
			   switch( infoVentana.idVentanaCerrar ){
		   		 case "cierrabusquedaProductos":
		         	/* var busqueda:BusquedaProductos = new BusquedaProductos();   // crear la instancia.
		         	busqueda.addEventListener( EventoGenerico.CERRAR_VENTANA_BUSQUEDAPRODUCTOS, cerrarVentana ); */			         	                     		            
		         break;		 
			   }  
		   }
		   return ventana;
		} 
		
		public function abrirVentana(event:EventoGenerico):void{
			var evento:EventoGenerico = new EventoGenerico( EventoGenerico.ABRIR_VENTANA_EN_PENDIENTES );
			evento.informacion = event.informacion;
			this.dispatchEvent( evento );
		}
		
		public function ManejadorVentanas()
		{
			//TODO: implement function
		}

	}
}