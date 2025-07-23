package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Gestion;
	
	public class ModeloIncidenteProgramarAccion extends EventDispatcher
	{
		private var _listaDeUsuarios:ArrayCollection;
		private var _confrimaRegistro:Boolean;
		private var _eliminaRegistro:Boolean;
		private var _listaAcciones:ArrayCollection;
		private var _listaAccionesLectura:ArrayCollection;
		private var _finalizarAccion:Boolean;
		private var _analisisActualizado:Boolean;
		private var _validaAcciones:Boolean;
		private var _gestion:Gestion;
		private var _incidenteEjecutado:Incidente = new Incidente();
		
		public function ModeloIncidenteProgramarAccion(target:IEventDispatcher=null)
		{
			//TODO: implement function
			super(target);
		}
		//Metodo para conseguir Usuarios 
		[Bindable(event="listaUsuarios")]
		public function get LISTAUSUARIOS():ArrayCollection{
			return this._listaDeUsuarios
		}
		
		public function setLISTAUSUARIOS( datos:ArrayCollection ):void{
			this._listaDeUsuarios = datos;				
			dispatchEvent( new Event("listaUsuarios") );
		}
		//Metodo para confirmarRegistro
		[Bindable(event="confirmaRegistro")]
		public function get CONFIRMAREGISTRO():Boolean{
			return this._confrimaRegistro;
		}
		
		public function setCONFIRMAREGISTRO( datos:Boolean ):void{
			this._confrimaRegistro = datos;				
			dispatchEvent( new Event("confirmaRegistro") );
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
		//Metodo que regresa la Lista de Acciones
		[Bindable(event="regresaAccionesLectura")]
		public function get REGRESAACCIONESLECTURA():ArrayCollection{
			return this._listaAccionesLectura;
		}
		
		public function setREGRESAACCIONESLECTURA( datos:ArrayCollection ):void{
			this._listaAccionesLectura = datos;				
			dispatchEvent( new Event("regresaAccionesLectura") );
		}
		
		//Finalizar Accion
		[Bindable(event="finalizarAccion")]
		public function get FINALIZARACCION():Incidente{
			return this._incidenteEjecutado;
		}
		
		public function setFINALIZARACCION(incidenteEjecutado:Incidente, datos:Boolean ):void{
			if(datos == true){
				this._incidenteEjecutado = new Incidente();
				this._incidenteEjecutado = incidenteEjecutado;
				//this._finalizarAccion = datos;				
				dispatchEvent( new Event("finalizarAccion") );
			}
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
		
		//Metodo que regresa la Validacion  de Acciones existentes
		[Bindable(event="validaAcciones")]
		public function get VALIDAACCIONES():Boolean{
			return this._validaAcciones;
		}
		
		public function setVALIDAACCIONES( datos:Boolean ):void{
			this._validaAcciones = datos;				
			dispatchEvent( new Event("validaAcciones") );
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
	}
}