package vista.evento
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cliente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Direccion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.expofarma.RegistroExpoFarma;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.requisicion.PRequisicion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.requisicion.Requisicion;
	
	public class EventoEVReqMovil extends Event
	{
		public var ubicacion:String;
		public var idEmpleado:int;
		public var idCliente:int;
		public var idContacto:int;
		public var nuevoContacto:Contacto;
		public var direccion:Direccion;
		public var tipo:String;
		public var cliente:Cliente;
		public var partidaReq:PRequisicion;
		public var requisicion:Requisicion;
		public var listaPRequisicion:ArrayCollection;
		
		public var idRegistroExpoFarma:Number;
		public var respuesta1:String;
		public var otros1:String;
		public var otros2:String;
		public var respuesta2:Boolean;
		public var respuesta3:Boolean;
		public var respuesta4:Boolean;
		public var respuesta5:Boolean;
		public var respuesta6:Boolean;
		public var respuesta7:Boolean;
		public var respuesta8:Boolean;
		public var respuesta9:Boolean;
		public var respuesta10:Boolean;
		public var time:String;
		
		public var registroExpo:RegistroExpoFarma;
		public var objetoListaFarma:Object;
		
		public var publicaciones:String;
		public var otrosPublicaciones:String;
		public var iso:Boolean;
		public var siguiente:Boolean;
		
		public var cero:int = 0;
		
		public static const CARAGAR_CONTACTOS:String = "cargarContactosEventoEVReqMovil";
		public static const GUARDA_CLIENTE_NUEVO:String = "guardaClienteNuevoEventoEVReqMovil";
		public static const GUARDA_CONTACTO_NUEVO:String = "guardaContactoNuevoEventoEVReqMovil";
		public static const CARGAR_DIRECCIONES_CLIENTE:String = "cargarDireccionClienteEventoEVReqMovil";
		public static const EDITA_CONTACTO:String = "editaContactoEventoEVReqMovil";
		public static const GENERA_REQUISICION:String = "generaRequisicionEventoEVReqMovil";
		public static const CARGA_ESAC_ALEATORIAMENTE:String = "cargarEsacAleatoriamenteEventoEVReqMovil";
		
		public static const RECIBE_DATOS_CONTACTO_POUP:String = "recibeDatosContactoPopUpEventoEVReqMovil";
		public static const CANCELA_DATOS_CONTACTO_POUP:String = "cancelaDatosContactoPopUpEventoEVReqMovil";
		public static const CANCELA_DIRECCIONES_CONTACTO_POUP:String = "cancelaDireccionContactoPopUpEventoEVReqMovil";
		public static const ESCUCHA_CHECK_RUTAS:String = "escuchaCheckrutasEventoEVReqMovil";
		public static const RECIBE_DIRECCION_SELECCIONADA:String = "recibeDireccionSeleccionadaEventoEVReqMovil";
		public static const RECIBE_PARTIDA_REQUISICION:String = "recibePartidaRequisicionEventoEVReqMovil";
		public static const CANCELA_PARTIDA_REQUISICION:String = "cancelaPartidaRequisicionEventoEVReqMovil";
		public static const EDITA_PARTIDA_REQUISICION:String = "editaPartidaRequisicionEventoEVReqMovil";
		public static const MUESTRA_NUEVO_CLIENTE:String = "muestraNuevoClienteEventoEVReqMovil";
		public static const SELECCIONA_CONTACTO:String = "seleccionaContactoEventoEVReqMovil";
		public static const OBTENER_INFO_GRAFICOS_EXPOFARMA:String = "obtenerInfoGraficosExpofarmaEventoEVReqMovil";
		
		public static const LIMPIA_ID_CLIENTE:String = "limpiaIdClienteEventoEVReqMovil";
		public static const LIMPIA_ID_CONTACTO:String = "limpiaIdContactoEventoEVReqMovil";
		public static const CAMBIA_SOLICITUDES:String = "cambiaSolicitudesEventoEVReqMovil";
		
		public static const MUESTRA_VISTA:String = "muestraVistaEventoEVReqMovil";
		
		public static const REGISTRO_EXPO_FARMA:String = "registroExpoFarmaEventoEVGestionarVisitas";
		public static const GUARDA_EXPORFARMA:String = "guardaExpoFarmaEventoEVReqMovil";
		public static const AVISA_PREGUNTA_2_FARMA:String = "avisaPregunta2ExpoFarmaregistroExpo";
		public static const AVISA_PREGUNTA_CLINICA:String = "avisaPreguntaClinicaExpoFarmaregistroExpo";
		public static const GUARDA_EXPORFARMA_CLINICA:String = "guardaExpoFarmaClinicaEventoEVReqMovil";
		public static const AVISA_PREGUNTA_ALIMENTOS:String = "avisaPreguntaAlimentosExpoFarmaregistroExpo";
		public static const AVISA_PREGUNTA_ALIMENTOS2:String = "avisaPreguntaAlimentos2ExpoFarmaregistroExpo";
		public static const GUARDA_EXPORFARMA_ALIMENTOS:String = "guardaExpoFarmaAlimentosEventoEVReqMovil";
		public static const LIMPIA_BUSQUEDA_CONTACTO_DESDE_CUESTIONARIO:String = "limpiaBusquedaDesdeCuestionarioEventoEVReqMovil";
		public static const OBTENER_GANADOR_EXPOFARMA:String = "obtenerGanadorExpoFarmaEventoEVReqMovil";
		
		public function EventoEVReqMovil(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoEVReqMovil( type, bubbles, cancelable );
		}
	}
}