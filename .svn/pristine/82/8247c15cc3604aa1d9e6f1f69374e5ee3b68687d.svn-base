package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.notaCredito
{
	import flash.events.Event;
	
	public class EventoConsultaNotaDeCredito extends Event
	{
		
		public var indiceVista:Number;
		public var finicio:Date;
		public var ffin:Date;
		public var cliente:int;
		public var facturo:String;
		public var estado:String;
		public var notaCredito:int;
		public var cpedido:String;
		public var tipo:String;
		
		public var idUsuarioLogueado:Number;
		public var idCobrador:Number;
		public var cobrador:String;
		
		
		public static const CAMBIA_INDICE:String = "cambiaIndiceEventoConsultaNotaDeCredito";
		public static const BUSCAR_NOTA_CREDITO:String = "buscarNotaDeCreditoConsultaNotaDeCredito";
		public static const BUSCAR_RAPIDO_NOTA_CREDITO:String = "busquedaRapidaNotaDeCreditoConsultaNotaDeCredito";
		public static const SET_BOTONERA_NOTA_CREDITO:String = "setBotoneraNotaDeCredito";
		public static const SET_INDICE_GRAFICA:String = "setIndiceGraficaConsultaNotaDeCredito";
		public static const GET_CAMBIOS_GRID:String = "getCambiosGridConsultaNotaDeCredito";
		public static const GENERAR_GRAFICAS_NOTA_CREDITO:String = "generarGraficasConsultaNotaDeCredito"
		
		public function EventoConsultaNotaDeCredito(type:String, bubbles:Boolean = true, cancelable:Boolean = false,indiceVista:Number = 0,finicio:Date = null,ffin:Date = null,
													cliente:int = 0,facturo:String = null,estado:String = null,notaCredito:int = 0,cpedido:String = null,tipo:String = null,
													idUsuarioLogueado:Number = 0,idCobrador:Number = 0, cobrador:String = null)
		{
			super(type,bubbles,cancelable)
			this.indiceVista = indiceVista;
			this.finicio = finicio;
			this.ffin = ffin;
			this.cliente = cliente;
			this.facturo = facturo;
			this.estado = estado;
			this.notaCredito = notaCredito;
			this.cpedido = cpedido;
			this.tipo = tipo;
			this.idUsuarioLogueado = idUsuarioLogueado;
			this.idCobrador = idCobrador;
			this.cobrador = cobrador;
		}
		
		public function existTypeInThisEvent(type:String):Boolean
		{
			return hasOwnProperty(type);
		}
		
		public override function clone():Event{
			return new EventoConsultaNotaDeCredito(type,bubbles,cancelable,indiceVista,finicio,ffin,cliente,facturo,estado,notaCredito,cpedido,tipo,idUsuarioLogueado,idCobrador,cobrador);
		}	
	}
}