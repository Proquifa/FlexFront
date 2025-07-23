package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.EventoCatProGeneral;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Proveedor;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.ValorAdicional;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	public class ModeloCatProGeneral extends EventDispatcher
	{
		public function ModeloCatProGeneral(target:IEventDispatcher=null) 
		{
			super(target); //para inicializar todo lo que estas heredando del objeto que extiendes
		}
		
		
		/**
		 ************************************************************** ACTUALIZA LAS MODIFICACIONES REALIZADAS  **************************************************************
		 */ 
		private var _modificaciones:Boolean;
		public function setUpdateModificaiones($update:Boolean):void{
			_modificaciones = $update;
			dispatchEvent(new Event ("actualizaLasModificacionesRealizadasModeloCatProGral"));
		}
		
		[Bindable(event="actualizaLasModificacionesRealizadasModeloCatProGral")]
		public function get updateModificaciones():Boolean{
			return _modificaciones;
		}
		
		/**
		 ************************************************************** listaProveedores **************************************************************
		 */ 
		private var _listaProveedores:ArrayCollection;
		public function setListaProveedores(datos:ArrayCollection):void{
			_listaProveedores = datos;
			dispatchEvent(new Event ("listaProveedoresModeloCatProGeneral"));
		}
		
		[Bindable(event="listaProveedoresModeloCatProGeneral")]
		public function get listaProveedores():ArrayCollection{
			return _listaProveedores;
		}
		/**
		 ************************************************************** envia Proveedor **************************************************************
		 */ 
		private var _proveedor:Proveedor;
		public function setEnviaProveedor(evt:EventoCatProGeneral):void{
			_proveedor = evt.proveedorSeleccionado;
			dispatchEvent(new Event ("proveedoresEnviadoModeloCatProGeneral"));
		}
		
		[Bindable(event="proveedoresEnviadoModeloCatProGeneral")]
		public function get enviaProveedor():Proveedor{
			return _proveedor;
		}
		
		/**
		 ************************************************************** envia Id Proveedor **************************************************************
		 */ 
		private var _evtIdProveedor:EventoCatProGeneral;
		public function setEnviaIdProveedor(evt:EventoCatProGeneral):void{
			_evtIdProveedor = evt;
			dispatchEvent(new Event ("enviaIdProveedoroModeloCatProGeneral"));
		}
		
		[Bindable(event="enviaIdProveedoroModeloCatProGeneral")]
		public function get EnviaIdProveedor():EventoCatProGeneral{
			return _evtIdProveedor;
		}
		/**
		 ************************************************************** actualiza Proveedor **************************************************************
		 */ 
		private var _confirmaGuardado:Boolean;
		public function setGuardaProveedor(datos:Boolean):void{
			if( !datos ){
				return;
			}
			_confirmaGuardado = datos;
			dispatchEvent(new Event ("guardaProveedorModeloCatProGeneral"));
		}
		
		[Bindable(event="guardaProveedorModeloCatProGeneral")]
		public function get guardaProveedor():Boolean{
			return _confirmaGuardado;
		}
		
		/**
		 ************************************************************** actualiza monedas Compra Venta del Provedor **************************************************************
		 */ 
		private var _confirmaActualizarMonedas:Boolean;
		public function setRespuestaActualizarMonedasCompraVentaProveedor($confirmacion:Boolean):void{
			_confirmaActualizarMonedas = $confirmacion;
			dispatchEvent(new Event ("enviarRespuestaActualizacionMonedasCompraVentaModeloCatProGeneral"));
		}
		
		[Bindable(event="enviarRespuestaActualizacionMonedasCompraVentaModeloCatProGeneral")]
		public function get enviarRespuestaActualizarMonedaCompraVentaProveedor():Boolean{
			return _confirmaActualizarMonedas;
		}
		
		/**
		 ************************************************************** inserta Proveedor **************************************************************
		 */ 
		private var _confirmaInsertar:Number;
		public function setInsertaProveedor(datos:Number):void{
			_confirmaInsertar = datos;
			dispatchEvent(new Event ("InsertaProveedorModeloCatProGeneral"));
		}
		
		[Bindable(event="InsertaProveedorModeloCatProGeneral")]
		public function get InsertaProveedor():Number{
			return _confirmaInsertar;
		}
		/**
		 ************************************************************** deshabilita Proveedor **************************************************************
		 */ 
		private var _confirmaDeshabilitado:Boolean;
		public function setDeshabilitaProveedor(datos:Boolean):void{
			_confirmaDeshabilitado = datos;
			dispatchEvent(new Event ("ConfirmaDeshabilitaProveedorModeloCatProGeneral"));
		}
		
		[Bindable(event="ConfirmaDeshabilitaProveedorModeloCatProGeneral")]
		public function get DeshabilitaProveedor():Boolean{
			return _confirmaDeshabilitado;
		}
		
		/**
		 ************************************************************** habilita Proveedor **************************************************************
		 */ 
		private var _confirmaHabilitado:Boolean;
		public function setHabilitaProveedor(datos:Boolean):void{
			_confirmaHabilitado = datos;
			dispatchEvent(new Event ("HabilitaProveedorModeloCatProGeneral"));
		}
		
		[Bindable(event="HabilitaProveedorModeloCatProGeneral")]
		public function get HabilitaProveedor():Boolean{
			return _confirmaHabilitado;
		}
		
		/**
		 ************************************************************** LISTA AGENTES ADUANALES **************************************************************
		 */ 
		private var _dummy:ValorAdicional;
		private var _listaAgentes:ArrayCollection;
		public function setListaAgentes(datos:ArrayCollection):void{
			_listaAgentes = datos;
			dispatchEvent(new Event ("listaAgentesAduanalesModeloCatProGeneral"));
		}
		
		[Bindable(event="listaAgentesAduanalesModeloCatProGeneral")]
		public function get listaAgentes():ArrayCollection{
			return _listaAgentes;
		}
		
		/**
		 ************************************************************** LISTA TIPO DE PRODUCTOS **************************************************************
		 */ 
		private var _listaTipoProd:ArrayCollection;
		public function setListaTipoProductos(datos:ArrayCollection):void{
			_listaTipoProd = datos;
			dispatchEvent(new Event ("listaTipoProdcutosModeloCatProGeneral"));
		}
		
		[Bindable(event="listaTipoProdcutosModeloCatProGeneral")]
		public function get listaTipoProductos():ArrayCollection{
			return _listaTipoProd;
		}
		
		/**
		 ************************************************************** UNIVERSO DE AGENTES ADUANALES **************************************************************
		 */ 
		private var _universoAgentes:ArrayCollection;
		public function setUniversoAgentes(datos:ArrayCollection):void{
			if(datos == null)
				_universoAgentes = new ArrayCollection();
			else
				_universoAgentes = datos;
			
			dispatchEvent(new Event ("listaUniversoAgentesModeloCatProGeneral"));
		}
		
		[Bindable(event="listaUniversoAgentesModeloCatProGeneral")]
		public function get listaUniversoAgentes():ArrayCollection{
			return _universoAgentes;
		}
		/**
		 ************************************************************** UNIVERSO DE PAGADORES PARA BOTONERA **************************************************************
		 */ 
		private var _listaPagadores:ArrayCollection;
		public function setListaPagadores(datos:ArrayCollection):void{
			if(datos == null)
				_listaPagadores = new ArrayCollection();
			else
				_listaPagadores = datos;
			
			dispatchEvent(new Event ("listaPagadoresBotoneraModeloCatProGeneral"));
		}
		
		[Bindable(event="listaPagadoresBotoneraModeloCatProGeneral")]
		public function get listaPagadores():ArrayCollection{
			return _listaPagadores;
		}
		/**
		 ************************************************************** UNIVERSO DE COMPRADORES PARA BOTONERA **************************************************************
		 */ 
		private var _listaCompradores:ArrayCollection;
		public function setListaCompradores(datos:ArrayCollection):void{
			if(datos == null)
				_listaCompradores = new ArrayCollection();
			else
				_listaCompradores = datos;
			
			dispatchEvent(new Event ("listaCompradoresBotoneraModeloCatProGeneral"));
		}
		
		[Bindable(event="listaCompradoresBotoneraModeloCatProGeneral")]
		public function get listaCompradores():ArrayCollection{
			return _listaCompradores;
		}

		
		/**
		 ************************************************************** OBJETIVO FUNDAMENTAL Y DESEADO **************************************************************
		 */ 
		private var _montoAnterior:ArrayCollection;
		public function setListaMontoAnterior(datos:ArrayCollection):void{
			if(datos == null)
				_montoAnterior = new ArrayCollection();
			else
				_montoAnterior = datos;
			
			dispatchEvent(new Event ("listaMontoAnteriorModeloCatProGeneral"));
		}
		
		[Bindable(event="listaMontoAnteriorModeloCatProGeneral")]
		public function get listaMontoAnterior():ArrayCollection{
			return _montoAnterior;
		}

		
		private var _montoActual:ArrayCollection;
		public function setListaMontoActual(datos:ArrayCollection):void{
			if(datos == null)
				_montoActual = new ArrayCollection();
			else
				_montoActual = datos;
			
			dispatchEvent(new Event ("listaMontoActualModeloCatProGeneral"));
		}
		
		[Bindable(event="listaMontoActualModeloCatProGeneral")]
		public function get listaMontoActual():ArrayCollection{
			return _montoActual;
		}

		
		private var _objetivo:ArrayCollection;
		public function setListaObjetivos(datos:ArrayCollection):void{
			if(datos == null)
				_objetivo = new ArrayCollection();
			else
				_objetivo = datos;
			
			dispatchEvent(new Event ("listaObjetivosModeloCatProGeneral"));
		}
		
		[Bindable(event="listaObjetivosModeloCatProGeneral")]
		public function get listaObjetivos():ArrayCollection{
			return _objetivo;
		}
		

		
		private var confirmarGuardar:Boolean;
		public function setGuardarObjetivos(datos:Boolean):void{
			confirmarGuardar = datos;
			dispatchEvent(new Event ("confirmarObjetivosModeloCatProGeneral"));
		}
		
		[Bindable(event="confirmarObjetivosModeloCatProGeneral")]
		public function get guardarObjetivos():Boolean{
			return confirmarGuardar;
		}
		
		
		
		
		/**
		 ************************************************************** error **************************************************************
		 */
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
		
	}
}