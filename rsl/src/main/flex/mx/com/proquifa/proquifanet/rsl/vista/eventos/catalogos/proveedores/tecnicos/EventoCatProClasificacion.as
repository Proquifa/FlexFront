package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.tecnicos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.ClasificacionConfiguracionPrecio;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.ConfiguracionPrecio;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Modificacion;
	
	public class EventoCatProClasificacion extends Event
	{
		
		
		public var posicionDeLaConfEnElCinturon:uint;
		public var idConfiguracionFamilia:uint;
		public var clasificacionConfiguracion:ClasificacionConfiguracionPrecio;
		public var configuracionPrecio:ConfiguracionPrecio;
		public var conceptos:ArrayCollection;
		
		//VARIABLES VISTA PARA MODIFICACION
		public var modif:Modificacion;
		public var idEmpleado:Number;
		public var metodo:String;
		public var servicio:String;
		public var ventana:String;
		
		
		//EVENTO PARA MODIFICACION
		public static const INSERTAR_MODIFICACION_CLASIFICACION_PROVEEDOR:String = "insertarModificacionClasificacionProveedorEventoCatProClasificacion";
		
		
		public static const  RECORRER_FAMILIA_EN_CINTURON_DE_ORION:String = "recorrerFamiliaEnCinturonEventoCatProClasificacion";
		public static const  SOLICITAR_CONCEPTOS_DE_CLASIFICACION_POR_FAMILIA:String = "solicitarConceptosDeClasificacionPorFamiliaEventoCatProClasificacion";
		public static const  SOLICITAR_MODIFICACION_EN_CONCEPTO_CLASIFICACION:String = "solicitarModificarConceptoClasificacionEventoCatProClasificacion";
		public static const  AGREGAR_ACTUALIZAR_CONCEPTOS_CLASIFICACION:String = "agregarActualizarConceptosClasificacionEventoCatProClasificacion";
		public static const  CAMBIA_NIVEL_EN_VISTA_CLASIFICACION:String = "cambiarNivelenVistaClasificacionEventoCatProClasificacion";
		
		
		public function EventoCatProClasificacion(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new EventoCatProClasificacion(type,bubbles,cancelable);
		}
	}
}