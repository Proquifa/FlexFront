package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.notaCredito
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.notaCredito.EventoConsultaNotaDeCredito;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Util;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloConsultaNotaDeCredito extends EventDispatcher
	{
		public function ModeloConsultaNotaDeCredito(target:IEventDispatcher = null)
		{
			super(target);
		}
		
		private var _notaDeCredito:ArrayCollection;
		private var _busquedaRapida:ArrayCollection;
		private var _sql:Query;
		private var _chartClientes:ArrayCollection;
		private var _chartFPor:ArrayCollection;
		private var _chartEstado:ArrayCollection;
		private var _grafica:Boolean = false;
		private var _cambios:Boolean = false;
		
		public function setListaNotaDeCredito($array:ArrayCollection):void{
			_notaDeCredito = $array;
			for (var i:int = 0; i< _notaDeCredito.length; i++){
				_notaDeCredito[i].numFila = i + 1;
			}
			
			_sql = new Query(_notaDeCredito,["nombreCliente","fpor","estado","factura","akFolio","importe"]);
			_cambios = true;
			if(_grafica){
				generarGraficas(); 
			}
			dispatchEvent(new Event("obtenerNotaDeCreditoConsultaNotaDeCredito"));
		}
		
		public function generarGraficas():void{
			_chartClientes = new ArrayCollection;
			
			_chartClientes = generateChartConsulta("nombreCliente",null,["nombreCliente",null,null,null,null,null]);
			_chartFPor = generateChartConsulta("fpor",null,[null,"fpor",null,null,null,null]);
			_chartEstado = generateChartConsulta("estado",null,[null,null,"estado",null,null,null]);
			
			if (_grafica && _cambios){
				mostrarGraficas();
			}
		}
		
		public function mostrarGraficas():void{
			dispatchEvent(new Event("regresaGraficaCliente"));
			dispatchEvent(new Event("regresaGraficaEstado"));
			dispatchEvent(new Event("regresaGraficaFPor"));
			_cambios = false;
		}
		
		private function generateChartConsulta($propiedad:String, $filtro:String, $consulta:Array):ArrayCollection{
			var arrayProvider:ArrayCollection = new ArrayCollection();
			if (_sql.indexObject[$propiedad] != null ){
				var posIdx:int = $consulta.indexOf($propiedad);
				for(var key:String in _sql.indexObject[$propiedad] ){
					var consultaReformulada:Array = ObjectUtil.copy($consulta) as Array;
					if (posIdx != -1 ){
						consultaReformulada[posIdx] = key;
					}
					if ($filtro != null){
						consultaReformulada[posIdx] = $filtro;
					}
					if (posIdx != -1 && $filtro == null || key == $filtro){
						var cachoPie:ResumenConsulta = new ResumenConsulta();
						cachoPie.etiqueta = key;
						var punterosFiltro:Array = _sql.getPunteros( consultaReformulada );
						cachoPie.clientes = _sql.getValoresCampo("nombreCliente",punterosFiltro).length;
						cachoPie.factura = _sql.getValoresCampo("factura",punterosFiltro).length;
						cachoPie.total = _sql.getSumarCampo("importe", punterosFiltro); 
						cachoPie.notaDeCredito = _sql.getValoresCampo("akFolio",punterosFiltro).length;
						arrayProvider.addItem(cachoPie);
					}
				}
			}
			return Util.sortArray(arrayProvider,"total");
		}
		
		[Bindable(event="obtenerNotaDeCreditoConsultaNotaDeCredito")]
		public function get listaNotaDeCredito():ArrayCollection{
			if (_notaDeCredito != null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtenerNotaDeCreditoConsultaNotaDeCredito");
				}
				return this._notaDeCredito;
			}
			return this._notaDeCredito;
		}
		
		public function setListaRapida($array:ArrayCollection):void
		{
			_busquedaRapida = $array;
			for (var i:int = 0; i< _busquedaRapida.length; i++){
				_busquedaRapida[i].numFila = i + 1;
			}
			
			_sql = new Query(_busquedaRapida,["nombreCliente","fpor","estado","factura","akFolio","importe"]);
			_cambios = true;
			if(_grafica){
				generarGraficas(); 
			}
			dispatchEvent(new Event("obtenerBusquedaRapidaConsultaNotaDeCredito"));
		}
		
		[Bindable(event="obtenerBusquedaRapidaConsultaNotaDeCredito")]
		public function get listaNotaDeCreditoRapida():ArrayCollection{
			if (_busquedaRapida != null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"btnGraficaTabla");
				}
				return this._busquedaRapida;
			}
			return this._busquedaRapida;
		}
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				try
				{
					if((EventoConsultaNotaDeCredito[$tiposEventos[i]])== null){
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
			
			dispatchEvent( new Event("actualizaEsperaYBloqueoModeloConsultaNotaCredito") );
		}
		[Bindable(event="actualizaEsperaYBloqueoModeloConsultaNotaCredito")]
		public function get actualizarEstadoDeEsperaYBloqueo():Object
		{
			return actualizarEspera;
		}
		
		private var _tipo:String;
		public function setBotoneraConsultaNoteCredito($tipo:String):void{
			_tipo = $tipo;
			if (_tipo == "Rapida"){
				_busquedaRapida == null ? _busquedaRapida = new ArrayCollection() : _busquedaRapida;
				if (_busquedaRapida != null ){
					_sql = new Query(_busquedaRapida,["nombreCliente","fpor","estado","factura","akFolio","importe"]);
				}
			}else{
				if (_notaDeCredito != null){
					_sql = new Query(_notaDeCredito,["nombreCliente","fpor","estado","factura","akFolio","importe"]);
				}
			}
			_cambios = true;
			if(_grafica){
				generarGraficas(); 
			}
			
			dispatchEvent( new Event("setBusquedaConsultaNotaDeCredito") );
		}
		
		[Bindable(event="setBusquedaConsultaNotaDeCredito")]
		public function get busquedaConsultaNotaDeCredito():String{
			return _tipo;
		}
		
		public function faultError(error:Object):void{
			if(actualizarEspera != null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"");
			}
			alertaSingleton.showReintentar(error.toString(), catalogoAlertas.TIT_ERR);
		}
		
		[Bindable(event="regresaGraficaCliente")]
		public function get enviarGraficaClientes():ArrayCollection{
			return _chartClientes;
		}
		
		[Bindable(event="regresaGraficaFPor")]
		public function get enviarGraficaFPor():ArrayCollection{
			return _chartFPor;
		}
		
		[Bindable(event="regresaGraficaEstado")]
		public function get enviarGraficaEstado():ArrayCollection{
			return _chartEstado;
		}
		
		public function setCambios():void{
			dispatchEvent(new Event("regresaCambiosConsultaNotaDeCredito"));
		}
		
		[Bindable(event="regresaCambiosConsultaNotaDeCredito")]
		public function get cambios():Boolean{
			return _cambios;
		}
		
		public function setGrafica():void{
			_grafica = !_grafica;
		}
		
	}
}