package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Gestion;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.controls.Alert;
	
	public class ModeloIncidenteRechazado extends EventDispatcher
	{
		
		private var _listaRechazados:ArrayCollection = new ArrayCollection();
		private var _gestion:Gestion;
		private var _analisisActualizado:Boolean;
		private var _confirmaAceptado:Boolean;
		//Metodo para conseguir Usuarios de las Cotizaciones
		[Bindable(event="listaRechazados")]
		public function get ListaProcedimientos():ArrayCollection{
			return this._listaRechazados;
		}		
		public function setListaProcedimientos ( datos:ArrayCollection ):void{
			this._listaRechazados = FuncionesEstaticas.getInstance().formatoObjetos( datos );				
			dispatchEvent( new Event("listaRechazados") );
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
		public function ModeloIncidenteRechazado(target:IEventDispatcher=null)
		{
			//TODO: implement function
			super(target);
		}
		//Metodo que actualiza la gestion
		[Bindable(event="actualizaAnalisis")]
		public function get ANALISISACTUALIZADO():Boolean{
			return this._analisisActualizado;
		}		
		public function setANALISISACTUALIZADO( datos:Boolean ):void{
			this._analisisActualizado = datos;				
			dispatchEvent( new Event("actualizaAnalisis") );
		}
	
		//Metodo que actualiza la gestion
		[Bindable(event="aceptaRechazado")]
		public function get confirmaAceptado():Boolean{
			return this._confirmaAceptado;
		}		
		public function setConfirmaAceptado( datos:Boolean ):void{
			this._confirmaAceptado = datos;				
			dispatchEvent( new Event("aceptaRechazado") );
		}
		public function generico( objecto:Object, numero:String ):void{
			Alert.show("Error al guardar el Incidente Rechazado");
			trace("Hola");
		}
		public function falloCargarListaRechazados(objecto:Object, numero:String ):void{
			Alert.show("Fallo al cargar los rechazados", "¡Fallo!");
		}
		
	}
}