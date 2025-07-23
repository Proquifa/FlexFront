package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.admon
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.admon.EventoSubproceso;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.admon.objetos.Funcion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.admon.objetos.Proceso;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.admon.objetos.SubProceso;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.DatosGlobales;
	import mx.controls.Alert;
	import mx.utils.ObjectUtil;
	
	public class ModeloCatalogos extends EventDispatcher
	{
		
		
		public var datos_Procesos:ArrayCollection;
		public var Titulo_Proceso:String;
		public var datos_Empleados:ArrayCollection = new ArrayCollection();
		private var subprocesoeliminado:SubProceso;
		private var subprocesocreado:SubProceso;
		private var subprocesoactualizado:SubProceso;
		private var procesoactualizado:Proceso;
		private var detallesubproceso:SubProceso;
		private var datos_Funciones:ArrayCollection;
		private var datos_Usuarios:ArrayCollection;
		private var cat_funciones:ArrayCollection = new ArrayCollection();
		private var objetoFuncionEmpleadoEliminado:Object = {};
		private var objetoFuncionEmpleadoCreado:Object = {};
		private var objetoasociarSubprocesoFunciones:Object = {};
		private var datos_catalogo:Object = {};
		private var accion:String = "";
		
		private var catGerentes:ArrayCollection = new ArrayCollection();
		
		public function ModeloCatalogos(target:IEventDispatcher = null)
		{
			this.datos_Procesos = new ArrayCollection();
			this.datos_Empleados = new ArrayCollection();
			this.datos_Usuarios = new ArrayCollection();
			super(target);
		}
		
		/*[Bindable (event="cambio")]
		public function get regresa_datos():ObjetoPrueba{
			//Alert.show("regresa datos");
			return this.datos_Procesos;
		}
		
		public function result_datos(objeto:ObjetoPrueba):void{
			//Alert.show("trajo datos");
			this.datos = objeto; 
			this.dispatchEvent( new Event("cambio"));
		}*/
		
		[Bindable (event="regresaCatalogo")]
		public function get return_regresacatalogo():ArrayCollection{
			return this.datos_Empleados;
		}
		
		public function result_regresacatalogo():void{
			this.dispatchEvent(new Event("regresaCatalogo"));
		}
		
		
		[Bindable (event="resultDatos")]
		public function get return_Procesos():Object{
			var objeto:Object = {};
			objeto["Procesos"] = this.datos_Procesos;
			objeto["Titulo"] = this.Titulo_Proceso;
			objeto["accion"] = this.accion;
			return objeto;
			//return this.datos_Procesos;
		}
	
		
		public function result_obtenerProcesos(_dataprovider:ArrayCollection,_titulo:String):void{
			this.accion = "traer";
			this.datos_Procesos = new ArrayCollection();
			this.datos_catalogo = null;
			this.Titulo_Proceso = _titulo;
			for(var m:int=0; m<_dataprovider.length;m++){
				var _proceso:Proceso = new Proceso();
				_proceso.set_Proceso(_dataprovider[m]);
				this.datos_Procesos.addItem(_proceso);
			}
			
			this.dispatchEvent(new Event("resultDatos"));	
		}
		
		public function fault_obtenerProcesos(objeto:Object):void{
			Alert.show("Problemas al cargar Procesos");
			
		}
		
		/*[Bindable (event="actualizarDatos")]
		public function get return_actualizarProcesos():Object{
			var objeto:Object = {};
			objeto["Procesos"] = this.datos_Procesos;
			objeto["Titulo"] = this.Titulo_Proceso;
			return objeto;
			//return this.datos_Procesos;
		}*/
	
		public function result_actualizarobtenerProcesos(_dataprovider:ArrayCollection):void{
			this.accion = "actualizar";
			this.datos_Procesos = new ArrayCollection();
			//this.Titulo_Proceso = _titulo;
			for(var m:int=0; m<_dataprovider.length;m++){
				var _proceso:Proceso = new Proceso();
				_proceso.set_Proceso(_dataprovider[m]);
				this.datos_Procesos.addItem(_proceso);
			}
			
			this.dispatchEvent(new Event("resultDatos"));	
		}
		
		
		[Bindable (event="resultEmpleados")]
		public function get return_Empleados():ArrayCollection{
			return this.datos_Empleados;
			
		}
		
		public function result_obtenerEmpleados(_dataprovider:ArrayCollection):void{
			this.datos_Empleados = new ArrayCollection();
			this.catGerentes = new ArrayCollection();
			DatosGlobales.getInstance().catGerentes = new ArrayCollection();
			
			if(_dataprovider.length >0){
				for(var m:int = 0; m<_dataprovider.length;m++){
					var _empleado:Empleado = new Empleado();
					_empleado.setEmpleado(_dataprovider[m]);
					this.datos_Empleados.addItem(_empleado);
					//trace("\n " + _empleado.nivelGeneral + " " + _empleado.nombre);
					if(_empleado.nivelGeneral == "Gerente" || _empleado.nivelGeneral == "Directivo"){
						this.catGerentes.addItem(ObjectUtil.copy(_empleado) as Empleado);
					}
				}
				//this.datos_Empleados.addItem(this.catGerentes);
				DatosGlobales.getInstance().catGerentes =  ObjectUtil.copy(this.catGerentes) as ArrayCollection;
				this.dispatchEvent(new Event("resultEmpleados"));
			}
			
		}
		
		
		public function fault_obtenerEmpleados(objeto:Object):void{
			Alert.show("Problemas al cargar Usuarios");
		}
		
		
		[Bindable (event="resultCrearSubproceso")]
		public function get return_CrearSubproceso():SubProceso{
			//trace("entro");
			return this.subprocesocreado;
		}
		
		
		public function result_crearsubproceso(_idsubproceso:int,subprocesoenviado:SubProceso):void{
			this.subprocesocreado = new SubProceso();
			this.subprocesocreado.idProceso = subprocesoenviado.idProceso;
			this.subprocesocreado.nombre = subprocesoenviado.nombre;
			this.subprocesocreado.idSubproceso = _idsubproceso;
			this.dispatchEvent(new Event("resultCrearSubproceso"));
		}
		
		
		public function fault_crearsubproceso(objecto:Object):void{
			Alert.show("Error al crear Subproceso");
		}
		
		
		
		[Bindable (event="resultEliminarSubproceso")]
		public function get return_EliminarSubproceso():SubProceso{
			return this.subprocesoeliminado;
		}
		
		public function result_eliminarsubproceso(eliminado:Boolean,_subproceso:SubProceso):void{
			this.subprocesoeliminado = new SubProceso();
			if(eliminado == true){
				this.subprocesoeliminado = _subproceso;
				this.dispatchEvent(new Event("resultEliminarSubproceso"));
			}
		}
		
		public function fault_eliminarsubproceso(objeto:Object):void{
			Alert.show("Error al eliminar Subproceso");
		}
		
		
		[Bindable (event="resultActualizarProceso")]
		public function get return_ActualizarProceso():Proceso{
			return this.procesoactualizado;	
		}
		
		public function result_actualizarproceso(Resultado:Boolean,_proceso:Proceso):void{
			trace(Resultado.toString());
			this.procesoactualizado = new Proceso();
			this.procesoactualizado = _proceso;
			this.dispatchEvent(new Event("resultActualizarProceso"));
		}
		
		
		public function fault_actualizarproceso(objeto:Object):void{
			Alert.show("Error al actualizar Proceso");
		}
		
		[Bindable (event="resultObtenerFunciones")]
		public function get return_ObtenerFunciones():Object{
			var objeto:Object = {};
			objeto["Funciones"] = this.datos_Funciones;
			objeto["Subproceso"] = this.detallesubproceso;
			objeto["Catalogo"] = this.datos_Usuarios;
			return objeto;
		}
		
		
		
		public function result_obtenerfunciones(Funciones:ArrayCollection,_subproceso:SubProceso):void{
			this.detallesubproceso = new SubProceso();
			this.detallesubproceso = _subproceso;
			this.datos_Funciones = new ArrayCollection();
			for(var m:int = 0; m<Funciones.length;m++){
				var nuevo:Funcion = new Funcion();
				nuevo.setFunction(Funciones[m]);
				nuevo.setidUsuarios(this.datos_Usuarios);
				this.datos_Funciones.addItem(nuevo);
			}
			
			this.dispatchEvent(new Event("resultObtenerFunciones"));
		}
		
		public function fault_obtenerfunciones(objeto:Object):void{
			Alert.show("Error al cargar las funciones para este proceso");
		}
		
		
		public function result_obtenerUsuarios(_dataprovider:ArrayCollection):void{	
			this.datos_Usuarios = new ArrayCollection();
			for(var m:int = 0; m<_dataprovider.length;m++){
				var _empleado:Empleado = new Empleado();
				_empleado.setEmpleado(_dataprovider[m]);
				this.datos_Usuarios.addItem(_empleado);
			}
			this.dispatchEvent(new Event("resultUsuarios"));
			
		}
		
		
		public function fault_obtenerUsuarios(objeto:Object):void{
			Alert.show("Problemas al cargar Usuarios");
		}
		
		[Bindable (event="result_catfunciones")]
		public function get return_catfunciones():ArrayCollection{
			return this.cat_funciones;
		}
		
		public function result_funciones(_funciones:ArrayCollection,_idProceso:int):void{
			var subprocesos:ArrayCollection = new ArrayCollection();
			var funciones:ArrayCollection = new ArrayCollection();
			this.cat_funciones = new ArrayCollection();
			
			for(var r:int = 0; r<_funciones.length; r++){
				var nuevo:Funcion = new Funcion();
				nuevo.setFunction(_funciones[r]);
				funciones.addItem(nuevo);
			}
			
			for(var m:int = 0; m<this.datos_Procesos.length;m++){
				//if(this.datos_Procesos[m].idProceso == _idProceso){
				subprocesos = this.datos_Procesos[m].subprocesos;
				//}
			
				for(var n:int = 0; n<funciones.length;n++){
					for(var p:int = 0; p<subprocesos.length; p++){
						if(funciones[n].subproceso == subprocesos[p].idSubproceso){
							funciones[n].descripcionSubproceso = subprocesos[p].nombre;
						}
					}
				}
			}
			this.cat_funciones = funciones;
			this.dispatchEvent(new Event("result_catfunciones"));
			//trace(_funciones.length);
		}
		
		public function fault_funciones(objeto:Object):void{
			Alert.show("Error al cargar funciones");
		}
		
		
		
		
		
		
		[Bindable (event="return_crearFuncionEmpleado")]
		public function get return_AsociarFuncionEmpleado():Object{
			return this.objetoFuncionEmpleadoCreado;
		}
		
		
		public function result_AsociarFuncionEmpleado(resultado:Boolean,idfuncion:int,empleado:Empleado):void{
			this.objetoFuncionEmpleadoCreado = {};
			this.objetoFuncionEmpleadoCreado["idfuncion"] = null;
			this.objetoFuncionEmpleadoCreado["empleado"] = null;
			this.objetoFuncionEmpleadoCreado["catalogo"] = null;
			
			if(resultado == true){
				for(var m:int = 0; m<this.datos_Usuarios.length;m++){
					if(datos_Usuarios[m].clave == empleado.clave ){
						datos_Usuarios[m].idFuncion = idfuncion;
					}
				}
				this.objetoFuncionEmpleadoCreado["idfuncion"] = idfuncion;
				this.objetoFuncionEmpleadoCreado["empleado"] = empleado;
				this.objetoFuncionEmpleadoCreado["catalogo"] = this.datos_Usuarios;
				this.dispatchEvent(new Event("return_crearFuncionEmpleado"));
			}
			//Alert.show("hecho");
		}
		
		public function fault_AsociarFuncionEmpleado(objeto:Object):void{
			Alert.show("Error al insertar Usuario en Función");
		}
		
		[Bindable (event="return_eliminarFuncionEmpleado")]
		public function get return_BorrarEmpleadoFuncion():Object{
			return this.objetoFuncionEmpleadoEliminado;
		}	
	
		public function result_BorrarEmpleadoFuncion(resultado:Boolean,idfuncion:int,_empleado:Empleado):void{
			this.objetoFuncionEmpleadoEliminado = new Object();
			if(resultado == true){
				for(var m:int = 0; m<this.datos_Usuarios.length;m++){
				if(datos_Usuarios[m].clave == _empleado.clave ){
					datos_Usuarios[m].idFuncion = 0;
					}
				}
				this.objetoFuncionEmpleadoEliminado["idfuncion"] = idfuncion;
				this.objetoFuncionEmpleadoEliminado["empleado"] = _empleado;
				this.objetoFuncionEmpleadoEliminado["catalogo"] =  this.datos_Usuarios;
				this.dispatchEvent(new Event("return_eliminarFuncionEmpleado"));
			}
		}
		
		
		public function fault_BorrarEmpleadoFuncion(objeto:Object):void{
			Alert.show("Error al Eliminar al Usuario de la Función");
		}
		
		
		
		[Bindable (event = "result_asociarSubprocesoFuncionesEvent")]
		public function get return_asociarSubprocesoFunciones():Object{
				return objetoasociarSubprocesoFunciones;
		}
		
		public var cierre:int = 0;
		public function result_asociarSubprocesoFunciones(resultado:Boolean,event:EventoSubproceso):void{
			this.objetoasociarSubprocesoFunciones = {};
			if(resultado == true){
				this.objetoasociarSubprocesoFunciones["valor"] = true;
				this.objetoasociarSubprocesoFunciones["subproceso"] = event._subproceso;
				this.dispatchEvent(new Event("result_asociarSubprocesoFuncionesEvent"));
			}
			if(resultado == false){
				this.objetoasociarSubprocesoFunciones["valor"] = true;
				this.dispatchEvent(new Event("result_asociarSubprocesoFuncionesEvent"));
				Alert.show("Error al actualizar Funciones en el Subproceso");
			}
			//trace("hola mundo");
			
		}
		
		public function fault_asociarSubprocesoFunciones(objeto:Object):void{
			Alert.show("Error al actualizar Funciones en el Subproceso");
		}
		
		
		[Bindable (event = "result_actualizarSubprocesoEvent")]
		public function get return_actualizarSubproceso():SubProceso{
			return this.subprocesoactualizado;
		}
		
		public function result_actualizarSubproceso(resultado:Boolean,event:EventoSubproceso):void{
			if(resultado == true){
				this.subprocesoactualizado = event._subproceso;
				this.dispatchEvent(new Event("result_actualizarSubprocesoEvent"));	
			}
		}
		
		public function fault_actualizarSubproceso(objeto:Object):void{
			Alert.show("Error al actualizar el subproceso");
		}
		
		
		
	}
	
	
	
}