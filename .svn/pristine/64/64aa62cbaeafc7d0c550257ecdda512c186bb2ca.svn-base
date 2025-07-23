package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.estadisticas
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.estadisticas.EventoCatProEstadisticasGenerales;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.proveedor.BalanceDeCredito;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloCatProEstadisticasGenerales extends EventDispatcher
	{
		public function ModeloCatProEstadisticasGenerales(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		
		private var _productos:ArrayCollection;
		public function setRecibeInfoTopProductos( $datos:ArrayCollection):void
		{
			if($datos == null)
			{
				_productos = new ArrayCollection;
			}
			else
			{
				for(var d:int = 0; d<$datos.length ; d++)
				{
					($datos[d] as ResumenConsulta).totalCompras = ($datos[d] as ResumenConsulta).ocompras;
				}
				_productos = $datos;
			}
			
			dispatchEvent( new Event("regresaInformacionLinealTopProductosModeloCatProEstadisticasGenerales") );
			
			if(_productos!= null)
			{
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaInformacionLinealTopProductosModeloCatProEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaInformacionLinealTopProductosModeloCatProEstadisticasGenerales")]
		public function get enviaInfoTopProductos():ArrayCollection
		{
			return _productos;
		}
		
		private var _cliente:ArrayCollection;
		public function setRecibeInfoTopClientes( $datos:ArrayCollection):void
		{
			if($datos == null)
			{
				_cliente = new ArrayCollection;
			}
			else
			{
				for(var d:int = 0; d<$datos.length ; d++)
				{
					($datos[d] as ResumenConsulta).totalCompras = ($datos[d] as ResumenConsulta).ocompras;
				}
				_cliente = $datos;
			}
			
			dispatchEvent( new Event("regresaInfoTopClientesModeloCatProEstadisticasGenerales") );
			
			if(_cliente!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaInfoTopClientesModeloCatProEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaInfoTopClientesModeloCatProEstadisticasGenerales")]
		public function get enviaInfoTopClientes():ArrayCollection
		{
			return _cliente;
		}
		
		
		private var _ocRecibida:ArrayCollection;
		public function setRecibeInfoOCRecibida( $datos:ArrayCollection ):void
		{
			if($datos == null)
			{
				_ocRecibida = new ArrayCollection;
			}
			else
			{
				_ocRecibida = $datos;
			}
			
			dispatchEvent( new Event("regresaInfoOCRecibidaModeloCatProEstadisticasGenerales") );
			
			if(_ocRecibida!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaInfoOCRecibidaModeloCatProEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaInfoOCRecibidaModeloCatProEstadisticasGenerales")]
		public function get enviaInfoOCRecibida():ArrayCollection
		{
			return _ocRecibida;
		}
		
		private var _transito:ArrayCollection;
		public function setRecibeInfoComparativaTransito( $datos:ArrayCollection ):void
		{
			if($datos == null)
			{
				_transito = new ArrayCollection;
			}
			else
			{
				_transito = $datos;
			}
			
			dispatchEvent( new Event("regresaInformacionLinealTransitoModeloCatProEstadisticasGenerales") );
			
			if(_transito!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaInformacionLinealTransitoModeloCatProEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaInformacionLinealTransitoModeloCatProEstadisticasGenerales")]
		public function get enviaInfoInfoTransito():ArrayCollection
		{
			return _transito;
		}
		
		
		private var _rechazo:ArrayCollection;
		public function setRecibeInfoRechazo( $datos:ArrayCollection ):void
		{
			if($datos == null)
			{
				_rechazo = new ArrayCollection;
			}
			else
			{
				for(var d:int = 0; d<$datos.length ; d++)
				{
					($datos[d] as ResumenConsulta).totalCompras = ($datos[d] as ResumenConsulta).ocompras;
				}
				_rechazo = $datos;
			}
			
			dispatchEvent( new Event("regresaInfoRechazosModeloCatProEstadisticasGenerales") );
			if(_rechazo!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaInfoRechazosModeloCatProEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaInfoRechazosModeloCatProEstadisticasGenerales")]
		public function get enviaInfoRechazo():ArrayCollection
		{
			return _rechazo;
		}
		
		private var _aCambios:ArrayCollection;
		public function setRecibeInfoAvisoDeCambios( $datos:ArrayCollection):void
		{
			if($datos == null)
			{
				_aCambios = new ArrayCollection;
			}
			else
			{
				
				for(var d:int = 0; d<$datos.length ; d++)
				{
					($datos[d] as ResumenConsulta).totalCompras = ($datos[d] as ResumenConsulta).ocompras;
				}
				_aCambios = $datos;
			}
			
			dispatchEvent( new Event("regresaInfoAvisoDCambiosModeloCatProEstadisticasGenerales") );
			
			if(_aCambios!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaInfoAvisoDCambiosModeloCatProEstadisticasGenerales");
				}
			}
			
		}
		[Bindable(event="regresaInfoAvisoDCambiosModeloCatProEstadisticasGenerales")]
		public function get enviaInfoAvisoDeCambios():ArrayCollection
		{
			return _aCambios;
		}
		
		
		private var _compra:ArrayCollection;
		public function setRecibeInfoCompra( $datos:ArrayCollection):void
		{
			if($datos == null)
			{
				_compra = new ArrayCollection;
			}
			else
			{
				_compra = $datos;
			}
			dispatchEvent( new Event("regresaInfoComprasModeloCatProEstadisticasGenerales") );
			
			if(_compra!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaInfoComprasModeloCatProEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaInfoComprasModeloCatProEstadisticasGenerales")]
		public function get enviaInfoCompra():ArrayCollection
		{
			return _compra;
		}
		
		private var _pago:ArrayCollection;
		public function setRecibeInfoPagos( $datos:ArrayCollection ):void
		{
			if($datos == null)
			{
				_pago = new ArrayCollection;
			}
			else
			{
				_pago = $datos;
			}
			dispatchEvent( new Event("regresaInfoPagosModeloCatProEstadisticasGenerales") );
			
			if(_pago!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaInfoPagosModeloCatProEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaInfoPagosModeloCatProEstadisticasGenerales")]
		public function get enviaInfoPagos():ArrayCollection
		{
			return _pago;
		}
		
		
		private var _condicionPago:ArrayCollection;
		public function setRecibeInfoCondicionesDePago( $datos:ArrayCollection):void
		{
			if($datos == null)
			{
				_condicionPago = new ArrayCollection;
			}
			else
			{
				for( var d:int = 0; d < $datos.length; d++ )
				{
					$datos[d].numFila = d + 1;
				}
				_condicionPago = $datos;
			}
			dispatchEvent( new Event("regresaInfoCondicionesDePagoModeloCatProEstadisticasGenerales") );
			
			if(_condicionPago!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaInfoCondicionesDePagoModeloCatProEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaInfoCondicionesDePagoModeloCatProEstadisticasGenerales")]
		public function get enviaInfoCondicionDePago():ArrayCollection
		{
			return _condicionPago;
		}
		
		public var _lDCredito:BalanceDeCredito;
		private var _credito:ArrayCollection;
		private var _creditoDefault:ArrayCollection;
		public function setInfoLineaDeCredito( $datos:ArrayCollection ):void
		{
			if($datos == null)
			{
				_credito = new ArrayCollection;
				_creditoDefault = new ArrayCollection;
			}
			else
			{
				_credito = ObjectUtil.copy( $datos ) as ArrayCollection;
				_creditoDefault = ObjectUtil.copy( $datos ) as ArrayCollection;
				
				var i:int=0;
				for(var d:int = 0; d<_credito.length; d++)
				{
					(_credito[d] as BalanceDeCredito).numFila = d + 1;
					(_creditoDefault[d] as BalanceDeCredito).numFila = d + 1;
					
					if(((_credito[d] as BalanceDeCredito).etiqueta == "COMPRA_0" || (_credito[d] as BalanceDeCredito).etiqueta == "PAGO_0" ) && i == 0 )
					{
						(_credito[d] as BalanceDeCredito).monto += _montoAcumulado;
						i++;
					}
					
				}
			}
			
			dispatchEvent( new Event("regresaInfoDeCreditoModeloCatProEstadisticasGenerales") );
			
			if(_credito!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaInfoDeCreditoModeloCatProEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaInfoDeCreditoModeloCatProEstadisticasGenerales")]
		public function get enviaInfoLineaDeCredito():ArrayCollection
		{
			return _credito;
		}
		
		private var _montosObjetivoCompras:ArrayCollection;
		public function setRecibeMontosObjetivoParaCompras( $datos:ArrayCollection):void
		{
			if($datos == null)
				_montosObjetivoCompras = new ArrayCollection();
			else
				_montosObjetivoCompras = $datos;
			dispatchEvent( new Event("regresaMontosObjetivosModeloCatProEstadisticasGenerales") );
			
			if(_montosObjetivoCompras!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaMontosObjetivosModeloCatProEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaMontosObjetivosModeloCatProEstadisticasGenerales")]
		public function get regresaMontosObjetivosParaCompras():ArrayCollection
		{
			return _montosObjetivoCompras;
		}
		
		
		/**
		 * Funcion para obtener MONTO ACUMULADO
		 */
		private var _montoAcumulado:Number;
		public function setRecibeMontoAcumulado( $datos:ArrayCollection ):void{
			if ($datos != null) { 
				
				_montoAcumulado = $datos[0].monto;
			}
			
			dispatchEvent( new Event("regresaMontoAcumuladoModeloCatProEstadisticasGenerales") );
			if($datos!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaMontoAcumuladoModeloCatProEstadisticasGenerales");
				}
			}
		}
		[Bindable(event="regresaMontoAcumuladoModeloCatProEstadisticasGenerales")]
		public function get obtenerMontoAcumulado():Number
		{
			return _montoAcumulado;
		}
		
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				try
				{
					if(new EventoCatProEstadisticasGenerales(EventoCatProEstadisticasGenerales[$tiposEventos[i]])== null){
						return false;
					}else{
						return true;
					}
				}
				catch(error:Error) 
				{
					trace(error + "El Tipo de Evento: \""+$tiposEventos[i] + "\" No se encuentra en: EventoCatProEstadisticasGenerales// NO SE COLOCARÁ LA PANTALLA DE BLOQUEO")
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
		public function setControlDeBloqueoPantalla(mensaje:String,$tiposEvento:Array,$idCurrentBottons:Array,$errorOrWhoFinish:Object):void
		{
			if(mensaje == "iniciarEspera"){
				_servicesConsultados = new Object();
				if(!currentEnEspera){
					if(Boolean(verificarSiElExistenLosTiposDeEvento($tiposEvento))){
						numServicioCompletos=0;
						numServices = 0;
						actualizarEspera = new Object();
						serviciosCompletosDifKey = new Object();
						
						for (var i:int = 0; i < $tiposEvento.length; i++) 
						{
							if($tiposEvento[i] == "BUSCA_GRAFICAS_DE_TABLERO_PROVEEDOR"){
								$tiposEvento.shift();
								i--;
							}
						}
						
						if($tiposEvento.length>0){
							numServices += $tiposEvento.length;
						}
						currentEnEspera = true;
						actualizarEspera.isBusy = true;
						actualizarEspera["idCurrentButtons"] = $idCurrentBottons;
						alertaSingleton.show(catalogoAlertas.INICIAR_ESPERA,"","","","","","",null,true);
					}
				}else{
					numServices += $tiposEvento.length;
				}
			}else if (mensaje =="terminaEspera"){
				if(!serviciosCompletosDifKey.hasOwnProperty($errorOrWhoFinish as String)){
					numServicioCompletos++;
					serviciosCompletosDifKey[($errorOrWhoFinish as String)] = ($errorOrWhoFinish as String);
				}
				if(numServicioCompletos == numServices){
					alertaSingleton.remove(true);
					actualizarEspera.isBusy=false;
					currentEnEspera = false;
					numServices = 0;
				}
			}else if(mensaje =="error"){
				trace($tiposEvento[0]);
				alertaSingleton.remove(true);
				currentEnEspera = false;
				alertaSingleton.show( $errorOrWhoFinish.toString(), catalogoAlertas.TIT_ERR);
				actualizarEspera.isBusy=false;
			}
			
			dispatchEvent( new Event("actualizaEsperaYBloqueoModeloTabProveedores") );
		}
		[Bindable(event="actualizaEsperaYBloqueoModeloTabProveedores")]
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
				trace("Numero de servicios: " + numServices);
			}
		}
		
		/**
		 ************************************************************** error **************************************************************
		 */
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
	}
}