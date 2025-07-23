package mx.com.proquifa.proquifanet.ventas.vista.eventos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.PartidaCotizacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.Pendiente;

	public class PartidasAInvestigarEvento extends Event
	{
		
		public static const  PARTIDAS_A_INVESTIGAR:String = "partidasAInvestigarPartidasAInvestigarEvento";
		public static const  TRAER_UNIDADES:String = "traerUnidadesPartidasAInvestigarEvento";
		public static const  TRAER_FABRICANTES:String = "traerFabricantesPartidasAInvestigarEvento";
		public static const  TRAER_TIPO_PRODUCTOS:String = "traerTipoProductosPartidasAInvestigarEvento";		
		public static const  TRAER_COTIZACIONES:String = "traerCotizacionesPartidasAInvestigarEvento";		
		public static const  TRAER_PARTIDAS_COTIZACIONES:String = "traerPartidasCotizacionPartidasAInvestigarEvento";
		public static const  TRAER_PRODUCTOS:String = "TraerCaracProductosPartidasAInvestigarEvento";
		public static const  GUARDAR_PRODUCTO_INVESTIGADO:String = "GuardarProductoInvestigadoPartidasAInvestigarEvento";
		
		public var idCliente:Number;
		public var idPCotiza:Number;
		
		public var usuario:String;
		public var tipo:String;
		public var folioCotizacion:String;	
		
		public var partidaCotizacion:PartidaCotizacion;
		public var pendiente:Pendiente;		
	
		public function PartidasAInvestigarEvento(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new PartidasAInvestigarEvento( type, bubbles, cancelable );
		}
		
	}
}