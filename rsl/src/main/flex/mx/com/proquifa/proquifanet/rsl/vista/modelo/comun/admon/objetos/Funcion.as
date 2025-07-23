package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.admon.objetos
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Funcion")]
	public class Funcion
	{
		public var idFuncion:int;
		public var identificador:String;
		public var nombre:String;
		public var nivel:String;
		public var subproceso:int;
		public var usuarios:ArrayCollection;
		public var colaboradoresDescripcion:String;
		public var descripcionSubproceso:String;
		public var empleados:ArrayCollection;
		public var seleccionada:Boolean;
		public var habilitado:Boolean;

		public function Funcion()
		{
			
			this.idFuncion = 0;
			this.identificador = "";
			this.nombre = "";
			this.nivel = "";
			this.subproceso = 0;
			this.usuarios = new ArrayCollection();
			this.empleados = new ArrayCollection();
			this.colaboradoresDescripcion = "";
			this.seleccionada = false;
			this.habilitado = false;
		}
		
		
		
		public function setFunction(objeto:Object):void{
			this.idFuncion = objeto.idFuncion;
			this.identificador = objeto.identificador;
			this.nombre = objeto.nombre;
			this.nivel = objeto.nivel;
			if(objeto.subproceso == null || objeto.subproceso == 0){
				this.subproceso = 0;
				this.descripcionSubproceso = "ND";
			}
			else{
				this.subproceso = objeto.subproceso;
			}
			
			if(objeto.empleados != null){
				if(objeto.empleados.length > 0){
					if(objeto.empleados[0].nombre != ""){
						this.colaboradoresDescripcion = objeto.empleados[m].nombre;
					}
				
				}	
			}
			else{
				this.colaboradoresDescripcion = "ND";
			}
			
			if(objeto.empleados != null){
				for(var m:int = 0; m<objeto.empleados.length;m++){
					if((m != 0) && (objeto.empleados[m].nombre != "")){
						this.colaboradoresDescripcion = this.colaboradoresDescripcion + "," + objeto.empleados[m].nombre;
					}
					var nuevo:Empleado = new Empleado();
					nuevo.setEmpleado(objeto.empleados[m]);
					this.usuarios.addItem(nuevo);
				}
			}
			
		}
		
		public function setidUsuarios(_Usuarios:ArrayCollection):void{
			for(var m:int = 0; m<this.usuarios.length; m++){
				Empleado(this.usuarios[m]).buscarEmpleado(_Usuarios); 
				//trace(this.usuarios.toString());
			}
		}
		
		public function generarnombres():void{
			if(this.usuarios.length > 0 && (this.usuarios[0].nombre != "" && this.usuarios[0].nombre != null)){
				this.colaboradoresDescripcion = this.usuarios[0].nombre.toString();
				if(this.usuarios.length > 1){
					for(var m:int = 1; m<this.usuarios.length;m++){
						if(this.usuarios[m].nombre != "" && this.usuarios[m].nombre != null){
							this.colaboradoresDescripcion = this.colaboradoresDescripcion + ", " + this.usuarios[m].nombre;
						}
					}
				}
			}
			else{
				this.colaboradoresDescripcion = "ND";
			}
		}
		
		
		public function borrarvacios():void{
			for(var m:int = 0; m<this.usuarios.length; m++){
				if((this.usuarios[m].clave == 0 ) && (this.usuarios[m].idcombo == -1) ){
					this.usuarios.removeItemAt(m);
					m = m -1;
					//this.usuarios.refresh();
				}
			}
		}

	}
}