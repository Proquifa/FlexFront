package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Gestion;
	import mx.utils.ObjectUtil;
	
	public class ModeloAnalisisIncidente extends EventDispatcher
	{
		private var _listaProcedimientos:ArrayCollection;
		private var _listaComboClientes:ArrayCollection;
		private var _listaComboProovedores:ArrayCollection;
		private var _listaComboOrigen:ArrayCollection;
		private var _listaComboProductos:ArrayCollection;
		private var _analisisGuardado:Number;
		private var _verificaProducto:Boolean;
		private var _gestion:Gestion;
		private var _decisionGestion:Boolean;
		private var _analisisActualizado:Boolean
		private var _lecturaDeGestion:Gestion;
		private var _gerentePiloto:Empleado;
		private var _gestionAnalisis:Gestion;
		private var _gestionDecision:Gestion;
		
		public function ModeloAnalisisIncidente(target:IEventDispatcher=null)
		{
			//TODO: implement function
			super(target);
		}
		
		private var _objetoProcedimientos:Object = null;
		
		//Metodo para conseguir Usuarios de las Cotizaciones
		[Bindable(event="listaProcedimientos")]
		public function get ListaProcedimientos():ArrayCollection{
			return this._listaProcedimientos;
		}		
		private var subprocesosAgrupados:ArrayCollection = new ArrayCollection();
		
		public function setListaProcedimientos ( datos:ArrayCollection,_seleccionados:ArrayCollection ):void{
			this._objetoProcedimientos = new Object();
			this.subprocesosAgrupados = new ArrayCollection();
			var objetos:ArrayCollection = new ArrayCollection();
			var temp:ArrayCollection = new ArrayCollection();
			
			temp = ObjectUtil.copy(datos) as ArrayCollection;
			
			
			while(temp.length > 0 ){
				var objtemp:ArrayCollection = new ArrayCollection();
				for(var m:int = 0; m<temp.length ; m++){
					if(m == 0){
						objtemp.addItem(temp[0]);
					}
					else if(temp[0].subProceso == temp[m].subProceso){
						objtemp.addItem(temp[m]);
						temp.removeItemAt(m)
						m = m -1;
					}
				}
				temp.removeItemAt(0);
				objetos.addItem(objtemp);
			}
			this.subprocesosAgrupados = objetos;
			this._listaProcedimientos = datos;		
			
			this._objetoProcedimientos["seleccionados"] = _seleccionados;
			this._objetoProcedimientos["catalogo"] = this.subprocesosAgrupados;
			//dispatchEvent( new Event("listaProcedimientos") );
			dispatchEvent( new Event("listadoProcedimientosAgrupados"));
		}
		
		[Bindable (event="listadoProcedimientosAgrupados")]
		public function get returnProcedimientosAgrupados():Object{
			return this._objetoProcedimientos;
		}
		
		/*public function setListaProcedimientos ( datos:ArrayCollection ):void{
			this._listaProcedimientos = datos;				
			dispatchEvent( new Event("listaProcedimientos") );
		}*/
		//Metodo para las lista Clientes del Combo
		[Bindable(event="listaComboClientes")]
		public function get ListaComboClientes():ArrayCollection{
			return this._listaComboClientes;
		}		
		public function setListaComboClientes( datos:ArrayCollection ):void{
			this._listaComboClientes = datos;				
			dispatchEvent( new Event("listaComboClientes") );
		}
		//Metodo para las lista Proovedores del Combo
		[Bindable(event="listaComboProovedores")]
		public function get ListaComboProovedores():ArrayCollection{
			return this._listaComboProovedores;
		}		
		public function setListaComboProovedores( datos:ArrayCollection ):void{
			this._listaComboProovedores = datos;				
			dispatchEvent( new Event("listaComboProovedores") );
		}
		//Metodo para las lista Origen del Combo
		[Bindable(event="listaComboOrigen")]
		public function get ListaComboOrigen():ArrayCollection{
			return this._listaComboOrigen;
		}		
		public function setListaComboOrigen( datos:ArrayCollection ):void{
			this._listaComboOrigen = datos;				
			dispatchEvent( new Event("listaComboOrigen") );
		}
		//Metodo para la lista de Productos para el Combo
		[Bindable(event="listaComboProductos")]
		public function get ListaComboProductos():ArrayCollection{
			return this._listaComboProductos;
		}		
		public function setListaComboProductos( datos:ArrayCollection ):void{
			this._listaComboProductos = datos;				
			dispatchEvent( new Event("listaComboProductos") );
		}
		//Metodo que informa el guardado del Incidente
		[Bindable(event="guardaExito")]
		public function get GuardadoExitoso():Number{
			return this._analisisGuardado;
		}		
		public function setGuardadoExitoso( datos:Number ):void{
			this._analisisGuardado = datos;				
			dispatchEvent( new Event("guardaExito") );
		}
		//Metodo que informa el product existente
		[Bindable(event="verificaProducto")]
		public function get VERIFICAPRODUCTO():Boolean{
			var respuesta:Boolean = this._verificaProducto;
			this._verificaProducto = false;
			return respuesta;
		}		
		public function setVERIFICAPRODUCTO( datos:Boolean ):void{
			this._verificaProducto = datos;				
			dispatchEvent( new Event("verificaProducto") );
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
		//Metodo que regresa los avances de la Gestion guardada en la parte de la decision
		[Bindable(event="decisionGestion")]
		public function get DECISIONGESTION():Boolean{
			return this._decisionGestion;
		}		
		public function setDECISIONGESTION( datos:Boolean ):void{
			this._decisionGestion = datos;				
			dispatchEvent( new Event("decisionGestion") );
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
		//Metodo que regresa la Gestion para la Navegacion
		[Bindable(event="lecturaDeGestion")]
		public function get LECTURAGESTION():Gestion{
			return this._lecturaDeGestion;
		}		
		public function setLECTURAGESTION( datos:Gestion ):void{
			this._lecturaDeGestion = datos;				
			dispatchEvent( new Event("lecturaDeGestion") );
		}
		//Metodo que regresa el Gerente Piloto
		[Bindable(event="gerentePiloto")]
		public function get GERENTEPILOTO():Empleado{
			return this._gerentePiloto;
		}		
		public function setGERENTEPILOTO( datos:Empleado ):void{
			this._gerentePiloto = datos;				
			dispatchEvent( new Event("gerentePiloto") );
		}
		//Metodo que regresa la validacion de la Gestion para el Analisis
		[Bindable(event="validaAnalisis")]
		public function get VALIDAGESTION():Gestion{
			return this._gestionAnalisis;
		}		
		public function setVALIDAGESTION( datos:Gestion ):void{
			this._gestionAnalisis = datos;				
			dispatchEvent( new Event("validaAnalisis") );
		}
		//Metodo que regresa la validacion de la Gestion para la Decision
		[Bindable(event="validaDecision")]
		public function get VALIDADECISION():Gestion{
			return this._gestionDecision;
		}		
		public function setVALIDADECISION( datos:Gestion ):void{
			this._gestionDecision = datos;				
			dispatchEvent( new Event("validaDecision") );
		}
		public function generico( objecto:Object, numero:String ):void{
			trace("Hola");
		}
		
		public function reset():void{
			this._analisisGuardado = NaN;
			this._verificaProducto = false;
		}
	}
}