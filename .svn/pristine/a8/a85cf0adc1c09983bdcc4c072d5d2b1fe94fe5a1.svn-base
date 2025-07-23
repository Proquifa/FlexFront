package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.asistencia
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.asistencia.EventoConsultaAsistencia;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Util;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloConsultaAsistencia extends EventDispatcher
	{
		public function ModeloConsultaAsistencia(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		private var _asistenciaRapida:ArrayCollection;
		private var _sql:Query;
		private var _chartArea:ArrayCollection;
		private var _chartDepartamento:ArrayCollection;
		private var _chartCategoria:ArrayCollection;
		private var _chartChecada:ArrayCollection;
		private var _chartIncidencia:ArrayCollection;
		private var _chartAsistencia:ArrayCollection;
		
		private var _asistencias:ArrayCollection;
		private var _grafica:Boolean = false;
		private var _cambios:Boolean = false;
		private var _total:Number;
		public function setListaAsistencias($array:ArrayCollection):void{
			_asistencias = new ArrayCollection;
			_asistencias = $array;
			for (var i:int = 0; i < _asistencias.length; i++){
				(_asistencias[i] as Asistencia).numFila = i + 1;
			}
			
			_sql = new Query(_asistencias,["nombreCorto","tipoChecada","incidencia", "depto", "categoria", "area"]); 
			_cambios = true;
			if (_grafica){
				generarGraficas();
			}
			
			dispatchEvent(new Event("obtenerAsistenciasConsultaAsistencia"));
		}
		
		public function generarGraficas():void{
			
			//_sql = new Query(_asistencias,["nombreCorto","tipoChecada","incidencia", "depto", "categoria", "area"]);
			
			_chartArea = new ArrayCollection;
			_chartAsistencia = new ArrayCollection;
			_chartCategoria = new ArrayCollection;
			_chartChecada = new ArrayCollection;
			_chartDepartamento = new ArrayCollection;
			_chartIncidencia = new ArrayCollection;
			
			var temp:Array = _sql.getPunteros(["nombreCorto",null,null,null,null,null,null],"nombreCorto");
			_total = temp.length;
			_chartChecada = generateChartConsulta("tipoChecada",null,[null,"tipoChecada",null,null,null,null]);
			_chartIncidencia = generateChartConsulta("incidencia",null,[null,null,"incidencia",null,null,null]);
			_chartDepartamento = generateChartConsulta("depto",null,[null,null,null,"depto",null,null]);
			_chartCategoria = generateChartConsulta("categoria",null,[null,null,null,null,"categoria",null]);
			_chartArea = generateChartConsulta("area",null,[null,null,null,null,null,"area"]);
			_chartAsistencia = asistenciaVsInasistencia([null,null,"FALTA",null,null,null]);
			
			if (_grafica && _cambios){
				mostrarGraficas();
			}
			
		}
		
		public function asistenciaVsInasistencia($consulta:Array):ArrayCollection{
			var arrayProvider:ArrayCollection = new ArrayCollection();
			var cachoPie:ResumenConsulta = new ResumenConsulta();
			cachoPie.etiqueta = "INASISTENCIA";
			var punterosFiltro:Array = _sql.getPunteros($consulta);
			var totalColaboradores:Array = _sql.getValoresCampo("nombreCorto",punterosFiltro);
			cachoPie.totalColaboradores = totalColaboradores.length;
			cachoPie.totalChecadas = punterosFiltro.length;
			cachoPie.totalInasistencia = punterosFiltro.length;
			cachoPie.total = _total;
			arrayProvider.addItem(cachoPie);
			cachoPie = new ResumenConsulta();
			cachoPie.etiqueta = "ASISTENCIA";
			var asistencias:Number = _sql.universo.length - punterosFiltro.length;
			cachoPie.totalChecadas = asistencias;
			cachoPie.totalColaboradores = _total - totalColaboradores.length;
			cachoPie.totalAsistencia =  _total - totalColaboradores.length;;
			cachoPie.total = _total;
			arrayProvider.addItem(cachoPie);
			return arrayProvider;
		}
		
		public function mostrarGraficas():void{
			dispatchEvent(new Event("regresaGraficaArea"));
			dispatchEvent(new Event("regresaGraficaCategoria"));
			dispatchEvent(new Event("regresaGraficaDepartamento"));
			dispatchEvent(new Event("regresaGraficaChecada"));
			dispatchEvent(new Event("regresaGraficaIncidencia"));
			dispatchEvent(new Event("regresaGraficaAsistencia"));
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
						var punterosFiltro:Array = _sql.getPunteros(consultaReformulada);
						var totalColaboradores:Array = _sql.getValoresCampo("nombreCorto",punterosFiltro);
						var totalChecadas:Array = _sql.getValoresCampo("tipoChecada",punterosFiltro);
						cachoPie.totalColaboradores = totalColaboradores.length;
						cachoPie.totalChecadas = punterosFiltro.length;
						cachoPie.total = _total;
						arrayProvider.addItem(cachoPie);
					}
				}
			}
			return Util.sortArray(arrayProvider,"totalChecadas");
		}
		
		[Bindable(event="obtenerAsistenciasConsultaAsistencia")]
		public function get listaAsistencias():ArrayCollection{
			if (_asistencias != null)
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtenerAsistenciasConsultaAsistencia");
				}
			return this._asistencias;
		}
		
		public function setBusquedaRapida(event:EventoConsultaAsistencia):void{
			_asistenciaRapida = new ArrayCollection;
			dispatchEvent(new Event("obtenerBusquedaRapidaConsultaAsistencia"));
		}
		
		[Bindable(event="obtenerBusquedaRapidaConsultaAsistencia")]
		public function get busquedaRapidaColaborador():ArrayCollection{
			if (_asistenciaRapida != null)
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtenerBusquedaRapidaConsultaAsistencia");
				}
			return this._asistenciaRapida;
		}
		
		private var _busqueda:ArrayCollection;
		public function setBusqueda(event:EventoConsultaAsistencia):void{
			_busqueda = new ArrayCollection;
			if (event.categoria == "rapida"){
				_busqueda = _asistenciaRapida;
			}
			else{
				_busqueda = _asistencias;
			}
			
			dispatchEvent(new Event("obtenerBusquedaConsultaAsistencia"));
		}
		
		[Bindable(event="obtenerBusquedaConsultaAsistencia")]
		public function get obtenerBusqueda():ArrayCollection{
			if (_busqueda != null)
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtenerBusquedaConsultaAsistencia");
				}
			return this._busqueda;
		}
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				try
				{
					if((EventoConsultaAsistencia[$tiposEventos[i]])== null){
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
			
			dispatchEvent( new Event("actualizaEsperaYBloqueoModeloConsultaAsistencia") );
		}
		[Bindable(event="actualizaEsperaYBloqueoModeloConsultaAsistencia")]
		public function get actualizarEstadoDeEsperaYBloqueo():Object
		{
			return actualizarEspera;
		}
		
		[Bindable(event="regresaGraficaArea")]
		public function get enviarGraficaArea():ArrayCollection{
			return _chartArea;
		}
		
		[Bindable(event="regresaGraficaCategoria")]
		public function get enviarGraficaCategoria():ArrayCollection{
			return _chartCategoria;
		}
		
		[Bindable(event="regresaGraficaChecada")]
		public function get enviarGraficaChecada():ArrayCollection{
			return _chartChecada;
		}
		
		[Bindable(event="regresaGraficaDepartamento")]
		public function get enviarGraficaDepartamento():ArrayCollection{
			return _chartDepartamento;
		}
		
		[Bindable(event="regresaGraficaIncidencia")]
		public function get enviarGraficaIncidencia():ArrayCollection{
			return _chartIncidencia;
		}
		
		[Bindable(event="regresaGraficaAsistencia")]
		public function get enviarGraficaAsistencia():ArrayCollection{
			return _chartAsistencia;
		}
		
		public function setGrafica():void{
			_grafica = !_grafica;
		}
		
		public function setCambios():void{
			dispatchEvent(new Event("regresaCambiosConsultaAsistencia"));
		}
		
		[Bindable(event="regresaCambiosConsultaAsistencia")]
		public function get cambios():Boolean{
			return _cambios;
		}
		
		public function faultError(error:Object):void{
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"");
			}
			alertaSingleton.showReintentar( error.toString(), catalogoAlertas.TIT_ERR);
		}
	}
}