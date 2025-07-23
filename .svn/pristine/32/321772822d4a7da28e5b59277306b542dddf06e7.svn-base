package vista.modelo.reportarVisita
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cotizacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Producto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.ReportarVisita;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	import skins.catalogos.catalogoAlertas;
	
	import vista.evento.reportarVisita.EventoReportarVisita;
	
	public class ModeloReportarVisita extends EventDispatcher
	{
		
		private var lstVisitas:ArrayCollection;
		public function setObtenerVisitas(data:ArrayCollection):void {
			lstVisitas = data;
			dispatchEvent(new Event("enviarListaVisitasClientesModeloReportarVisita"));
		}
		
		[Bindable(event="enviarListaVisitasClientesModeloReportarVisita")]
		public function get enviarVisitasCliente():ArrayCollection{
			return lstVisitas;
		}
		
		private var reportarVisita:ReportarVisita;
		public function setObtenerReportarVisitas(data:ReportarVisita):void {
			reportarVisita = data;
			dispatchEvent(new Event("enviarReportarVisitasClientesModeloReportarVisita"));
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"enviarReportarVisitasClientesModeloReportarVisita");
			}
		}
		
		[Bindable(event="enviarReportarVisitasClientesModeloReportarVisita")]
		public function get enviarReportarVisitasCliente():ReportarVisita{
			return reportarVisita;
		}

		
		private var respuesta:Boolean;
		public function setRespuestaGuardadoReportarVisitas(data:Boolean):void {
			respuesta = data;
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"respuestaGuardadoReportarVisitasClientesModeloReportarVisita");
			}
			dispatchEvent(new Event("respuestaGuardadoReportarVisitasClientesModeloReportarVisita"));
		}
		
		[Bindable(event="respuestaGuardadoReportarVisitasClientesModeloReportarVisita")]
		public function get respuestaGuardadoReportarVisitas():Boolean{
			return respuesta;
		}
		
		
		
		
		//ESPERA
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
			
		}
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				try
				{
					if((EventoReportarVisita[$tiposEventos[i]])== null){
						return false;
					}
				} 
				catch(error:Error) 
				{
					return false;
				}
				
			}
			return true;
		}
		
		
		
		/**
		 ************************************************************** RECIBE LISTA DE CAMPAÑAS **************************************************************
		 */ 
		private var listaCampanas:ArrayCollection;
		public function setRecibeListaDeCampanasComercianles(list:ArrayCollection):void{
			this.listaCampanas =  list;
			dispatchEvent(new Event ("mandarListaDeCampanasVigentes"));
		}
		
		[Bindable(event="mandarListaDeCampanasVigentes")]
		public function get enviaListaDeCampanasComerciales():ArrayCollection{
			return this.listaCampanas;
		}
		
		/**
		 ************************************************************** RECIBE LISTA DE EMPRESAS A LAS CUALES SE PUEDEN COTIZAR **************************************************************
		 */ 
		private var _empresas:ArrayCollection;
		public function setListaEmpresas($em:ArrayCollection):void{
			this._empresas = $em;
			dispatchEvent(new Event ("enviarListaEmpresas"));
		}
		
		[Bindable(event="enviarListaEmpresas")]
		public function get listaEmpresasCombo():ArrayCollection{
			return this._empresas;
		}
		
		/**
		 ************************************************************** RECIBE LISTA DE PRODUCTOS  **************************************************************
		 */ 
		private var _productos:ArrayCollection;
		public function setListaProdcutos($productos:ArrayCollection):void{
			this._productos = $productos;
			dispatchEvent(new Event ("enviarListaProductos"));
		}
		
		[Bindable(event="enviarListaProductos")]
		public function get listaProductosConCam():ArrayCollection{
			return this._productos;
		}
		
		/**
		 ************************************************************** RECIBE RESPUESTA GENERAR/GUARDAR COTIZACION**************************************************************
		 */ 
		private var respuestaGCO:Number;
		public function setRecibeRespuestaGuardarCotizaciones(res:Number):void{
			
			this.respuestaGCO = res;
			dispatchEvent(new Event ("mandarRespuestaGuardarCotizaciones"));
		}
		
		[Bindable(event="mandarRespuestaGuardarCotizaciones")]
		public function get enviarRespuestaGuardarCoticacion():Number{
			return this.respuestaGCO;
		}
		
		/**
		 ************************************************************** RECIBE LISTA DE COTIZACIONES **************************************************************
		 */ 
		private var listCot:ArrayCollection;
		public function setRecibeListaCotizaciones(coti:ArrayCollection):void{
			
			this.listCot = coti;
			dispatchEvent(new Event ("enviarListaCotizacionesDeVista"));
		}
		
		[Bindable(event="enviarListaCotizacionesDeVista")]
		public function get enviarListaCotizacionDeVisita():ArrayCollection{
			return this.listCot;
		}
		
		/**
		 **************************************************************RECIBE INFORMACION DE COSTOS DE PRODUCTO **************************************************************
		 */ 
		private var listCostos:ArrayCollection;
		public function setRecibeListaDeCostosPro(lstCos:ArrayCollection):void{
			
			this.listCostos = lstCos;
			dispatchEvent(new Event ("enviarListaDeCostosPro"));
		}
		
		[Bindable(event="enviarListaDeCostosPro")]
		public function get enviarListaDeCostosPro():ArrayCollection{
			return this.listCostos;
		}
	
		/**
		 **************************************************************RECIBE RESPUESTA FINALIZAR VISITA **************************************************************
		 */ 
		
		private var resFinalizar:Boolean;
		public function setRespuestaFinalizarReporte(res:Boolean):void {
			resFinalizar = res;
			dispatchEvent(new Event("enviarRespuestaFinalizarVisita"));
		}
		
		[Bindable(event="enviarRespuestaFinalizarVisita")]
		public function get respuestaFinalizarVisita():Boolean{
			return resFinalizar;
		}
		
		
		
		/**
		 ************************************************************** LISTA VALIDA CONTRASEÑAS  **************************************************************
		 */ 
		
		
		
		
		
		private var _listaPass:ArrayCollection = new ArrayCollection();
		public function setListaValida(respuesta:ArrayCollection):void{
			if(respuesta == null || respuesta.length == 0)
				_listaPass = new ArrayCollection();	
			else
				_listaPass = respuesta;
			dispatchEvent(new Event ("regresaListaValidaCLI"));
		}
		[Bindable(event="regresaListaValidaCLI")]
		public function get regresaListaValida():ArrayCollection{
			return this._listaPass;
		}
		
		
		/**
		 ************************************************************** RESPUESTA  **************************************************************
		 */ 
		
		private var validaEmpleado:Number;
		
		public function setValidaEmpleado( resultado:Number ):void{
			validaEmpleado = resultado;
			dispatchEvent ( new Event("cambioEmpleadoValido") );
		}
		
		[Bindable(event="cambioEmpleadoValido")]
		public function get ValidaEmpleado():Number{
			return validaEmpleado;
		}
		
		
		
		/**
		 ************************************************************** RECIBE PRECIO MIN Y MAX DE PRODUCTO  **************************************************************
		 */ 
		
		
		private var _pro:Producto = new Producto();
		public function setPrecioMinMaxPro(prod:Producto):void{
			if(prod == null )
				_pro = new Producto();	
			else
				_pro = prod;
			dispatchEvent(new Event ("enviarCostoMinyMaxDeProducto"));
		}
		[Bindable(event="enviarCostoMinyMaxDeProducto")]
		public function get regresaMinMaxProducto():Producto{
			return this._pro;
		}
		
		
		public function faultError(error:Object):void {
			trace(error.toString());
		}
		
		public function ModeloReportarVisita(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}