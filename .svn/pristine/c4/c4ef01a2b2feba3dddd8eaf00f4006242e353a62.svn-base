package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.controls.Alert;

	public class ModeloCostoNoCalidad extends EventDispatcher
	{
		public function ModeloCostoNoCalidad(target:IEventDispatcher = null)
		{
			super(target);
		}
		
		private var CostosNoCalidad:ArrayCollection = new ArrayCollection();
		private var colaboradores:ArrayCollection = new ArrayCollection();
		private var Incidentes:ArrayCollection = new ArrayCollection();
		private var nivel:String = "";
		private var nombreUsuario:String = "";
		private var bono:Number = 0;
		
		public function result_CostosNoCalidad(_costos:ArrayCollection):void{
			this.CostosNoCalidad = new ArrayCollection();
			for( var i:int; i < _costos.length; i++){
				_costos[i].numFila = i + 1;
			}
			this.CostosNoCalidad = FuncionesEstaticas.getInstance().formatoObjetos( _costos );
			this.dispatchEvent(new Event("result_costos"));
		}
		
		[Bindable (event="result_costos")]
		public function get return_CostosNoCalidad():ArrayCollection{
			return this.CostosNoCalidad;
		}
	
		public function fault_CostosNoCalidad(objeto:Object):void{
			Alert.show("Error al cargar reporte de bonos " + objeto.toString());
		}
		
		public function result_Colaboradores(_colaboradores:ArrayCollection):void{
			this.colaboradores = new ArrayCollection();
			this.colaboradores = _colaboradores;
			if(this.colaboradores.length > 0){
			var b:ArrayCollection = new ArrayCollection();
			//this.colaboradores.addItem(this.colaboradores[this.colaboradores.length - 1]);
			//this.colaboradores.addItem(this.colaboradores[0]);
			var obj:Object = {};
			obj["valor"] = "--TODOS--";
			obj["llave"] = 0;
			//this.colaboradores[0] = obj;
			b.addItem(obj);
			this.colaboradores = new ArrayCollection(b.toArray().concat(this.colaboradores.toArray()))
			}
			this.dispatchEvent(new Event("regresaColaboradores"));
		}
		
		[Bindable (event="regresaColaboradores")]
		public function get return_Colaboradores():ArrayCollection{
			return this.colaboradores;
		}
		
		public function fault_Colaboradores(objeto:Object):void{
			Alert.show("Error al cargar los colaboradores");
			//trace(objeto);
		}
		
		public function result_IncidentesPorUsuario(_datos:ArrayCollection,_nivel:String,nombre:String,_bono:Number):void{
			this.Incidentes = new ArrayCollection();
			this.bono = 0;
			this.bono = _bono;
			this.nombreUsuario = "";
			this.nivel = "";
			for(var m:int = 0; m<_datos.length; m++){
				if(_datos[m].fechaCierre != null){
					if(_nivel == "Operativo"){
						
						_datos[m].fechaCierre.getMonth() < 2 ? _datos[m].periodo = "Ene-Feb": trace();	
						(_datos[m].fechaCierre.getMonth() > 1 && _datos[m].fechaCierre.getMonth() < 4)  ? _datos[m].periodo = "Mar-Abr": trace();
						(_datos[m].fechaCierre.getMonth() > 3 && _datos[m].fechaCierre.getMonth() < 6)  ? _datos[m].periodo = "May-Jun": trace();	
						(_datos[m].fechaCierre.getMonth() > 5 && _datos[m].fechaCierre.getMonth() < 8)  ? _datos[m].periodo = "Jul-Ago": trace();	
						(_datos[m].fechaCierre.getMonth() > 7 && _datos[m].fechaCierre.getMonth() < 10)  ? _datos[m].periodo = "Sep-Oct": trace();	
						(_datos[m].fechaCierre.getMonth() > 9 && _datos[m].fechaCierre.getMonth() < 12)  ? _datos[m].periodo = "Nov-Dic": trace();
						
					}
					if(_nivel == "Gerente" || _nivel == "Directivo"){
						_datos[m].fechaCierre.getMonth() < 6 ? _datos[m].periodo = "Ene-Jun": trace();									
						_datos[m].fechaCierre.getMonth() > 5 ? _datos[m].periodo = "Jul-Dic": trace();									
					}
				}
				_datos[m].numFila = m + 1;
			}
			this.nivel = _nivel;
			this.Incidentes = FuncionesEstaticas.getInstance().formatoObjetos( _datos );
			this.nombreUsuario = nombre;
			this.dispatchEvent(new Event("regresaNivel"));
			this.dispatchEvent(new Event("regresaBonoEvent"));
			this.dispatchEvent(new Event("regresaIncidentes"));
			this.dispatchEvent(new Event("regresaUsuario"));
			
		}
		
		[Bindable (event="regresaUsuario")]
		public function get regresaUsuario():String{
			return this.nombreUsuario;
		}
		
		[Bindable (event="regresaBonoEvent")]
		public function get regresaBono():Number{
			return this.bono;
		}
		
		[Bindable (event="regresaNivel")]
		public function get regresaNivel():String{
			return this.nivel
		}
		
		[Bindable (event="regresaIncidentes")]
		public function get return_IncidentesXUsuario():ArrayCollection{
			return this.Incidentes;
		}
		
		public function fault_IncidentesPorUsuario(objeto:Object):void{
			Alert.show("Fallo al cargar detalle de Consulta");
		}
		
	}
}