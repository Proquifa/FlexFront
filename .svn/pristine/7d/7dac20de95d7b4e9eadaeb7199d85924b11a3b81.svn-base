package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.clientes.generales
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Direccion;
	
	public class EventoCatClientes_Direcciones extends Event
	{
		
		public var idCliente:Number;
		public var tipoDeDireccion:String;
		public var editarDireccion:Boolean;
		public var editarHorario:Boolean;
		public var tiposHorarios:ArrayCollection;
		
		private var _pais:String;
		public var cp:String;
		public var indiceActual:int;
		
		public var direccion:Direccion = new Direccion();
		public var horarios:ArrayCollection = new ArrayCollection();
		
		public var currentSeleccion:*;
		
		//SERVICIO
		public static const SOLICITAR_HORARIOS_POR_DIRECCION:String = "solicitarHorariosPorDireccionEventoCatClientes_Direcciones";
		public static const SOLICITAR_DIRECCIONES_DEL_CLIENTE:String = "solicitarDireccionesQuePertenecenAlClienteEventoCatClientes_Direcciones";
		public static const SOLICITAR_INFORMACION_PARA_DIRECCION_POR_MEDIO_PAIS_CP:String = "solicitarInformacionDeLaDireccionPorMedioDeCpYPaisEventoCatClientes_Direcciones";
		public static const ACTUALIZAR_DIRECCION_SELECCIONADA:String = "actualizarDireccionSeleccionadaEventoCatClientes_Direcciones";
		public static const ACTUALIZAR_HORARIO_DIRECCION:String = "actualizarHorariosDireccionEventoCatClienteS_Direcciones";
		public static const OBTENER_DIRECCION_X_PAIS:String = "obtenerDireccionPorPaisEventoCatClientes_Direcciones";
		public static const INSERTAR_NUEVA_DIRECCION_CLIENTE:String = "registrarNuevaDireccionCatCliente";
		public static const ENVIAR_HORARIO_CLIENTE:String = "enviarHorarioCliente";
		public static const ELIMINAR_DIRECCION_SELECCIONADA:String = "eliminarDireccionSeleccionada";
		
		//VISTA
		public static const ENVIAR_CELDAS_SELECCIONADAS:String = "enviarLasCeldasSeleccionadasParaMostrarLaBarraSeleccionEventoCatClientes_Direcciones";
		public static const ABRIR_POP_UP_HORARIOS:String = "mandarAbrirPopUPDeHorarios";
		public static const ABRIR_POP_PARA_EDITAR_DIRECCION = "abrirPopUpParaEditarDireccion";
		
		
		
		public function EventoCatClientes_Direcciones(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable);
		}
		
		override public function clone():Event
		{
			return new EventoCatClientes_Direcciones(type,bubbles,cancelable);
		}
		
		public function get pais():String
		{
			return _pais;
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