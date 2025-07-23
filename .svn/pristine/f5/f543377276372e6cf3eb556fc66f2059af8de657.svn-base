package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;

	public class EventoIncidenteTablero extends Event
	{
		public var valorAdicional:String="";
		public var idProveedor:int=0;
		public var mesInicio:Number=0;
		public var mesFin:Number=0;
		public var anio:String="";
		public var tipoPeriodo:int=0;
		public var periodo:String="";
		public var mes:int=0;
		public var codigo:String="";
		public var fabrica:String="";
		public var provee:String="";
		public var total:String="";
		public var cant:String="";
		public var cantidad:String="";
		public var monto:Number=0;
		public var numeroDeFila:Number=0;
		public var anioInt:int=0;
		public var tipo:String="";
		
		public static const OBTENER_DATOS_TOP_GRAFICAS:String = "cargaDatosTopGraficasTableroIncidente";
		
		public function EventoIncidenteTablero(type:String, bubbles:Boolean=true, cancelable:Boolean=false,valorAdicional:String = null,idProveedor:int = 0,mesInicio:Number = 0,
											   mesFin:Number = 0,anio:String = null,tipoPeriodo:int = 0,periodo:String = null,mes:int = 0,codigo:String = null,fabrica:String = null,
											   provee:String = null,total:String = null,cant:String = null,cantidad:String = null,monto:Number = 0,numeroDeFila:Number = 0,anioInt:int = 0,
											   tipo:String = null)
		{
			
			super(type, bubbles, cancelable);
			this.valorAdicional = valorAdicional;
			this.idProveedor = idProveedor;
			this.mesInicio = mesInicio;
			this.mesFin = mesFin;
			this.anio = anio;
			this.tipoPeriodo = tipoPeriodo;
			this.periodo = periodo;
			this.mes = mes;
			this.codigo = codigo;
			this.fabrica = fabrica;
			this.provee = provee;
			this.total = total;
			this.cant = cant;
			this.cantidad = cantidad;
			this.monto = monto;
			this.numeroDeFila = numeroDeFila;
			this.anioInt = anioInt;
			this.tipo = tipo;
		}
		public override function clone():Event
		{
			return new EventoIncidenteTablero( type, bubbles, cancelable,valorAdicional,idProveedor,mesInicio,mesFin,anio,tipoPeriodo,periodo,mes,codigo,fabrica,provee,total,cant,cantidad,monto,numeroDeFila,anioInt,tipo);
		}
	}
}