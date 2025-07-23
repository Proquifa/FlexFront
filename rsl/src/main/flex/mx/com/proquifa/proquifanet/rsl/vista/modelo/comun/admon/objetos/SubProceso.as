package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.admon.objetos
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Subproceso")]
	public class SubProceso
	{
		public var idSubproceso:int;
		public var nombre:String;
		public var idProceso:int;
		public var idUsuario:int;
		public var funciones:ArrayCollection;
		private var _catalogoEmpleados:ArrayCollection = new ArrayCollection();
		private var _idEmpleado:int;
		private var _indexEmpleadoSeleccionado:int = -1;
		private var _responsable:String;
		
		private var _indicadores:ArrayCollection;
		
		public function SubProceso()
		{
			this.idSubproceso = 0;
			this.nombre = "";
			this.idProceso=0;
			this.idUsuario=0; 
			this.idEmpleado = 0;
			this.funciones = new ArrayCollection();
			//this.catalogoEmpleados = new ArrayCollection();
		}
		
		public function get responsable():String
		{
			return _responsable;
		}
		
		public function set responsable(value:String):void
		{
			_responsable = value;
		}
		
		public function get indexEmpleadoSeleccionado():int
		{
			return _indexEmpleadoSeleccionado;
		}
		
		public function set indexEmpleadoSeleccionado(value:int):void
		{
			_indexEmpleadoSeleccionado = value;
			
		}
		
		public function get idEmpleado():int
		{
			return _idEmpleado;
		}
		
		public function set idEmpleado(value:int):void
		{
			_idEmpleado = value;
			if(value == 0){
				_indexEmpleadoSeleccionado = -1;
			}
		}
		
		public function get catalogoEmpleados():ArrayCollection
		{
			return _catalogoEmpleados;
		}
		
		public function set catalogoEmpleados(value:ArrayCollection):void
		{
			_catalogoEmpleados = value;
			if(value != null){
				for(var m:int = 0; m<value.length;m++){
					if(value[m].idEmpleado == this.idEmpleado){
						this.indexEmpleadoSeleccionado = m;
						this.responsable = value[m].nombre;
					}
				}
			}
		}
		
		public function set_SubProceso(objeto:Object):void{
			this.idSubproceso = objeto.idSubproceso;
			this.nombre = objeto.nombre;
			this.idProceso = objeto.idProceso;
			this.idUsuario = objeto.idUsuario;
			this.funciones = objeto.funciones;
			this.idEmpleado = objeto.idEmpleado;
		}

		public function get indicadores():ArrayCollection
		{
			return _indicadores;
		}

		public function set indicadores(value:ArrayCollection):void
		{
			_indicadores = value;
		}

		
	}
}