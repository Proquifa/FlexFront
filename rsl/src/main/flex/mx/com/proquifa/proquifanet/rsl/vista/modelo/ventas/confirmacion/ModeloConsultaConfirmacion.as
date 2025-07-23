package mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.confirmacion
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.ventas.confirmacion.EventoConsultaConfirmacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PCotPharma;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	
	import skins.catalogos.catalogoAlertas;

	public class ModeloConsultaConfirmacion extends EventDispatcher
	{
		public function ModeloConsultaConfirmacion(target:IEventDispatcher = null)
		{
			super(target);
		}
		
		private var pcotPharma:PCotPharma;
		
		/**
		 * Funcion para obtener cotizaciones por realizar y en realizacion
		 */ 
		private var _cotPharma:ArrayCollection;
		public function setCotPharma(realizacion:ArrayCollection):void{
			
			confirmacionPharma(realizacion);
			//_cotPharma = FuncionesEstaticas.getInstance().formatoObjetos( realizacion );
			dispatchEvent(new Event("ConfirmacionPharmaModeloConsultaConfirmacion"));
		}
		
		[Bindable(event="ConfirmacionPharmaModeloConsultaConfirmacion")]
		public function get cotPharma():ArrayCollection{
			return this._cotPharma;
		}
		
		
		private function confirmacionPharma($array:ArrayCollection):ArrayCollection{
			for( var i:int=0; i < $array.length; i++){
				($array[i] as PCotPharma).numeroFila = i + 1;
				if (($array[i] as PCotPharma).FPharma == null){
					if(($array[i] as PCotPharma).estado == "En Pharma"){
						($array[i] as PCotPharma).estado = "Por Realizar";
					}else{
						($array[i] as PCotPharma).estado = "En Realización";
					}
				}
				else{
					($array[i] as PCotPharma).estado = "Realizada";
				}
				
				if (($array[i] as PCotPharma).rechazo == null ){
					($array[i] as PCotPharma).rechazo = "NO";
				}
				else{
					($array[i] as PCotPharma).rechazo = "SI";
				}
			}
			return $array;
		}
		
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				if((EventoConsultaConfirmacion[$tiposEventos[i]])== null){
					return false;
				}
			}
			return true;
		}
		
		private var currentEnEspera:Boolean;
		private var actualizarEspera:Object = new Object;
		private var numServices:uint;
		private var numServicioCompletos:uint;
		private var serviciosCompletosDifKey:Object = new Object;
		public function setControlDeBloqueoPantalla(mensaje:String,$tiposEvento:Array,$idCurrentBottons:Array,$errorOrWhoFinish:Object):void
		{
			if(mensaje == "iniciarEspera"){
				if(Boolean(verificarSiElExistenLosTiposDeEvento($tiposEvento))){
					numServicioCompletos=0;
					numServices = 0;
					actualizarEspera = new Object();
					serviciosCompletosDifKey = new Object();
					numServices = $tiposEvento.length;
					currentEnEspera = true;
					actualizarEspera.isBusy = true;
					actualizarEspera["idCurrentButtons"] = $idCurrentBottons;
					alertaSingleton.show(catalogoAlertas.INICIAR_ESPERA,"","","","","","",null,true);
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
				alertaSingleton.remove(true);
				currentEnEspera = false;
				alertaSingleton.showReintentar( $errorOrWhoFinish.toString(), catalogoAlertas.TIT_ERR);
				actualizarEspera.isBusy=false;
			}
			
			dispatchEvent( new Event("actualizaEsperaYBloqueoModeloConsultaConfirmacion") );
		}
		[Bindable(event="actualizaEsperaYBloqueoModeloConsultaConfirmacion")]
		public function get actualizarEstadoDeEsperaYBloqueo():Object
		{
			return actualizarEspera;
		}
		
		/**
		 * Funcion para obtener cotizaciones por folio 
		 */ 
		private var _folioCot:ArrayCollection;
		public function setFolioCotPharma(folio:ArrayCollection):void{
			folio = confirmacionPharma(folio);
			//_folioCot = FuncionesEstaticas.getInstance().formatoObjetos( folio );
			_folioCot = ObjectUtil.copy(folio) as ArrayCollection;
			dispatchEvent(new Event ("folioConfirmacionModeloConsultaConfirmacion"));
		}
		
		[Bindable(event="folioConfirmacionModeloConsultaConfirmacion")]
		public function get folioCotPharma():ArrayCollection{
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"busquedaAvanzadaConfirmacionModeloConsultaConfirmacion");
			}
			return this._folioCot;
		}
		
		/**
		 * Funcion para obtener cotizaciones en busqueda Avanzada 
		 */ 
		private var _busquedaCot:ArrayCollection;
		public function setConfirmacionCotPharma(pcotiza:ArrayCollection):void{
			
			pcotiza = confirmacionPharma(pcotiza);
			//_busquedaCot = FuncionesEstaticas.getInstance().formatoObjetos( pcotiza );
			_busquedaCot = ObjectUtil.copy(pcotiza) as ArrayCollection;
			dispatchEvent(new Event ("busquedaAvanzadaConfirmacionModeloConsultaConfirmacion"));
		}
		
		[Bindable(event="busquedaAvanzadaConfirmacionModeloConsultaConfirmacion")]
		public function get confirmacionCotPharma():ArrayCollection{
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"busquedaAvanzadaConfirmacionModeloConsultaConfirmacion");
			}
			return this._busquedaCot;
		}
		
		/**
		 * Funcion para obtener empleados en busqueda Avanzada 
		 */ 
		private var _empleado:ArrayCollection;
		public function setEmpleadosCotPharma(empleado:ArrayCollection):void{
			_empleado = empleado;
			dispatchEvent(new Event ("busquedaAvanzadaEmpleadoModeloConsultaConfirmacion"));
		}
		
		[Bindable(event="busquedaAvanzadaEmpleadoModeloConsultaConfirmacion")]
		public function get empleadosCotPharma():ArrayCollection{
			return this._empleado;
		}
		
		/**
		 * Funcion para obtener empleados en busqueda Avanzada 
		 */ 
		private var _provTipo:ArrayCollection;
		public function setProveedorTipoCotPharma(tipo:ArrayCollection):void{
			_provTipo = tipo;
			dispatchEvent(new Event ("busquedaTipoProveedorModeloConsultaConfirmacion"));
		}
		
		[Bindable(event="busquedaTipoProveedorModeloConsultaConfirmacion")]
		public function get proveedorTipoCotPharma():ArrayCollection{
			return this._provTipo;
		}
		
		/**
		 * Funcion que muestra tab garficas false- ocultar , true - muestra
		 */ 
		private var _tab:Boolean;
		public function setMostrarOcultaTabGrafica(tab:Boolean):void{
			_tab = tab;
			dispatchEvent(new Event("muestraOcultaInfoTabGraficaModelosConsultaConfirmacion"));
		}
		
		[Bindable(event="muestraOcultaInfoTabGraficaModelosConsultaConfirmacion")]
		public function get mostrarOcultaTabGrafica():Boolean{
			return this._tab;
		}
		
		public function faultNumeroStock(objeto:Object):void{
			trace("ERROR !!!");
		}
		
	}
}