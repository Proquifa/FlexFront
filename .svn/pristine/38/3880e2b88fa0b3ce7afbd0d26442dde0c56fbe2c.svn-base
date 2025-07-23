package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.comerciales
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Fabricante;
	
	public class EventoCatProMArcas extends Event
	{
		public var idProveedor:Number;
		public var idFabricante:Number;
		public var estado:Boolean;
		public var fabricante:Fabricante;
		public var tipoDeOperacion:String;
		
		public static const OBTENER_MARCAS:String = "obtenerMarcasEventoCatProMArcas";
		public static const OBTENER_MARCAS_ASOCIADAS:String = "obtenerMarcasAsociadasEventoCatProMArcas";
		public static const EDITA_ASOCIACION_MARCA:String = "editaAsociacionMarcaEventoCatProMArcas";
		public static const AGREGAR_NUEVA_MARCA:String = "agregarNuevaMarcaEventoCatProMArcas";
		public static const EDITAR_MARCA:String = "editarMarcaEventoCatProMArcas";
		
		public static const EDITA_ASOCIACION_MARCA_ENVISTA:String = "editaAsociacionMarcaEnVistaEventoCatProMArcas";
		public static const EDITA_MARCA_VISTA:String = "editaMarcaEnVistaEventoCatProMArcas";
		
		public function EventoCatProMArcas(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoCatProMArcas(type,bubbles,cancelable);
		}
	}
}