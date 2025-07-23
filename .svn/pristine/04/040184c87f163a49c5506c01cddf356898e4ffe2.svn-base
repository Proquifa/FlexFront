package mx.com.proquifa.proquifanet.rsl.vista.eventos.evento
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cliente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Direccion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.expofarma.RegistroExpoFarma;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.requisicion.PRequisicion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.requisicion.Requisicion;

	public class EventoEventoProquifa extends Event
	{
		
		public var idRegistro:int;
		public var origen:String;
		public var selectedIndex:int;
		
		public var participante:ArrayCollection;
		
		public var registrar:Boolean;
		
		public var identificador:String;
		public var cadena:String;
		public var boton:String;
		
		public var dataField:String;
		public var search:String;
		
		public var irRegistroCliente:Boolean;
		
		/*ExpoFarma2014*/
		public var direccion:Direccion;
		public var idCliente:int;
		public var idEmpleado:int;
		public var cliente:Cliente;
		public var idContacto:int;
		
		public var registroExpoMed:RegistroExpoFarma;
		public var registroExpo:RegistroExpoFarma;
		
		public var requisicion:Requisicion;
		public var listaPRequisicion:ArrayCollection;
		
		public var partidaReq:PRequisicion;
		
		/*Cuestionario*/
		//public var idRegistro:Number;
		
		public var objetoListaFarma:Object;
		public var siguiente:Boolean;
		public var time:String;
		public var idRegistroExpoFarma:Number;
		public var ubicacion:String;
		public var nuevoContacto:Contacto;
		
		public var tipo:String;
		public var respuesta0:Boolean;
		public var respuesta1:String;
		public var otros1:String;
		public var otros2:String;
		public var publicaciones:String;
		public var otrosPublicaciones:String;
		public var iso:Boolean;
		public var respuesta2:Boolean;
		public var respuesta3:Boolean;
		public var respuesta4:Boolean;
		public var otros4:String;
		public var respuesta5:Boolean;
		public var otros5:String;
		public var respuesta6:Boolean;
		public var respuesta7:Boolean;
		public var tiempo:String;
		
		
		/*Servicio*/
		public static const OBTENER_PARTICIPANTES_REGISTRO_EVENTO:String = "obtenerParticipantesRegistroEventoEventoProquifa";
		public static const GUARDA_CAMBIOS_DATAGRID_EVENTO:String = 'guardarCambiosDataGridEventoEventoProquifa';
		public static const GUARDAR_A_REGISTRADO_EVENTO:String = 'guardarARegistradoEventoEventoProquifa';
		public static const ELIMINAR_A_PREREGISTRADO_EVENTO:String = 'eliminarAPreRegistradoEventoEventoProquifa';
		public static const OBTENER_GANADOR_EVENTO_PROQUIFA:String = 'obtenerGanadorEventoProquifaEventoProquifa';
		public static const OBTENER_LISTA_EVENTOS_PROQUIFA:String = 'obtenerListaEventosEventoProquifa';
		/*Vista*/
		public static const ENVIAR_BOTON_PULSADO_CONSULTA_EVENTO:String = 'enviarBotonPulsadoConsultaEventoEventoProquifa';
		public static const ENVIAR_BOTON_PULSADO_EDITAR_EVENTO:String = 'enviarBotonPulsadoEditarEventoEventoProquifa';
		public static const ENVIAR_BOTON_PULSADO_GUARDAR_EVENTO:String = 'enviarBotonPulsadoGuardarEventoEventoProquifa';
		
		public static const PULSO_CANCELAR_POPUP_EVENTO:String = 'pulsoCancelarEnPopUpEventoEventoProquifa';
		public static const PULSO_REGISTRAR_POPUP_EVENTO:String = 'pulsoRegistrarEnPopUpEventoEventoProquifa';
		public static const PULSO_ELIMINAR_POPUP_EVENTO:String = 'pulsoEliminarEnPopUpEventoEventoProquifa';
		
		public static const ESCUCHAR_PARA_POPUP_EVENTO:String = 'EscucharParaPopUpEventoEventoProquifa';
		public static const ESCUCHAR_ELIMINAR_PARA_POPUP_EVENTO:String = 'EscucharEliminarParaPopUpEventoEventoProquifa';
		
		public static const ENVIAR_CADENA_TEXTO_SEARCH_EVENTO:String = 'evniarCadenaTextoSearchEventoEventoProquifa';
		public static const CAMBIAR_VISATA_GRAFICA_EXPO_EVENTO:String = 'cambiarVistaGraficaExpoEvento';
		public static const EXPORTAR_GRID_EVENTO:String = 'exportarGridEventoEventoProquifa';
		
		public static const SIN_EFECTO_EVENTO:String = 'sinEfectoEventoProquifa';
		public static const CAMBIA_VISTA_REGISTRO_BUSQUEDA_CLIENTE:String = 'cambiaVistaRegistroBusquedaClieteEventoEventoProquifa';
		public static const LIMPIAR_TEXTO_BUSQUEDA_EXPO_EVENTO:String = 'limpiarTextoBusquedaExpoEventoEventoProquifa';
		
		/*PopUpExpoFarma*/
		
		/*EnVista*/
		public static const ESCUCHA_CHECK_RUTAS:String = "escuchaCheckrutasEventoEventoProquifa";
		public static const CANCELA_DIRECCIONES_CONTACTO_POUP:String = "cancelaDireccionContactoPopUpEventoEventoProquifa";
		public static const RECIBE_DIRECCION_SELECCIONADA:String = "recibeDireccionSeleccionadaEventoEventoProquifa";
		public static const CANCELA_DATOS_CONTACTO_POUP:String = "cancelaDatosContactoPopUpEventoEventoProquifa";
		public static const CIERRA_POPUP_CUESTIONARIO_EXPO_FARMA:String = "cierraPopUpCuestionarioExpoFarmaEventoEventoProquifa";
		public static const LIMPIA_BUSQUEDA_CONTACTO_DESDE_CUESTIONARIO:String = "limpiaBusquedaDesdeCuestionarioEventoEventoProquifa";
		public static const MUESTRA_NUEVO_CLIENTE:String = "muestraNuevoClienteEventoEventoProquifa";
		public static const RECIBE_DATOS_CONTACTO_POUP:String = "recibeDatosContactoPopUpEventoEventoProquifa";
		public static const SELECCIONA_CONTACTO:String = "seleccionaContactoEventoEventoProquifa";
		public static const MUESTRA_VISTA:String = "muestraVistaEventoEventoProquifa";
		public static const CANCELA_PARTIDA_REQUISICION:String = "cancelaPartidaRequisicionEventoEventoProquifa";
		public static const RECIBE_PARTIDA_REQUISICION:String = "recibePartidaRequisicionEventoEventoProquifa";
		public static const EDITA_PARTIDA_REQUISICION:String = "editaPartidaRequisicionEventoEventoProquifa";
		/*MapaEVReqMovil*/
		public static const CARGAR_DIRECCIONES_CLIENTE:String = "cargarDireccionClienteEventoEventoProquifa";
		public static const GUARDA_CONTACTO_NUEVO:String = "guardaContactoNuevoEventoEventoProquifa";
		public static const EDITAR_CONTACTO_EXPO_MED:String = "editaContactoEventoEventoEventoProquifa";
		public static const EDITA_CONTACTO:String = "editaContactoEventoEventoProquifa";
		public static const CARGAR_TODOS_LOS_CONTACTOS_HABILITADOS:String = "cargarTodosLosContactosHabilitadosEventoEventoProquifa";
		public static const CARAGAR_CONTACTOS:String = "cargarContactosEventoEventoProquifa";
		public static const LIMPIA_ID_CONTACTO:String = "limpiaIdContactoEventoEventoProquifa";
		public static const OBTENER_INFO_GRAFICOS_EXPO_MED:String = "obtenerInfoGraficosExpofarmaEventoEventoProquifa";
		public static const MANDAR_CUESTIONARIO_EXPO_MED:String = "mandarCuetionarioExpoMedEventoEventoProquifa";
		public static const CARGA_ESAC_ALEATORIAMENTE:String = "cargarEsacAleatoriamenteEventoEventoProquifa";
		public static const GUARDA_CLIENTE_NUEVO:String = "guardaClienteNuevoEventoEventoProquifa";
		public static const LIMPIA_ID_CLIENTE:String = "limpiaIdClienteEventoEventoProquifa";
		public static const OBTENER_INFO_GRAFICOS_EXPOFARMA:String = "obtenerInfoGraficosExpofarmaEventoEventoProquifa";
		public static const REGISTRO_EXPO_FARMA:String = "registroExpoFarmaEventoEventoProquifa";
		public static const REGISTRO_EXPO_MED:String = "registrarEnExpoMedEventoEventoProquifa";
		public static const GENERA_REQUISICION:String = "generaRequisicionEventoEVReqMovil";
		
		
		/*Cuestionario ExpoFarma 2013*/
		/*EnVista*/
		public static const AVISA_PREGUNTA_2_FARMA:String = "avisaPregunta2ExpoFarmaregistroExpoEventoEventoProquifa";
		public static const AVISA_PREGUNTA_CLINICA:String = "avisaPreguntaClinicaExpoFarmaregistroExpoEventoEventoProquifa";
		public static const AVISA_PREGUNTA_ALIMENTOS:String = "avisaPreguntaAlimentosExpoFarmaregistroExpoEventoEventoProquifa";
		public static const AVISA_PREGUNTA_ALIMENTOS2:String = "avisaPreguntaAlimentos2ExpoFarmaregistroExpoEventoEventoProquifa";
		/*MapaEVReqMovil*/
		public static const GUARDA_EXPORFARMA_CLINICA:String = "guardaExpoFarmaClinicaEventoEventoProquifa";
		public static const GUARDA_EXPORFARMA_ALIMENTOS:String = "guardaExpoFarmaAlimentosEventoEventoProquifa";
		public static const GUARDA_EXPORFARMA:String = "guardaExpoFarmaEventoEventoProquifa";
		
		/**/
		
		public function EventoEventoProquifa(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoEventoProquifa(type,bubbles,cancelable);
		}
	}
}