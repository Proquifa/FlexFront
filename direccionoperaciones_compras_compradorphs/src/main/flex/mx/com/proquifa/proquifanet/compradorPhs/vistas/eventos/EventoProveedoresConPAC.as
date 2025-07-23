package mx.com.proquifa.proquifanet.compradorPhs.vistas.eventos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PartidaConfirmacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.RequisicionPhs;
	
	public class EventoProveedoresConPAC extends Event
	{
		public var medio:String;
		public var listaPartidas:ArrayCollection;
		public var rechazado:Boolean;		
		public var tipo:String;		
		public var requisicion:RequisicionPhs;
		public var proveedor:int		
		public var partidaAModificar:PartidaConfirmacion;
		public var idUsuario:int;
		public var modificaMedio:Boolean;
		public var status:Boolean;
		//variables q se regresan en el evento para el stack Precio
		public var tipoMoneda:String;
		public var costoWeb:Number
		public var costoBaseConfirmado:Number;
		public var costosAdicionales:ArrayCollection;
		public static const CONSULTAR_PAC_DE_PROVEEDOR:String = "consultarPacDeProveedorEventoProveedoresConPAC";
		public static const GENERA_NUEVA_REQUISICION:String = "generaNuevaRequisicionEventoProveedoresConPAC";
		public static const CONSULTA_REQUISICIONES_POR_CONFIRMAR:String = "consultaRequisicionesPorConfirmarEventoProveedoresConPAC";
		public static const ACTUALIZA_MEDIO_ENVIO_REQUISICION:String = "acyualizaMedioEnvioRequisicionEventoProveedoresConPAC";
		public static const	REGRESA_DATOS_STACK:String = "regresaDatosStackEventoProveedoresConPAC";
		public static const REGRESA_DATOS_STACK_PRECIO:String = "regresaDatosStackPrecioEventoProveedoresConPAC";
		public static const ACTUALIZA_REQUISICION:String = "actualizaRequisicionEventoProveedoresConPAC";
		public static const CAMBIA_ESTATUS_PARTIDA:String = "cambiaEstatusPartidaEventoProveedoresConPAC";
		public static const ENVIA_PARTIDAS_REQUISICION:String = "enviaPartidasEventoProveedoresConPAC";
		public static const ELIMINA_ENVIADOS:String = "eliminaEnviadosEventoProveedoresConPAC";
		public static const RECTIFICA_PENDIENTES_EXISTENTES:String = "rectificaPendientesExistentesEventoProveedoresConPAC";
		public function EventoProveedoresConPAC(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoGeneralCompradorPhs( type, bubbles, cancelable );
		}
	}
}