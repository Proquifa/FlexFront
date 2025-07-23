package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Gestion;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	import mx.utils.ObjectUtil;
	
	public class ModeloIncidenteConsulta extends EventDispatcher
	{
		private var _consultaIncidente:ArrayCollection;
		private var _incidente:Incidente;
		private var _gestion:Gestion;
		private var _listaAcciones:ArrayCollection;
		private var _ponderacion:Ponderacion;
		private var _historial:ArrayCollection;
		//Metodo para conseguir Usuarios 
		[Bindable(event="consultaIncidentes")]
		public function get ConsultaIncidentes():ArrayCollection{
			return this._consultaIncidente
		}
		
		public function setConsultaIncidentes( datos:ArrayCollection ):void{
			for( var i:int = 0; i<datos.length; i++){
				(datos.getItemAt( i ) as ConsultaIncidente).numFila = i +1 ;
			}
			this._consultaIncidente = datos;
			
			dispatchEvent( new Event("consultaIncidentes") );
		}
		
		//Regresa un Incidente
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
		
		//Metodo que regresa la Lista de Acciones
		[Bindable(event="regresaAcciones")]
		public function get REGRESAACCIONES():ArrayCollection{
			return this._listaAcciones;
		}
		
		public function setREGRESAACCIONES( datos:ArrayCollection ):void{
			this._listaAcciones = datos;				
			dispatchEvent( new Event("regresaAcciones") );
		}
		
		//Metodo que regresa la Ponderacion
		[Bindable(event="regresaPonderacion")]
		public function get REGRESAPONDERACION():Ponderacion{
			return this._ponderacion;
		}
		
		public function setREGRESAPONDERACION( datos:Ponderacion ):void{
			this._ponderacion = datos;				
			dispatchEvent( new Event("regresaPonderacion") );
		}
		
		//Modelo para regresar el Historial del Incidente
		[Bindable(event="regresaHistorial")]
		public function get hitorialIncidnete():ArrayCollection{
			return this._historial;
		}
		
		public function setHitorialIncidnete( datos:ArrayCollection ):void{
			this._historial = new ArrayCollection();
			this._historial =  ObjectUtil.copy(datos) as ArrayCollection;				
			dispatchEvent( new Event("regresaHistorial") );
		}
		
		public function generico( objecto:Object, numero:String ):void{
			trace("Hola");
		}
		public function falloBusuqedaConsulta( objecto:Object, numero:String ):void{
			alertaSingleton.showReintentar("Fallo al traer su consulta de Incidentes","Gestion ConsultaIncidentes");
		}
		public function falloConsultaHistorialInspectorIncidente( objecto:Object, numero:String ):void{
			alertaSingleton.showReintentar("Fallo al consultar el Historial en Inspector","Gestion ConsultaIncidentes");
		}
		public function falloGestion( objecto:Object, numero:String ):void{
			alertaSingleton.showReintentar("Fallo al Cargar la Gestion En Inspector","Gestion ConsultaIncidentes ");
		}
		public function falloVerificacion( objecto:Object, numero:String ):void{
			alertaSingleton.showReintentar("Fallo al Cargar la Verificacion En Inspector","Gestion ConsultaIncidentes ");
		}
		public function falloPonderacion( objecto:Object, numero:String ):void{
			alertaSingleton.showReintentar("Fallo al Cargar la Ponderacion En Inspector","Gestion ConsultaIncidentes ");
		}
		public function falloHistorial( objecto:Object, numero:String ):void{
			alertaSingleton.showReintentar("Fallo al Cargar el Historial En Inspector","Gestion ConsultaIncidentes ");
		}
		public function ModeloIncidenteConsulta(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}