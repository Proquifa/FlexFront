package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.admoncomunicacion.Correo")]
	public class Correo
	{
		private var _destino:Number;
		private var _idCorreo:Number;
		private var _idContacto:Number;
		private var _idEmpleado:Number;
		private var _idEmpleadoString:String;
		
		//variable usada para meter valores aleatorios
		private var _folioNumerico:Number;
		private var _idPendiente:Number;
		private var _numFila:Number;
		private var _fechaInicio:Date;
		private var _enTiempo:String;
		
		private var _fechaInicioFormato:String;
		
		private var _origen:String;
		private var _medio:String;
		private var _FolioDocumento:String; // cambio F por f
		private var _correo:String;
		private var _ccorreo:String;
		private var _cuerpoCorreo:String;
		private var _comentariosAdicionales:String;
		private var _asunto:String;
		private var _archivoAdjunto:String;
		private var _tipo:String;
		private var _nombreDestino:String;
		private var _facturadaPor:String;
		private var _cocorreo:String;
		
		private var _paisDestino:String;
		private var _nombreOrigen:String;
		private var _copiaCorreo:String;
		
		public function Correo()
		{
		}
		
		/*public function get folioDocumento():String
		{
		return _folioDocumento;
		}
		
		public function set folioDocumento(value:String):void
		{
		_folioDocumento = value;
		}*/
		
		public function get copiaCorreo():String
		{
			return _copiaCorreo;
		}

		public function set copiaCorreo(value:String):void
		{
			_copiaCorreo = value;
		}

		public function get enTiempo():String
		{
			return _enTiempo;
		}
		
		public function set enTiempo(value:String):void
		{
			_enTiempo = value;
		}
		
		public function get nombreOrigen():String
		{
			return _nombreOrigen;
		}
		
		public function set nombreOrigen(value:String):void
		{
			_nombreOrigen = value;
		}
		
		public function get paisDestino():String
		{
			return _paisDestino;
		}
		
		public function set paisDestino(value:String):void
		{
			_paisDestino = value;
		}
		
		public function get fechaInicioFormato():String
		{
			return _fechaInicioFormato;
		}
		
		public function set fechaInicioFormato(value:String):void
		{
			_fechaInicioFormato = value;
		}
		
		public function get cocorreo():String
		{
			return _cocorreo;
		}
		
		public function set cocorreo(value:String):void
		{
			_cocorreo = value;
		}
		
		public function get idEmpleado():Number
		{
			return _idEmpleado;
		}
		
		public function set idEmpleado(value:Number):void
		{
			_idEmpleado = value;
		}
		
		public function get facturadaPor():String
		{
			return _facturadaPor;
		}
		
		public function set facturadaPor(value:String):void
		{
			_facturadaPor = value;
		}
		
		public function get nombreDestino():String
		{
			return _nombreDestino;
		}
		
		public function set nombreDestino(value:String):void
		{
			_nombreDestino = value;
		}
		
		public function get tipo():String
		{
			return _tipo;
		}
		
		public function set tipo(value:String):void
		{
			_tipo = value;
		}
		
		public function get archivoAdjunto():String
		{
			return _archivoAdjunto;
		}
		
		public function set archivoAdjunto(value:String):void
		{
			_archivoAdjunto = value;
		}
		
		public function get asunto():String
		{
			return _asunto;
		}
		
		public function set asunto(value:String):void
		{
			_asunto = value;
		}
		
		public function get comentariosAdicionales():String
		{
			if(_comentariosAdicionales == "" || _comentariosAdicionales == null) _comentariosAdicionales = "Sin comentarios...";
			return _comentariosAdicionales;
		}
		
		public function set comentariosAdicionales(value:String):void
		{
			_comentariosAdicionales = value;
		}
		
		public function get cuerpoCorreo():String
		{
			return _cuerpoCorreo;
		}
		
		public function set cuerpoCorreo(value:String):void
		{
			_cuerpoCorreo = value;
		}
		
		public function get ccorreo():String
		{
			return _ccorreo;
		}
		
		public function set ccorreo(value:String):void
		{
			_ccorreo = value;
		}
		
		public function get correo():String
		{
			return _correo;
		}
		
		public function set correo(value:String):void
		{
			_correo = value;
		}
		
		public function get FolioDocumento():String
		{
			return _FolioDocumento;
		}
		
		public function set FolioDocumento(value:String):void
		{
			_FolioDocumento = value;
		}
		
		public function get medio():String
		{
			return _medio;
		}
		
		public function set medio(value:String):void
		{
			_medio = value;
		}
		
		public function get origen():String
		{
			return _origen;
		}
		
		public function set origen(value:String):void
		{
			_origen = value;
		}
		
		public function get fechaInicio():Date
		{
			return _fechaInicio;
		}
		
		public function set fechaInicio(value:Date):void
		{
			_fechaInicio = value;
			fechaInicioFormato = UtilsFecha.formatoFechaDDMMMYYYY(value);
			if(UtilsFecha.formatoFechaDDMMYY(new Date()) == UtilsFecha.formatoFechaDDMMYY(value) ){
				enTiempo = "ET";
			}
			else{
				enTiempo = "FT";
			}
			
		}
		
		public function get numFila():Number
		{
			return _numFila;
		}
		
		public function set numFila(value:Number):void
		{
			_numFila = value;
		}
		
		public function get idPendiente():Number
		{
			return _idPendiente;
		}
		
		public function set idPendiente(value:Number):void
		{
			_idPendiente = value;
		}
		
		public function get folioNumerico():Number
		{
			return _folioNumerico;
		}
		
		public function set folioNumerico(value:Number):void
		{
			_folioNumerico = value;
		}
		
		public function get idContacto():Number
		{
			return _idContacto;
		}
		
		public function set idContacto(value:Number):void
		{
			_idContacto = value;
		}
		
		public function get idCorreo():Number
		{
			return _idCorreo;
		}
		
		public function set idCorreo(value:Number):void
		{
			_idCorreo = value;
		}
		
		public function get destino():Number
		{
			return _destino;
		}
		
		public function set destino(value:Number):void
		{
			_destino = value;
		}

		public function get idEmpleadoString():String
		{
			return _idEmpleadoString;
		}

		public function set idEmpleadoString(value:String):void
		{
			_idEmpleadoString = value;
		}

		
	}
}