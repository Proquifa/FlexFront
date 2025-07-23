package mx.com.proquifa.proquifanet.ventas.vista.modelo
{
	import flash.display.DisplayObject;
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.EventoGenerico;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.InformacionVentana;
	import mx.com.proquifa.proquifanet.ventas.vista.vistas.BusquedaProductos;
	import mx.com.proquifa.proquifanet.ventas.vista.vistas.PendienteBusuqedaProductos;
	
	public class ManejadorVentanas extends EventDispatcher
	{	
		private var diccionarioVentanas:Dictionary = new Dictionary();
	
		public function getVentana( infoVentana:InformacionVentana ):DisplayObject{
		   var ventana:DisplayObject = diccionarioVentanas[ infoVentana.idVentana ];   // existe ventana?
		   if( ventana == null ){
		      switch( infoVentana.idVentana ){
		         case "pendienteBusquedaProductos":
		         	var pendientes:PendienteBusuqedaProductos = new PendienteBusuqedaProductos();   // crear la instancia.
		         	pendientes.addEventListener( EventoGenerico.ABRIR_VENTANA_EN_PENDIENTES, abrirVentana );
		            ventana = pendientes;
		            diccionarioVentanas[ infoVentana.idVentana ] = ventana;   // se agrega la ventana al diccionario.		            
		         break;
		         case "busquedaProductos":
		         	var busqueda:BusquedaProductos = new BusquedaProductos();   // crear la instancia.
		         	busqueda.idCliente = infoVentana.idCliente;
		         	busqueda.nombreCliente = infoVentana.nombreCliente;
		         	busqueda.addEventListener( EventoGenerico.ABRIR_VENTANA_EN_PENDIENTES, abrirVentana );
		            ventana = busqueda;
		            diccionarioVentanas[ infoVentana.idVentana ] = ventana;   // se agrega la ventana al diccionario.		            
		         break;		        
		         //....   // cases para las otras ventanas.
		      }
			   switch( infoVentana.idVentanaCerrar ){
		   		 case "cierrabusquedaProductos":
		         	var busqueda:BusquedaProductos = new BusquedaProductos();   // crear la instancia.
		         	busqueda.addEventListener( EventoGenerico.CERRAR_VENTANA_BUSQUEDAPRODUCTOS, cerrarVentana );			         	                     		            
		         break;		 
			   }  
		   }
		   return ventana;
		} 

		public function ManejadorVentanas()
		{
		}
		
		public function abrirVentana(event:EventoGenerico):void{
			var evento:EventoGenerico = new EventoGenerico( EventoGenerico.ABRIR_VENTANA_EN_PENDIENTES );
			evento.informacion = event.informacion;
			this.dispatchEvent( evento );
		}
		public function cerrarVentana(event:EventoGenerico):void{
			var evento:EventoGenerico = new EventoGenerico( EventoGenerico.CERRAR_VENTANA_BUSQUEDAPRODUCTOS );
			evento.informacion = event.informacion;
			this.dispatchEvent( evento );
		}
	}
}