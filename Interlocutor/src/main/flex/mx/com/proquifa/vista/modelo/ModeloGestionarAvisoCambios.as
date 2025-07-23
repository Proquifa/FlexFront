package mx.com.proquifa.vista.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.RegistroConfirmacion;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.com.proquifa.vista.eventos.EventoInterlocutor;

	public class ModeloGestionarAvisoCambios extends EventDispatcher
	{
		private var dummy:GestionarAvisoDeCambios;
		private var dummy2:RegistroConfirmacion;
		private var avisoCambios:ArrayCollection;
		private var contadores:ContadoresGestionarAC;
		private var resultado:Boolean;
		private var resultadoEmail:Boolean;
		
		private var historial:ArrayCollection;
		
		public function setObtenerContadores(datos:ContadoresGestionarAC):void
		{
			contadores = datos;
			dispatchEvent(new Event("enviarContadoresModeloGestionarAvisoDeCambios"));
		}
		
		[Bindable(event="enviarContadoresModeloGestionarAvisoDeCambios")]
		public function get obtenerContadores():ContadoresGestionarAC
		{
			return contadores;
		}
		
		
		public function setObtenerAvisosDeCambios(datos:ArrayCollection):void
		{
			avisoCambios = datos;
			dispatchEvent(new Event("enviarAvisosDeCambiosModeloGestionarAvisoDeCambios"));
		}
		
		[Bindable(event="enviarAvisosDeCambiosModeloGestionarAvisoDeCambios")]
		public function get obtenerAvisosDeCambios():ArrayCollection
		{
			return avisoCambios;
		}

		
		public function setRestultado(datos:Boolean):void
		{
			resultado = datos;
			dispatchEvent(new Event("enviarResultadoModeloGestionarAvisoDeCambios"));
		}
		
		[Bindable(event="enviarResultadoModeloGestionarAvisoDeCambios")]
		public function get enviarResultado():Boolean
		{
			return resultado;
		}

		
		public function setRestultadoEmail(datos:Boolean):void
		{
			resultadoEmail = datos;
			dispatchEvent(new Event("enviarResultadoEmailModeloGestionarAvisoDeCambios"));
		}
		
		[Bindable(event="enviarResultadoEmailModeloGestionarAvisoDeCambios")]
		public function get enviarResultadoEmail():Boolean
		{
			return resultadoEmail;
		}

		
		public function setRestultadoHistorial(datos:ArrayCollection, evento:EventoInterlocutor):void
		{
			historial = datos;
			historial.addItemAt(evento, 0);
			dispatchEvent(new Event("enviarResultadoHistoriallModeloGestionarAvisoDeCambios"));
		}
		
		[Bindable(event="enviarResultadoHistoriallModeloGestionarAvisoDeCambios")]
		public function get enviarResultadoHistorial():ArrayCollection
		{
			return historial;
		}
		
		
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
		
		public function ModeloGestionarAvisoCambios(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}