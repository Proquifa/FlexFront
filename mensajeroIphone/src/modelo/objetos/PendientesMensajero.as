package modelo.objetos
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.despachos.mensajero.PendientesMensajero")]
	public class PendientesMensajero
	{
		private var _folio:String;
		private var _comentarios:String;
		private var _contactos:ArrayCollection = new ArrayCollection();
		private var _Destino:String;
		private var _empresa:String;
		private var _evento:String;
		private var _prioridad:String;
		private var _ruta:String;
		private var _tipo:String;
		private var _direccion:String;
		private var _diferenteDireccion:Boolean;
		private var _mapa:String;
		private var _horario:Horario;
		private var _documentos:ArrayCollection = new ArrayCollection();
		private var _idCliente:int;
		private var _idProveedor:int;
		private var _folioEvento:String;
		private var _ordenPlan:int;
		private var _destino:String;
		private var _etiquetaHorario:String;
		private var _folioDocumento:String;
		private var _folioProducto:String;
		
		private var _validarPosicion:Boolean = false;
		
		private var _latitud:Number;
		private var _longitud:Number;
		private var _altitud:Number;
		private var _realizado:Boolean;
		private var _justificacion:String;
		private var _tipoJustificacion:String;
		private var _estadoEntrega:String;
		private var _estadoPendiente:String;
		private var _personaRecibio:String;
		private var _puestoPersonaRecibio:String;
	
		private var _idHorario:Number;
		

		public function get estadoPendiente():String
		{
			return _estadoPendiente;
		}

		public function set estadoPendiente(value:String):void
		{
			_estadoPendiente = value;
		}

		public function get estadoEntrega():String
		{
			return _estadoEntrega;
		}

		public function set estadoEntrega(value:String):void
		{
			_estadoEntrega = value;
		}

		public function get altitud():Number
		{
			return _altitud;
		}

		public function set altitud(value:Number):void
		{
			_altitud = value;
		}

		public function get validarPosicion():Boolean
		{
			return _validarPosicion;
		}

		public function set validarPosicion(value:Boolean):void
		{
			_validarPosicion = value;
		}

		public function get tipoJustificacion():String
		{
			return _tipoJustificacion;
		}

		public function set tipoJustificacion(value:String):void
		{
			_tipoJustificacion = value;
		}

		public function get justificacion():String
		{
			return _justificacion;
		}

		public function set justificacion(value:String):void
		{
			_justificacion = value;
		}

		public function get realizado():Boolean
		{
			return _realizado;
		}

		public function set realizado(value:Boolean):void
		{
			_realizado = value;
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

		/*public function get ultimo():String
		{
			return _ultimo;
		}

		public function set ultimo(value:String):void
		{
			_ultimo = value;
		}*/

		public function get folioProducto():String
		{
			return _folioProducto;
		}

		public function set folioProducto(value:String):void
		{
			_folioProducto = value;
		}

		public function get folioDocumento():String
		{
			return _folioDocumento;
		}

		public function set folioDocumento(value:String):void
		{
			_folioDocumento = value;
		}

		public function get contactos():ArrayCollection
		{
			return _contactos;
		}

		public function set contactos(value:ArrayCollection):void
		{
			if(value == null){
				_contactos = new ArrayCollection();
			}
			else{
				_contactos = value;
			}
		}

		public function get etiquetaHorario():String
		{
			return _etiquetaHorario;
		}

		public function set etiquetaHorario(value:String):void
		{
			_etiquetaHorario = value;
		}

		public function get destino():String
		{
			return _destino;
		}

		public function set destino(value:String):void
		{
			_destino = value;
		}

		public function get ordenPlan():int
		{
			return _ordenPlan;
		}

		public function set ordenPlan(value:int):void
		{
			_ordenPlan = value;
		}

		public function get folioEvento():String
		{
			return _folioEvento;
		}

		public function set folioEvento(value:String):void
		{
			_folioEvento = value;
		}

		public function get idProveedor():int
		{
			return _idProveedor;
		}

		public function set idProveedor(value:int):void
		{
			_idProveedor = value;
		}

		public function get idCliente():int
		{
			return _idCliente;
		}

		public function set idCliente(value:int):void
		{
			_idCliente = value;
		}

		public function get documentos():ArrayCollection
		{
			return _documentos;
		}

		public function set documentos(value:ArrayCollection):void
		{
			_documentos = value;
		}

		public function get horario():Horario
		{
			return _horario;
		}

		public function set horario(value:Horario):void
		{
			_horario = value;
			if(value != null){
				var dia:int = -1;
				var fecha:Date = new Date();
				dia = fecha.day;
				if(horario.diario == true){
					this.etiquetaHorario = horario.diaDe1 + " a " + horario.diaA1 + " & " + horario.diaDe2 + " a " + horario.diaA2;
				}
				else{
				if(dia == 1){
					if(horario.lunes == true){
						this.etiquetaHorario = horario.luDe1 + " a " + horario.luA1 + " & " + horario.luDe2 + " a "  +  horario.luA2;
					}
					else{
						this.etiquetaHorario = "Desconocido";
					}
				}
				
				if(dia == 2){
					if(horario.martes == true){
						this.etiquetaHorario = horario.maDe1 + " a " + horario.maA1 + " & " + horario.maDe2 + " a "  +  horario.maA2;
					}
					else{
						this.etiquetaHorario = "Desconocido";
					}
				}
				
				if(dia == 3){
					if(horario.miercoles == true){
						this.etiquetaHorario = horario.miDe1 + " a " + horario.miA1 + " & " + horario.miDe2 + " a "  +  horario.miA2;
					}
					else{
						this.etiquetaHorario = "Desconocido";
					}
				
				}
				if(dia == 4){
					if(horario.jueves == true){
						this.etiquetaHorario = horario.juDe1 + " a " + horario.juA1 + " & " + horario.juDe2 + " a "  +  horario.juA2;
					}
					else{
						this.etiquetaHorario = "Desconocido";
					}
				}
				if(dia == 5){
					if(horario.viernes == true){
						this.etiquetaHorario = horario.viDe1 + " a " + horario.viA1 + " & " + horario.viDe2 + " a "  +  horario.viA2;
					}
					else{
						this.etiquetaHorario = "Desconocido";
					}
				
				}
				}
				
			}
			else{
				this.etiquetaHorario = "Desconocido";
			}
		}

		public function get mapa():String
		{
			return _mapa;
		}

		public function set mapa(value:String):void
		{
			_mapa = value;
		}

		public function get diferenteDireccion():Boolean
		{
			return _diferenteDireccion;
		}

		public function set diferenteDireccion(value:Boolean):void
		{
			_diferenteDireccion = value;
		}

		public function get direccion():String
		{
			return _direccion;
		}

		public function set direccion(value:String):void
		{
			_direccion = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get ruta():String
		{
			return _ruta;
		}

		public function set ruta(value:String):void
		{
			_ruta = value;
		}

		public function get prioridad():String
		{
			return _prioridad;
		}

		public function set prioridad(value:String):void
		{
			_prioridad = value;
		}

		public function get evento():String
		{
			return _evento;
		}

		public function set evento(value:String):void
		{
			_evento = value;
		}

		public function get empresa():String
		{
			return _empresa;
		}

		public function set empresa(value:String):void
		{
			_empresa = value;
		}

		public function get Destino():String
		{
			return _Destino;
		}

		public function set Destino(value:String):void
		{
			_Destino = value;
		}


		public function get comentarios():String
		{
			return _comentarios;
		}

		public function set comentarios(value:String):void
		{
			_comentarios = value;
			if(value == "" || value == null){
				_comentarios = "SIN ESPECIFICACIONES";
			}
		}

		public function get folio():String
		{
			return _folio;
		}

		public function set folio(value:String):void
		{
			_folio = value;
		}

		public function get personaRecibio():String
		{
			return _personaRecibio;
		}

		public function set personaRecibio(value:String):void
		{
			_personaRecibio = value;
		}

		public function get idHorario():Number
		{
			return _idHorario;
		}

		public function set idHorario(value:Number):void
		{
			_idHorario = value;
		}

		public function get puestoPersonaRecibio():String
		{
			return _puestoPersonaRecibio;
		}

		public function set puestoPersonaRecibio(value:String):void
		{
			_puestoPersonaRecibio = value;
		}


		public function PendientesMensajero()
		{
		}
		
	}
}