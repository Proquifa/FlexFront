package modelo.objetos
{
	import flash.net.registerClassAlias;
	
	import mx.collections.ArrayCollection;
	
	registerClassAlias("modelo.objetos.itemPendientes",itemPendientes);
	[Bindable]
	public class itemPendientes
	{
		
		private var _pendientes:ArrayCollection = new ArrayCollection();
		private var _etiquetaEventos:String;
		private var _ruta:String;
		private var _empresa:String;
		private var _status:String;
		private var _inaplazables:int;
		private var _urgentes:int;
		private var _normal:int;
		private var _ultimo:String;
		private var _direccion:String;
		private var _latitud:Number;
		private var _longitud:Number;
		private var _altitud:Number;
		private var _coordenadas:Coordenada;
		private var _key:String;
		private var _idEmpresa:Number;
		private var _evento:String;
		
		public function itemPendientes()
		{
			this.empresa = "";
			_coordenadas = new Coordenada;
			_inaplazables =0;
			_urgentes = 0;
			_normal = 0;
			_ultimo= "";
			_direccion = "";
			_latitud = 0;
			_longitud = 0;
			_altitud = 0;
		}

		
		public function get altitud():Number
		{
			return _altitud;
		}

		public function set altitud(value:Number):void
		{
			_altitud = value;
		}

		public function get coordenadas():Coordenada
		{
			return _coordenadas;
		}

		public function set coordenadas(value:Coordenada):void
		{
			_coordenadas = value;
		}

		public function get longitud():Number
		{
			return _longitud;
		}

		public function set longitud(value:Number):void
		{
			_longitud = value;
		}

		public function get latitud():Number
		{
			return _latitud;
		}

		public function set latitud(value:Number):void
		{
			_latitud = value;
		}

		public function get direccion():String
		{
			return _direccion;
		}

		public function set direccion(value:String):void
		{
			_direccion = value;
			_key = empresa + "_" + ruta + "_" + direccion;
		}

		public function get ultimo():String
		{
			return _ultimo;
		}

		public function set ultimo(value:String):void
		{
			_ultimo = value;
		}

		public function get normal():int
		{
			return _normal;
		}

		public function set normal(value:int):void
		{
			_normal = value;
		}

		public function get urgentes():int
		{
			return _urgentes;
		}

		public function set urgentes(value:int):void
		{
			_urgentes = value;
		}

		public function get inaplazables():int
		{
			return _inaplazables;
		}

		public function set inaplazables(value:int):void
		{
			_inaplazables = value;
		}

		public function get status():String
		{
			return _status;
		}

		public function set status(value:String):void
		{
			_status = value;
		}

		public function get empresa():String
		{
			return _empresa;
		}

		public function set empresa(value:String):void
		{
			_empresa = value;
			_key = empresa + "_" + ruta + "_" + direccion;
		}

		public function get ruta():String
		{
			return _ruta;
		}

		public function set ruta(value:String):void
		{
			_ruta = value.toUpperCase();
			_key = empresa + "_" + ruta + "_" + direccion;
		}

		public function get etiquetaEventos():String
		{
			return _etiquetaEventos;
		}

		public function set etiquetaEventos(value:String):void
		{
			_etiquetaEventos = value;
		}

		public function get pendientes():ArrayCollection
		{
			return _pendientes;
		}

		public function set pendientes(value:ArrayCollection):void
		{
			_pendientes = value;
		}
		
		
		public function formar():void
		{
			if(pendientes.length == 0)
			{
				return;
			}
			
			this.empresa = pendientes[0].empresa;
			this.idEmpresa = pendientes[0].idCliente;
			this.evento = pendientes[0].evento;
			this.ruta = pendientes[0].ruta;
			this.longitud = pendientes[0].longitud;
			this.latitud = pendientes[0].latitud;
			this.direccion = pendientes[0].direccion;
			
			for(var m:int = 0; m<this.pendientes.length; m++){
				if(pendientes[m].prioridad == "Normal"){
					this.normal = this.normal +1;
				}
				if(pendientes[m].prioridad == "Urgente"){
					this.urgentes = this.urgentes +1;
				}
				if(pendientes[m].prioridad == "Inaplazable"){
					this.inaplazables = this.inaplazables + 1;
				}
			}
			
			this.etiquetaEventos = this.pendientes.length + " Eventos : " +
				this.inaplazables.toString() + "I . " + this.urgentes.toString() + "U . " +
				this.normal.toString() + "N";
			
			this.status = "N";
			if(this.urgentes > 0){
				this.status = "U";
			}
			
			if(this.inaplazables > 0){
				this.status = "I";
			}
			
			/*var pendiente:PendientesMensajero = new PendientesMensajero();
			pendiente.ultimo = this.pendientes.length.toString();
			this.pendientes.addItem(pendiente);*/
		}

		public function get key():String
		{
			return _key;
		}

		public function set key(value:String):void
		{
			_key = value;
		}

		public function get idEmpresa():Number
		{
			return _idEmpresa;
		}

		public function set idEmpresa(value:Number):void
		{
			_idEmpresa = value;
		}

		public function get evento():String
		{
			return _evento;
		}

		public function set evento(value:String):void
		{
			_evento = value;
		}
			
		

	}
}