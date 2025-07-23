package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.clientes.carteras
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cartera;
	
	public class EventoCatClientes_Carteras extends Event
	{
		public var metodo:String;
		public var servicio:String;
		public var ventana:String;
		
		public var carterasSeleccionadas:ArrayCollection;
		public var carteraExtendida:Cartera;
		public var carteraSeleccionada:Cartera;
		public var universoNew:ArrayCollection;
		public var esacSeleccionado:String;
		public var cobradorSeleccionado:String;
		public var evSeleccionado:String;
		public var idCartera:Number;
		public var idEV:Number;
		public var idESAC:Number;
		public var idCobrador:Number;
		public var idNivel:Number;
		public var idResponsable:Number;
		
		public var cambioESAC:Boolean;
	    public var cambioCobrador:Boolean;
		public var cambioEv:Boolean;
		public var cambioColaboradores:Boolean;
		
		public var area:String;
		public var sinCartera:Boolean;
		public var indiceActual:Number;
		public var idCarteraAnterior:Number;
		public var idCliente:Number;
		
		
		//SERVICIO
		public static const SOLICITAR_LISTA_CARTERAS:String = "solicitarListaCarterasEventoCatClientes_Carteras";
		public static const SOLICITAR_LISTA_CLIENTES:String = "solicitarListaClientesEventoCatClientes_Carteras";
		public static const GUARDAR_CARTERA:String = "guardarCarteraEventoCatClientes_Carteras";
		public static const ELIMINAR_CARTERA:String = "eliminarCarteraEventoCatClientes_Carteras";
		public static const MODIFICAR_COLABORADORES_CARTERA:String = "modificarColaboradoresCarteraEventoCatClientes_Carteras";
		public static const OBTENER_INFORMACION_DE_LACARTERA:String = "obtenerLaInformacionDeLaCarteraSeleccionada";
		public static const CAMBIAR_CLIENTE_DE_CARTERA:String = "cambiarClienteSeleccionadoDeCartera";
		
		
		//VISTA
		public static const INSERTAR_MODIFICACIONES_CARTERAS:String = "insertarModificacionesCarterasEventoCatClientes_Carteras";
		public static const MANDAR_CARTERA_SELECCIONADA_EXPANDIDA:String = "mandarCarteraSeleccionadaExpandidaEventoCatClientes_Carteras";
		public static const ENVIAR_CARTERAS_BUSCADAS:String = "enviarCarterasBuscadasEventoCatClientes_Carteras";
		public static const ENVIAR_CARTERAS_BUSCADAS_POP:String = "enviarCarterasBuscadasEventoCatClientes_CarterasPop";
		public static const ENVIAR_NUEVO_UNIVERSO_BUSQUEDA:String = "enviarUniversoBusquedaEventoCatClientes_Carteras";
		public static const MODIFICACIONES_DE_COLABORADORES_CARTERAS:String = "modificacionesColaboradoresCarterasEventoCatClientes_Carteras";
		public static const MODIFICACIONES_PRINCIPAL_COLABORADOR:String = "modificacionesPrincipalColaboradorCarterasEventoCatClientes_Carteras";
		
		public static const MANDAR_INDICE_ACTUAL_LISTA_CARTERAS:String = "mandarIndiceActualListaCarteras";
		
		
		
		public function EventoCatClientes_Carteras(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable);
		}
		
		override public function clone():Event
		{
			return new EventoCatClientes_Carteras(type,bubbles,cancelable);
		}
		
	}
}