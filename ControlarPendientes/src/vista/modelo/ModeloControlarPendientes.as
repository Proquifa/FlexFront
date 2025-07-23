package vista.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.ObtenerVisitas;
	
	public class ModeloControlarPendientes extends EventDispatcher
	{
		public function ModeloControlarPendientes(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		private var dummy:ObtenerVisitas;
		
		private var lstPendientes: ArrayCollection;
		public function recibePendientes(result:ArrayCollection):void{
			lstPendientes=result;
			dispatchEvent(new Event('enviarResultadoPendientesModeloControlarPendientes'))
		}
		
		[Bindable (event="enviarResultadoPendientesModeloControlarPendientes")]
		public function get enviarPendientes():ArrayCollection{
			return lstPendientes;
		}

		private var lstAcciones: ArrayCollection;
		public function recibeAcciones(result:ArrayCollection):void{
			lstAcciones=result;
			dispatchEvent(new Event('enviarResultadoAccionesModeloControlarPendientes'))
		}
		
		[Bindable (event="enviarResultadoAccionesModeloControlarPendientes")]
		public function get enviarAcciones():ArrayCollection{
			return lstAcciones;
		}

		private var lstCotizas: ArrayCollection;
		public function recibeCotizas(result:ArrayCollection):void{
			lstCotizas=result;
			dispatchEvent(new Event('enviarResultadoCotizasModeloControlarPendientes'))
		}
		
		[Bindable (event="enviarResultadoCotizasModeloControlarPendientes")]
		public function get enviarCotizas():ArrayCollection{
			return lstCotizas;
		}

		private var lstPedidos: ArrayCollection;
		public function recibePedidos(result:ArrayCollection):void{
			lstPedidos=result;
			dispatchEvent(new Event('enviarResultadoPedidosModeloControlarPendientes'))
		}
		
		[Bindable (event="enviarResultadoPedidosModeloControlarPendientes")]
		public function get enviarPedidos():ArrayCollection{
			return lstPedidos;
		}

		private var lstVisitas: ArrayCollection;
		public function recibeVisitas(result:ArrayCollection):void{
			dummy = new ObtenerVisitas;
			lstVisitas=result;
			dispatchEvent(new Event('enviarResultadoVisitasModeloControlarPendientes'))
		}
		
		[Bindable (event="enviarResultadoVisitasModeloControlarPendientes")]
		public function get enviarVisitas():ArrayCollection{
			return lstVisitas;
		}

		private var insertCorrecto: Boolean;
		public function recibeRespuestaInsercion(result:Boolean):void{
			insertCorrecto=result;
			dispatchEvent(new Event('enviarResultadoInsercionCorrectaModeloControlarPendientes'))
		}
		
		[Bindable (event="enviarResultadoInsercionCorrectaModeloControlarPendientes")]
		public function get enviarRespuestaInsercion():Boolean{
			return insertCorrecto;
		}

		private var insertCorrectoAcciones: Boolean;
		public function recibeRespuestaInsercionAcciones(result:Boolean):void{
			insertCorrectoAcciones=result;
			dispatchEvent(new Event('enviarResultadoInsercionCorrectaAccionesModeloControlarPendientes'))
		}
		
		[Bindable (event="enviarResultadoInsercionCorrectaAccionesModeloControlarPendientes")]
		public function get enviarRespuestaInsercionAcciones():Boolean{
			return insertCorrectoAcciones;
		}
		
		
		public function error(mensaje:Object):void{
			trace(mensaje.toString());
		}
	}
}