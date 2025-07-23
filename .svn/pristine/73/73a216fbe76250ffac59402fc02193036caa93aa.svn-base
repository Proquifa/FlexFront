package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.admon.objetos
{
	import mx.collections.ArrayCollection;
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Proceso")]
	public class Proceso
	{
		public var idProceso:int;
		public var nombre:String;
		public var idEmpleado:int;
		public var subprocesos:ArrayCollection;
		public var subprocesosDescripcion:String;
		public var nombreEmpleado:String;
		public var indexcombo:int;
		private var catalogoEmpleados:ArrayCollection;
		
		public function Proceso()
		{
			this.idProceso = 0;
			this.nombre = "";
			this.idEmpleado = 0;
			this.subprocesos = new ArrayCollection();
			this.subprocesosDescripcion = "";
			this.nombreEmpleado = "";
			this.catalogoEmpleados = new ArrayCollection();
		}
		
		public function set_Proceso(objeto:Object):void{
			this.idProceso = objeto.idProceso;
			this.nombre = objeto.nombre;
			this.idEmpleado = objeto.idEmpleado;
			if(objeto.subprocesos.length > 0 ){
				this.subprocesosDescripcion = objeto.subprocesos[0].nombre;
			}
			else{
				this.subprocesosDescripcion = "ND";
			}
			for(var m:int = 0; m<objeto.subprocesos.length;m++){
					if(m != 0){
						this.subprocesosDescripcion = this.subprocesosDescripcion + ", " + objeto.subprocesos[m].nombre;
					}
					var sub_proceso:SubProceso = new SubProceso();
					//sub_proceso.catalogoEmpleados = this.catalogoEmpleados;
					sub_proceso.set_SubProceso(objeto.subprocesos[m]);
					this.subprocesos.addItem(sub_proceso);
			}
		}
		
		public function inyectarEmpleadosSubprocesos(catalogo:ArrayCollection):void{
			for(var m:int = 0; m<this.subprocesos.length; m++){
				subprocesos[m].catalogoEmpleados = catalogo;
			}
		}
		
			
		public function set_subprocesosDescripcion():void{
			this.subprocesosDescripcion = "";
			if((this.subprocesos.length > 0) && (this.subprocesos[0].nombre != "") ){
				this.subprocesosDescripcion = this.subprocesos[0].nombre;
			}
			else{
				this.subprocesosDescripcion = "ND";
			}
			for(var m:int = 0; m<this.subprocesos.length;m++){
					if((m != 0) && (this.subprocesos[m].nombre != "")){
						this.subprocesosDescripcion = this.subprocesosDescripcion + ", " + this.subprocesos[m].nombre;
					}
			}
		}
		
		public function setNombreUsuario(Catalogo:ArrayCollection):void{
			this.catalogoEmpleados = Catalogo;
			for(var m:int = 0; m<Catalogo.length; m++){
				if(Catalogo[m].idEmpleado == this.idEmpleado){
					this.nombreEmpleado = Catalogo[m].nombre;
					this.indexcombo = m;
					return;
				}
			}
			this.indexcombo = -1;
		}
		
		public function actualizarUsuario():void{
			for(var m:int = 0; m<this.catalogoEmpleados.length; m++){
				if(this.catalogoEmpleados[m].idEmpleado == this.idEmpleado){
					this.nombreEmpleado = this.catalogoEmpleados[m].nombre;
					this.indexcombo = m;
					return;
				}
			}
		}
		
		public function borrarSubProcesosVacios():void{
			for(var m:int = 0; m<this.subprocesos.length;m++){
				if(this.subprocesos[m].nombre == ""){
					this.subprocesos.removeItemAt(m);
				}
			}
		}
		
	}
}