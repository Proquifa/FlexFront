package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.clientes.estadisticas
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.clientes.estadisticas.EventoCatClientes_EstadisticasGenerales;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloCatClientesEstadisticasGenerales extends EventDispatcher
	{
		public function ModeloCatClientesEstadisticasGenerales(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		
		private var _linealMixProductos:ArrayCollection;
		public function setRecibeInfoLinealMixProductos( $datos:ArrayCollection):void
		{
			if($datos == null)
				_linealMixProductos = new ArrayCollection();
			else
				_linealMixProductos = $datos;
			
			dispatchEvent( new Event("regresaLinealMixProductosModeloCatClientesEstadisticasGenerales") );
			
			if(_linealMixProductos!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealMixProductosModeloCatClientesEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaLinealMixProductosModeloCatClientesEstadisticasGenerales")]
		public function get enviaInfoMixProductos():ArrayCollection
		{
			return _linealMixProductos;
		}
		
		private var _linealMixMarcas:ArrayCollection;
		public function setRecibeInfoMixMarcas( $datos:ArrayCollection):void
		{
			if($datos == null)
				_linealMixMarcas = new ArrayCollection();
			else
				_linealMixMarcas = $datos;
			
			dispatchEvent( new Event("regresaLinealMixMarcasModeloCatClientesEstadisticasGenerales") );
			
			if(_linealMixMarcas!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealMixMarcasModeloCatClientesEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaLinealMixMarcasModeloCatClientesEstadisticasGenerales")]
		public function get enviaInfoLinealMixMarcas():ArrayCollection
		{
			return _linealMixMarcas;
		}
		
		//		COTIZADO PEDIDO
		private var _linealCotPedido:ArrayCollection;
		public function setRecibeInfoLinealCotPedido( $datos:ArrayCollection):void
		{
			if($datos == null)
				_linealCotPedido = new ArrayCollection();
			else
				_linealCotPedido = $datos;
			dispatchEvent( new Event("regresaLinealCotPedidoModeloCatClienteEstadisticasGenerales") );
			if(_linealCotPedido!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealCotPedidoModeloCatClienteEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaLinealCotPedidoModeloCatClienteEstadisticasGenerales")]
		public function get enviaInfoLinealCotPedido():ArrayCollection
		{
			return _linealCotPedido;
		}
		
		//		COT DIF PEDIDO
		private var _linealCotDifPed:ArrayCollection;
		public function setRecibeInfoLinealCotDifPed( $datos:ArrayCollection):void
		{
			if($datos == null)
				_linealCotDifPed = new ArrayCollection();
			else
				_linealCotDifPed = $datos;
			
			dispatchEvent( new Event("regresaLinealCotDifPedModeloCatClienteEstadisticasGenerales") );
			
			if(_linealCotDifPed!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealCotDifPedModeloCatClienteEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaLinealCotDifPedModeloCatClienteEstadisticasGenerales")]
		public function get enviaInfoLinealCotDifPed():ArrayCollection
		{
			return _linealCotDifPed;
		}
		
		
		//		SEGUIMIENTOS
		private var _linealSeguimientos:ArrayCollection;
		public function setRecibeInfoLinealSeguimientos( $datos:ArrayCollection ):void
		{
			if($datos == null)
				_linealSeguimientos = new ArrayCollection();
			else
				_linealSeguimientos = $datos;
		
			dispatchEvent( new Event("regresaLinealSeguimientosModeloCatClientesEstadisticasGenerales") );
			
			if(_linealSeguimientos!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealSeguimientosModeloCatClientesEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaLinealSeguimientosModeloCatClientesEstadisticasGenerales")]
		public function get enviaInfoLinealSeguimientos():ArrayCollection
		{
			return _linealSeguimientos;
		}
		
		
		
		//		CANCELACION COTIZACION
		private var _linealCancelacionCot:ArrayCollection;
		public function setRecibeInfoLinealCancelacionCot( $datos:ArrayCollection ):void
		{
			if($datos == null)
				_linealCancelacionCot = new ArrayCollection();
			else
				_linealCancelacionCot = $datos;
			
			dispatchEvent( new Event("regresaLinealCancelacionCotModeloCatClientesEstadisiticasGenerales") );
			
			if(_linealCancelacionCot!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealCancelacionCotModeloCatClientesEstadisiticasGenerales");
				}
			}
		}
		[Bindable(event="regresaLinealCancelacionCotModeloCatClientesEstadisiticasGenerales")]
		public function get enviaInfoLinealCancelacionCot():ArrayCollection
		{
			return _linealCancelacionCot;
		}
		
		
		//		PEDIDO
		private var _linealPedidos:ArrayCollection;
		public function setRecibeInfoLinealPedidos( $datos:ArrayCollection ):void
		{
			if($datos == null)
				_linealPedidos = new ArrayCollection();
			else
				_linealPedidos = $datos;
			dispatchEvent( new Event("regresaLinealPedidosModeloCatClientesEstadisticasGenerales") );
			
			if(_linealPedidos!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealPedidosModeloCatClientesEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaLinealPedidosModeloCatClientesEstadisticasGenerales")]
		public function get enviaInfolistaLinealPedidos():ArrayCollection
		{
			return _linealPedidos;
		}
		
		//		ENTREGAS
		private var _linealEntregas:ArrayCollection;
		public function setRecibeInfoLinealEntregas( $datos:ArrayCollection ):void
		{
			if($datos == null)
				_linealEntregas = new ArrayCollection();
			else
				_linealEntregas = $datos;
			dispatchEvent( new Event("regresaLinealEntregasModeloCatClientesEstadisticasGenerales"));
			
			if(_linealEntregas!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealEntregasModeloCatClientesEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaLinealEntregasModeloCatClientesEstadisticasGenerales")]
		public function get enviaInfolistaLinealEntregas():ArrayCollection
		{
			return _linealEntregas;
		}
		
		//		VENTAS PERIODO
		private var _linealVentasPeriodo:ArrayCollection;
		public function setRecibeInfoLinealVentasPeriodo( $datos:ArrayCollection, $evento:EventoCatClientes_EstadisticasGenerales = null):void{
			if($datos == null){
				$datos = new ArrayCollection();
			}
			for(var d:int = 0; d<$datos.length ; d++){
				($datos[d] as ResumenConsulta).periodo = $evento.params.anio;	
			}
			_linealVentasPeriodo = $datos;
			dispatchEvent( new Event("regresaLinealVentasPeriodoModeloCatClientesEstadisticasGenerales") );
			
			if(_linealVentasPeriodo!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealVentasPeriodoModeloCatClientesEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaLinealVentasPeriodoModeloCatClientesEstadisticasGenerales")]
		public function get enviaInfoLinealVentasPeriodo():ArrayCollection{
			
			return _linealVentasPeriodo;
		}
		
		
		//		COMPORTAMIENTO PAGOS
		private var _linealComportamientoPagos:ArrayCollection;
		public function setRecibeInfoLinealComportamientoPagos( $datos:ArrayCollection ):void
		{
			if($datos == null)
				_linealComportamientoPagos = new ArrayCollection();
			else
				_linealComportamientoPagos = $datos;
			
			dispatchEvent( new Event("regresaLinealComportamientoPagosModeloCatClientesEstadisticasGenerales") );
			
			if(_linealComportamientoPagos!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealComportamientoPagosModeloCatClientesEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaLinealComportamientoPagosModeloCatClientesEstadisticasGenerales")]
		public function get enviaInfoLinealComportamientoPagos():ArrayCollection
		{
			return _linealComportamientoPagos;
		}
		
		
		
		
		
		private var _montos:ArrayCollection;
		public function setRecibeMontoObjetivo( $datos:ArrayCollection ):void
		{
			if($datos == null)
				_montos = new ArrayCollection();
			else
				_montos = $datos;
			
			dispatchEvent( new Event("regresaMontoObjetivoModeloCatClientesEstadisticasGenerales") );
			
			if(_montos!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaMontoObjetivoModeloCatClientesEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaMontoObjetivoModeloCatClientesEstadisticasGenerales")]
		public function get enviaMontoObjetivo():ArrayCollection
		{
			return _montos;
		}
		
		
		private var _montosFundamentales:ArrayCollection;
		public function setRecibeMontoObjetivoFundamental( $datos:ArrayCollection ):void
		{
			if($datos == null)
				_montosFundamentales = new ArrayCollection();
			else
				_montosFundamentales = $datos;
			
			dispatchEvent( new Event("regresaMontoObjetivoFundamentalModeloCatClientesEstadisticasGenerales") );
			
			if(_montosFundamentales!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaMontoObjetivoFundamentalModeloCatClientesEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaMontoObjetivoFundamentalModeloCatClientesEstadisticasGenerales")]
		public function get enviaMontoObjetivoFundamental():ArrayCollection
		{
			return _montosFundamentales;
		}
		
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				try
				{
					if(new EventoCatClientes_EstadisticasGenerales(EventoCatClientes_EstadisticasGenerales[$tiposEventos[i]])== null)
					{
						return false;
					}
					else
					{
						return true;
					}
				}
				catch(error:Error) 
				{
					trace(error + "El Tipo de Evento: \""+$tiposEventos[i] + "\" No se encuentra en: EventoCatClientesEstadisticasGenerales // NO SE COLOCARÁ LA PANTALLA DE BLOQUEO")
					return false;
				}
			}
			return false;
		}
		
		private var currentEnEspera:Boolean;
		private var actualizarEspera:Object = new Object;
		private var numServices:uint;
		private var numServicioCompletos:uint;
		private var serviciosCompletosDifKey:Object = new Object;
		private var  nextService:Boolean=false;
		private var limpiar:Boolean=true;
		public function setControlDeBloqueoPantalla(mensaje:String,$tiposEvento:Array,$idCurrentBottons:Array,$errorOrWhoFinish:Object):void
		{
			if(mensaje == "iniciarEspera")
			{
				_servicesConsultados = new Object();
				if(!currentEnEspera)
				{
					if(Boolean(verificarSiElExistenLosTiposDeEvento($tiposEvento)))
					{
						numServicioCompletos=0;
						numServices = 0;
						actualizarEspera = new Object();
						serviciosCompletosDifKey = new Object();
						
						if($tiposEvento.length >0 && $tiposEvento[0] == "SOLICITAR_LA_CONSULTA_LINEAL")
						{
							$tiposEvento.shift();
						}
						if($tiposEvento.length>0)
						{
							numServices += $tiposEvento.length;
						}
						currentEnEspera = true;
						actualizarEspera.isBusy = true;
						actualizarEspera["idCurrentButtons"] = $idCurrentBottons;
						alertaSingleton.show(catalogoAlertas.INICIAR_ESPERA,"","","","","","",null,true);
					}
				}
				else
				{
					numServices += $tiposEvento.length;
				}
			}
			else if (mensaje =="terminaEspera")
			{
				
				if (numServices>10)
					nextService = true;
				
				if(!serviciosCompletosDifKey.hasOwnProperty($errorOrWhoFinish as String))
				{
					numServicioCompletos++;
					serviciosCompletosDifKey[($errorOrWhoFinish as String)] = ($errorOrWhoFinish as String);
				}
				
				if(numServicioCompletos == numServices)
				{
					alertaSingleton.remove(true);
					actualizarEspera.isBusy=false;
					currentEnEspera = false;
					numServices = 0;
					dispatchEvent( new Event("actualizaEsperaYBloqueoModeloCatClientesEstadisticasGenerales") );
				}
			}else if(mensaje =="error"){
				alertaSingleton.remove(true);
				currentEnEspera = false;
				alertaSingleton.show( $errorOrWhoFinish.toString(), catalogoAlertas.TIT_ERR);
				actualizarEspera.isBusy=false;
			}
			
		}
		[Bindable(event="actualizaEsperaYBloqueoModeloCatClientesEstadisticasGenerales")]
		public function get actualizarEstadoDeEsperaYBloqueo():Object
		{
			return actualizarEspera;
		}
		
		private var _servicesConsultados:Object;
		public function setNumeroServiciosConsultados($tipo:String):void
		{
			if(!_servicesConsultados.hasOwnProperty($tipo)){
				_servicesConsultados[$tipo] = $tipo;
				numServices ++;
			}
		}
		
		[Bindable(event="limpiarGraficasModeloCatClientesEstadisticasGenerales")]
		public function get limpiarGraficas():Boolean
		{
			return limpiar;
		}
		
		public function setLimpiarGraficas():void
		{
			dispatchEvent(new Event("limpiarGraficasModeloCatClientesEstadisticasGenerales"));
		}
	}
}