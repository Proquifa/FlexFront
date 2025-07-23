package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Gestion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.IncidenteLineaDeTiempo;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloGestionIncidentes extends EventDispatcher
	{
		public var incidente:Incidente = new Incidente();
		private var _listaIncidente:ArrayCollection;
		private var _empleadoPorId:Empleado;
		private var _marcadoresPorId:ArrayCollection;
		private var _listaEmpleados:ArrayCollection;
		private var _redireccionaEmpleado:Boolean;
		private var _incidente:Incidente;
		private var _gestion:Gestion;
		private var _gestionXUbicacion:Gestion;
		
		public function ModeloGestionIncidentes(target:IEventDispatcher=null)
		{
			//TODO: implement function
			super(target);
		}
		
		
		
		//Metodo para conseguir Usuarios de las Cotizaciones
		[Bindable(event="listaIncidente")]
		public function get ListaIncidente():ArrayCollection{
			return this._listaIncidente
		}
		
		public function setListaIncidente ( datos:ArrayCollection ):void{
			var m:int = 0;
			for( var d:int = 0; d < datos.length; d++ ){
				if(datos[d].folio != null){
					m = m + 1;
					datos[d].numFila = m;	
				}
			}
			this._listaIncidente = FuncionesEstaticas.getInstance().formatoObjetos(datos,"dd/MMM/yyyy");				
			dispatchEvent( new Event( "listaIncidente" ) );
		}
		//Metodo para conseguir Usuarios de las Cotizaciones
		[Bindable(event="empleadoPorId")]
		public function get EmpleadoPorId():Empleado{
			return this._empleadoPorId;
		}
		
		public function setEmpleadoPorId ( datos:Empleado ):void{
			this._empleadoPorId = datos;				
			dispatchEvent( new Event( "empleadoPorId" ) );
		}
		
		//Metodo para conseguir marcadores por usuario
		
		public function setMarcadoresPorId ( marcador:ArrayCollection ):void{
			this._marcadoresPorId = marcador;				
			dispatchEvent( new Event( "marcadoresPorId" ) );
		}
		
		[Bindable(event="marcadoresPorId")]
		public function get marcadoresPorId():ArrayCollection{
			return this._marcadoresPorId;
		}
		
		
		//Metodo para conseguir Usuarios de las Cotizaciones
		[Bindable(event="listaEmpleados")]
		public function get ListaEmpleados():ArrayCollection{
			return this._listaEmpleados;
		}
		
		public function setListaEmpleados ( datos:ArrayCollection ):void{
			this._listaEmpleados = datos;				
			dispatchEvent( new Event( "listaEmpleados" ) );
		}
		//Metodo para confirmar pendiente redireccionado
		[Bindable(event="pendienteRedireccionadoModeloIncidente")]
		public function get ConfirmaRedireccion():Boolean{
			return this._redireccionaEmpleado;
		}
		
		public function setConfirmaRedireccion ( datos:Boolean ):void{
			if( datos == false){
				alertaSingleton.show(catalogoAlertas.INCIDENTE_ADV_redireccionIncidente,catalogoAlertas.TIT_ADV_atencion);
				return;
			}
			this._redireccionaEmpleado = datos;				
			dispatchEvent( new Event( "pendienteRedireccionadoModeloIncidente" ) );
		}
		//REgresa un Incidente
		[Bindable(event="regresaIncidente")]
		public function get RegeresaIncidente():Incidente{
			return this._incidente;
		}
		
		public function setRegeresaIncidente ( datos:Incidente ):void{
			this._incidente = datos;				
			dispatchEvent( new Event( "regresaIncidente" ) );
		}
		//Metodo que regresa los avances de la Gestion
		[Bindable(event="regresaGestion")]
		public function get REGRESAGESTION():Gestion{
			return this._gestion;
		}		
		public function setREGRESAGESTION( datos:Gestion ):void{
			this._gestion = datos;				
			dispatchEvent( new Event("regresaGestion") );
		}
		//Metodo que regresa los avances de la Gestion busacada por Ubicacion
		[Bindable(event="regresaGestionXUbicacion")]
		public function get REGRESAGESTIONUBICACION():Gestion{
			return this._gestionXUbicacion;
		}		
		public function setREGRESAGESTIONUBICACION( datos:Gestion ):void{
			this._gestionXUbicacion = datos;				
			dispatchEvent( new Event("regresaGestionXUbicacion") );
		}

		//Metodo que regresa el cambio de Origen
		private var _cambio:Number
		public function setRegistraCambioOrigen(cambioOrigen:Number ):void{
			this._cambio = cambioOrigen;				
			dispatchEvent( new Event("regresaCambioDeOrigen") );
		}
		[Bindable(event="regresaCambioDeOrigen")]
		public function get regresaCambioOrigen():Number{
			return this._cambio;
		}
		
		//Metodo para confirmar registrio de marcadores
		private var _marcador:Boolean
		public function setAgrupaMarcadores(marcador:Boolean):void{
			this._marcador = marcador;				
			dispatchEvent( new Event("confirmacionListaMarcadores") );
		}
		[Bindable(event="confirmacionListaMarcadores")]
		public function get agrupaMarcadores():Boolean{
			return this._marcador;
		}
		
		//Metodo para obtener Linea de Tiempo
		private var _lineTiempo:IncidenteLineaDeTiempo = new IncidenteLineaDeTiempo();
		private var _linea:ArrayCollection ;
		public function setLineaTiempoIncidente(linea:ArrayCollection):void{
			this._linea = new ArrayCollection();
			this._linea = linea;
			dispatchEvent( new Event("confirmacionLineaDeTiempo") );
		}
		[Bindable(event="confirmacionLineaDeTiempo")]
		public function get lineaTiempoIncidente():ArrayCollection{
			return this._linea;
		}
		
		public function resetLinea(objeto:Object):void{
			this._linea = new ArrayCollection();
		}
		
		public function faultService($error:Object):void{
			alertaSingleton.show("Error en el servicio: "+$error, "Error");
		}
		
		public function generico( objecto:Object):void{
			trace("Hola");
		}
		
		public function reset():void{
			this._incidente = null;
		}
	}
}