package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.generales
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Direccion;

	public class EventoCatProDirecciones extends Event
	{
		public var idProveedor:Number;
		public var tipoDeDireccion:String;
		public var editarDireccion:Boolean;
		
		private var _pais:String;
		public var cp:String;
		
		public var direccion:Direccion = new Direccion();
		public var horarios:ArrayCollection = new ArrayCollection();
		
		public var currentSeleccion:*;
		
		//SERVICIO
		public static const SOLICITAR_HORARIOS_POR_DIRECCION:String = "solicitarHorariosPorDireccionEventoCatProveedores_Direcciones";
		public static const SOLICITAR_DIRECCIONES_DEL_CLIENTE:String = "solicitarDireccionesQuePertenecenAlClienteEventoCatProveedores_Direcciones";
		public static const SOLICITAR_INFORMACION_PARA_DIRECCION_POR_MEDIO_PAIS_CP:String = "solicitarInformacionDeLaDireccionPorMedioDeCpYPaisEventoCatProveedores_Direcciones";
		public static const ACTUALIZAR_DIRECCION_SELECCIONADA:String = "actualizarDireccionSeleccionadaEventoCatProveedores_Direcciones";
		public static const ACTUALIZAR_HORARIO_DIRECCION:String = "actualizarHorariosDireccionEventoCatProveedores_Direcciones";
		public static const OBTENER_DIRECCION_X_PAIS:String = "obtenerDireccionPorPaisEventoCatProveedores_Direcciones";
		
		//VISTA
		public static const ENVIAR_CELDAS_SELECCIONADAS:String = "enviarLasCeldasSeleccionadasParaMostrarLaBarraSeleccionEventoCatProveedores_Direcciones";
		public static const ABRIR_POPUP_DE_DIRECCIONES:String = "abririPopUPdeDirecciones";
		
		
		public function EventoCatProDirecciones(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable);
		}
		
		override public function clone():Event
		{
			return new EventoCatProDirecciones(type,bubbles,cancelable);
		}
		
		public function set pais(value:String):void
		{
			if(value)
			{
				_pais = value.toUpperCase();
			}
			else
			{
				_pais = value;
			}
		}
	}
}