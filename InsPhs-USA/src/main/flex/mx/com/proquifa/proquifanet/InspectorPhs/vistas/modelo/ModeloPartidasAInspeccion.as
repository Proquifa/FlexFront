package mx.com.proquifa.proquifanet.InspectorPhs.vistas.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.Pieza;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.ActividadPendiente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Etiqueta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos.Archivo;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos.PartidaInspeccion;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloPartidasAInspeccion extends EventDispatcher
	{
		public function ModeloPartidasAInspeccion(target:IEventDispatcher=null)
		{
			super(target);
		}
		//					Partidas A Inspeccion
		private var _listaPartidaInspeccion:ArrayCollection = new ArrayCollection();
		public function setListaPartidaInspeccion(datos:ArrayCollection):void{
			_listaPartidaInspeccion = new ArrayCollection();
			_listaPartidaInspeccion = datos;
			for(var t:int = 0; t < _listaPartidaInspeccion.length; t++){
				(_listaPartidaInspeccion[t] as PartidaInspeccion).numFila = t + 1;
			}
			dispatchEvent( new Event("regresaListaPartidaInspeccion") );
		}
		[Bindable(event="regresaListaPartidaInspeccion")]
		public function get regresolistaPartidaInspeccion():ArrayCollection{
			return _listaPartidaInspeccion;
		}
		//					/Partidas A Inspeccion
		//					Partidas A Inspeccion X COMPRA
		private var _listaPartidaInspeccionXCompra:ArrayCollection;// = new ArrayCollection();
		public function setListaPartidaInspeccionXCompra(datos:ArrayCollection):void{
			_listaPartidaInspeccionXCompra = new ArrayCollection();
			_listaPartidaInspeccionXCompra = datos;
			var listaTempUniverso:ArrayCollection = ObjectUtil.copy( _listaPartidaInspeccion) as ArrayCollection;
			if( _OCInspeccion != null ){
				for( var b:int = 0; b < listaTempUniverso.length; b++){
					if( (listaTempUniverso[b] as PartidaInspeccion).compra == _OCInspeccion ){
						listaTempUniverso.removeItemAt(b);
						b--;
					}
				}
				for( var v:int = 0; v < _listaPartidaInspeccionXCompra.length; v++){
					listaTempUniverso.addItem( ObjectUtil.copy(_listaPartidaInspeccionXCompra[v]) as PartidaInspeccion );
				}
				for( var t:int = 0; t < listaTempUniverso.length; t++){
						(listaTempUniverso[t] as PartidaInspeccion).numFila = t + 1;
				}
				_listaPartidaInspeccion = new ArrayCollection();
				_listaPartidaInspeccion = listaTempUniverso;
				dispatchEvent( new Event("regresaListaPartidaInspeccion") );
			}
			dispatchEvent( new Event("regresaListaPartidaInspeccionXCompra") );
		}
		[Bindable(event="regresaListaPartidaInspeccionXCompra")]
		public function get regresolistaPartidaInspeccionXCompra():ArrayCollection{
			return _listaPartidaInspeccionXCompra;
		}
		//					/Partidas A Inspeccion X COMPRA
		//					seteando la OC en inspeccion
		private var _OCInspeccion:String;
		public function setOcInspeccion( $str:String ):void{
			_OCInspeccion = $str;
		}
		//					/seteando la OC en inspeccion
		//					RESET ETIQUETAS
		public function setResetEtiquetas():void{
			_listaEtiquetas = new ArrayCollection();
			dispatchEvent( new Event("regresaEtiquetas") );
		}
		//					/RESET ETIQUETAS
		//					Actividades pendientes x usuario
		private var _listaActividadPendiente:ArrayCollection = new ArrayCollection();
		public function setListaActividadPendiente($datos:ArrayCollection):void{
			_listaActividadPendiente = new ArrayCollection();
			_listaActividadPendiente = $datos;
			dispatchEvent( new Event("regresaListaActividadPendiente") );
		}
		[Bindable(event="regresaListaActividadPendiente")]
		public function get regresolistaActividadPendiente():ArrayCollection{
			return _listaActividadPendiente;
		}
		//					/Partidas A Inspeccion
		//					guardar cambios a partida
		private var _partidaActualizadaBoolStr:String;
		public function setActualizarPartidaBool( $resultado:Boolean):void{
			_partidaActualizadaBoolStr = $resultado.toString();
			dispatchEvent( new Event("partidaActualizada") );
		}
		[Bindable(event="partidaActualizada")]
		public function get regresoActualizarPartidaBool():String{
			return _partidaActualizadaBoolStr;
		}
		//					/guardar cambios a partida
		//					regresa partida a monitoreo cantidad de piezas 0 CERO
		private var _partidaAMonitoreoBoolStr:String;
		public function setPartidaAMonitoreoBool($resultado:Boolean):void{
			_partidaAMonitoreoBoolStr = $resultado.toString();
			dispatchEvent( new Event("partidaAMonitoreo") );
		}
		[Bindable(event="partidaAMonitoreo")]
		public function get regresoPartidaAMonitoreoBool():String{
			return _partidaAMonitoreoBoolStr;
		}
		//					/regresa partida a monitoreo cantidad de piezas 0 CERO
		//					listar piezas
		private var _testArchivo:Archivo = new Archivo();
		private var _listaPiezas:ArrayCollection = new ArrayCollection();
		public function setListadoPiezas($datos:ArrayCollection):void{
			_listaPiezas = new ArrayCollection();
			_listaPiezas = $datos;
			dispatchEvent( new Event("regresaListaPiezas") );
		}
		[Bindable(event="regresaListaPiezas")]
		public function get regresoPiezas():ArrayCollection{
			return _listaPiezas;
		}
		//					/listar piezas
		//					guardar piezas
		private  var _piezasGuardarBoolStr:String;
		public function setGuardarPiezasBool($resultado:Boolean):void{
			_piezasGuardarBoolStr = $resultado.toString();
			dispatchEvent( new Event("regresaGuardarPiezasBool") );
		}
		[Bindable(event="regresaGuardarPiezasBool")]
		public function get regresoGuardarPiezas():String{
			return _piezasGuardarBoolStr;
		}
		//					/guardar piezas
		//					finalizar inspeccion
		private var testEtiqueta:Etiqueta = new Etiqueta();
		private var _listaEtiquetas:ArrayCollection = new ArrayCollection();
		public function setEtiquetas( $listaEtiquetas:ArrayCollection ):void{
			_listaEtiquetas = new ArrayCollection();
			_listaEtiquetas = $listaEtiquetas;
			for( var g:int=0; g < _listaEtiquetas.length; g++){
				(_listaEtiquetas[g] as Etiqueta).numFila = g+1;
			}
			dispatchEvent( new Event("regresaEtiquetas") );
		}
		[Bindable(event="regresaEtiquetas")]
		public function get regresoEtiquetas():ArrayCollection{
			return _listaEtiquetas;
		}
		//					/finalizar inspeccion
		// 					cerrar pendientes inspeccion
		private var _cerrarPendientesBoolStr:String = null;
		public function setCerrarPendientes( $resultado:Boolean ):void{
			_cerrarPendientesBoolStr = $resultado.toString();
			dispatchEvent( new Event("regresaCerrarPendientes") );
			//dispatchEvent( new Event("regresaListaPartidaInspeccion") );
		}
		[Bindable(event="regresaCerrarPendientes")]
		public function get regresoCerrarPendientes():String{
			return _cerrarPendientesBoolStr;
		}
		// 					/cerrar pendientes inspeccion
		public function faultService($error:Object):void{
			alertaSingleton.show( catalogoAlertas.ERR_servicio+$error, catalogoAlertas.TIT_ERR);
		}
	}
}