package mx.com.proquifa.proquifanet.admonComunicacion.vistas.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.alertPqNet.EventoAlertaPqNet;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.ActividadPendiente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Correo;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Pendiente;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	import mx.core.UIComponent;
	import mx.core.UIComponentGlobals;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloDocumentosPendientesPorEnviar extends EventDispatcher
	{
		
		private var _correosCotizacion:ArrayCollection = new ArrayCollection(); 
		private var _correosPedidos:ArrayCollection = new ArrayCollection(); 
		private var _correosNotificaciones:ArrayCollection = new ArrayCollection(); 
		private var _correosCompras:ArrayCollection = new ArrayCollection(); 
		private var _totalCotizacion:Number = new Number;
		private var _totalPedidos:Number = new Number;
		private var _totalNotificados:Number = new Number;
		private var _totalCompras:Number = new Number;
		private var _guardaLlamada:Boolean;
		private var _documentoModificado:Boolean;
		private var _documentoUP:Boolean;
		private var _usuarioCotiza:ArrayCollection = new ArrayCollection();
		private var _usuarioPedido:ArrayCollection = new ArrayCollection();
		private var _usuarioNotificado:ArrayCollection = new ArrayCollection();
		private var _usuarioFactura:ArrayCollection = new ArrayCollection();
		
		public function ModeloDocumentosPendientesPorEnviar(target:IEventDispatcher=null)
		{
			//TODO: implement function
			super(target);
		}
		//						RECIBIR TOTAL PENDIENTES
		private var _arregloPendientes:ArrayCollection = new ArrayCollection();
		public function setTotalPendientes(respuesta:ArrayCollection):void{
			_arregloPendientes = respuesta;
			dispatchEvent(new Event ("regresaPendientes"));
		}
		[Bindable(event="regresaPendientes")]
		public function get regresaTotalPendientes():ArrayCollection{
			return this._arregloPendientes;
		}
		//	
		/**
		 *Metodos para obtener las cotizaciones por enviar 
		 */
		[Bindable(event="cambioCotizacionesPorEnviar")]
		public function get cotizacionesPorEnviar():ArrayCollection{
			return this._correosPedidos;
		}		
		
		public function setCotizacionesPorEnviar ( datos:ArrayCollection ):void{			
			this._correosPedidos = datos;
			/*this._correosCotizacion = new ArrayCollection();
			 for (var i:int=0; i < datos.source.length; i++){
				var correo:Correo = new Correo();
				//si aprecen menos pendientes de correo que los que estan en numeros es por que vienee nulos 
				if((datos.getItemAt(i) as Pendiente).correo != null ){
					correo = (datos.getItemAt(i) as Pendiente).correo;
					correo.FolioDocumento = (datos.getItemAt( i ) as Pendiente).docto;
					correo.folioNumerico = (datos.getItemAt( i ) as Pendiente).folio;
					this._correosCotizacion.addItem( correo );
				}
			}*/
			dispatchEvent ( new Event("cambioCotizacionesPorEnviar") );
		}
		/**
		 *Metodos para obtener los pedidos por enviar 
		 */
		[Bindable(event="cambioPedidosPorEnviar")]
		public function get pedidosPorEnviar():ArrayCollection{
			return this._correosPedidos;
		}		
		public function setPedidosPorEnviar ( datos:ArrayCollection ):void{			
			this._correosPedidos = new ArrayCollection();
			for (var i:int=0; i < datos.source.length; i++){
				var correo:Correo = new Correo();
				correo = (datos.getItemAt(i) as Pendiente).correo;
				correo.FolioDocumento = (datos.getItemAt( i ) as Pendiente).docto;
				correo.folioNumerico = (datos.getItemAt( i ) as Pendiente).folio;
				this._correosPedidos.addItem( correo );
			}
			
			dispatchEvent ( new Event("cambioPedidosPorEnviar") );
		}		
		
		
		/**
		 *Metodos para obtener las notificaciones por enviar 
		 */
		[Bindable(event="cambioNotificacionesPorEnviar")]
		public function get notificacionesPorEnviar():ArrayCollection{
			return this._correosNotificaciones;
		}		
		public function setNotificacionesPorEnviar ( datos:ArrayCollection ):void{			
			this._correosNotificaciones = new ArrayCollection();
			for (var i:int=0; i < datos.source.length; i++){
				var correo:Correo = new Correo();
				correo = (datos.getItemAt(i) as Pendiente).correo;
				correo.FolioDocumento = (datos.getItemAt( i ) as Pendiente).docto;
				correo.folioNumerico = (datos.getItemAt( i ) as Pendiente).folio;
				this._correosNotificaciones.addItem( correo );
			}			
			dispatchEvent ( new Event("cambioNotificacionesPorEnviar") );
		}
		
		
		/**
		 *Metodos para obtener las cotizaciones por enviar 
		 */
		[Bindable(event="cambioComprasPorEnviar")]
		public function get comprasPorEnviar():ArrayCollection{
			return this._correosCompras;
		}		
		public function setComprasPorEnviar ( datos:ArrayCollection ):void{			
			this._correosCompras = new ArrayCollection();
			for (var i:int=0; i < datos.source.length; i++){
				var correo:Correo = new Correo();
				correo = (datos.getItemAt(i) as Pendiente).correo;
				correo.FolioDocumento = (datos.getItemAt( i ) as Pendiente).docto;
				correo.folioNumerico = (datos.getItemAt( i ) as Pendiente).folio;
				this._correosCompras.addItem( correo );
			}			
			dispatchEvent ( new Event("cambioComprasPorEnviar") );
		}
		
		/**
		 *Metodos para obtener las cotizaciones por enviar  
		 */
		 [Bindable(event = "cambioDeNumeroDePendientes")]
		 public function get numeroDePendientesPorEvaluar():Number{
		 	return this._totalCotizacion;
		 } 
		 public function setNumeroDePendientesPorEvuluar( total:Number):void{		 	
		 	this._totalCotizacion = new Number;
		 	this._totalCotizacion = total;
		 	dispatchEvent ( new Event("cambioDeNumeroDePendientes") );
		 }
		 
		 /**
		 *Metodos para obtener el total de pedidos  
		 */
		 [Bindable(event = "cambioDeNumeroDePendientes")]
		 public function get numeroDePedidosPorEvaluar():Number{
		 	return this._totalPedidos;
		 } 
		 public function setNumeroDePedidosPorEvaluar( total:Number):void{		 	
		 	this._totalPedidos = new Number;
		 	this._totalPedidos = total;
		 	dispatchEvent ( new Event("cambioDeNumeroDePendientes") );
		 }
		 
		 
		 /**
		  *Metodos para obtener el total de notificados
		  */
		 [Bindable(event = "cambioDeNumeroDeNotificados")]
		 public function get numeroDeNotificadosPorEvaluar():Number{
		 	return this._totalNotificados;
		 } 
		 public function setNumeroDeNotificadosPorEvaluar( total:Number):void{		 	
		 	this._totalNotificados = new Number;
		 	this._totalNotificados = total;
		 	dispatchEvent ( new Event("cambioDeNumeroDeNotificados") );
		 }
		 
		 /**
		  *Metodos para obtener el total de compras
		  */
		 [Bindable(event = "cambioDeNumeroDecompras")]
		 public function get numeroDeComprasPorEvaluar():Number{
		 	return this._totalCompras;
		 } 
		 public function setNumeroDeComprasPorEvaluar( total:Number):void{		 	
		 	this._totalCompras = new Number;
		 	this._totalCompras = total;
		 	dispatchEvent ( new Event("cambioDeNumeroDecompras") );
		 }
		 /*
		 Modelo para regresar la llamada guardada.
		 */
		[Bindable(event="llamadaGuardada")]
		public function get GuardaProducto():Boolean{
			return this._guardaLlamada;
		}
		
		public function setGuardaProducto( resultado:Boolean ):void{
			this._guardaLlamada = resultado;
			dispatchEvent ( new Event("llamadaGuardada") );
		}
		
		/*
		 Modelo para regresar el Documento Modificado
		 */
		[Bindable(event="documentoModificado")]
		public function get DocumentoModificado():Boolean{
			return this._documentoModificado;
		}
		
		public function setDocumentoModificado( resultado:Boolean ):void{
			this._documentoModificado = resultado;
			dispatchEvent ( new Event("documentoModificado") );
		}
		
		//Metodo para conseguir Usuarios de las Cotizaciones
		[Bindable(event="cambioUsuarioCotiza")]
		public function get UsuariosCotiza():ArrayCollection{
			return this._usuarioCotiza
		}
		
		public function setUsuariosCotiza ( datos:ArrayCollection ):void{
			this._usuarioCotiza = datos;				
			dispatchEvent( new Event("cambioUsuarioCotiza") );
		}
		
		//Metodo para conseguir Usuarios de los Pedidos
		[Bindable(event="cambioUsuarioPedido")]
		public function get UsuariosPedido():ArrayCollection{
			return this._usuarioPedido
		}
		
		public function setUsuariosPedido ( datos:ArrayCollection ):void{
			this._usuarioPedido = datos;				
			dispatchEvent( new Event("cambioUsuarioPedido") );
		}
		
		
		//Metodo para conseguir Usuarios de los Notificados
		[Bindable(event="cambioUsuarioNotificado")]
		public function get UsuariosNotificado():ArrayCollection{
			return this._usuarioNotificado;
		}
		
		public function setUsuariosNotificado ( datos:ArrayCollection ):void{
			this._usuarioNotificado = datos;				
			dispatchEvent( new Event("cambioUsuarioNotificado") );
		}
		//Metodo para conseguir Usuarios de las Facturas
		[Bindable(event="cambioUsuarioFactura")]
		public function get UsuariosFactura():ArrayCollection{
			return this._usuarioFactura;
		}
		
		public function setUsuariosFactura ( datos:ArrayCollection ):void{
			this._usuarioFactura = datos;				
			dispatchEvent( new Event("cambioUsuarioFactura") );
		}
		 /*
		 Modelo para avisar que el Documento subio Exitosamente
		 */
		[Bindable(event="documentoUp")]
		public function get DocumentoUP():Boolean{
			return this._documentoUP;
		}
		
		public function setDocumentoUP( resultado:Boolean ):void{
			this._documentoUP = resultado;
			dispatchEvent ( new Event("documentoUp") );
		}
		
		//						ENVIAR PASS
		private var _listaPass:ArrayCollection = new ArrayCollection();
		public function setListaValida(respuesta:ArrayCollection):void{
			if(respuesta == null || respuesta.length == 0)
				_listaPass = new ArrayCollection();	
			else
				_listaPass = respuesta;
			dispatchEvent(new Event ("regresaListaValida"));
		}
		[Bindable(event="regresaListaValida")]
		public function get regresaListaValida():ArrayCollection{
			return this._listaPass;
		}
		
		public function faultCotizacionesPorEnviar(error:Object):void{
			//Alert.show("Error en el nuevo servicio");
			alertaSingleton.show( catalogoAlertas.ERR_servicio+error, catalogoAlertas.TIT_ERR);
		}
		public function faultConteo(error:Object):void{
			//Alert.show("Error en el nuevo servicio");
			alertaSingleton.show( catalogoAlertas.ERR_servicio+error, catalogoAlertas.TIT_ERR);
		}
		
	}
}