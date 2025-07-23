package mx.com.proquifa.proquifanet.rsl.vista.modelo.evento
{
	import mx.collections.ArrayCollection;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.evento.Participantes")]
	[Bindable]
	public class Participantes
	{
		private var _idRegistro:Number;
		private var _nombre:String;
		private var _empresa:String;
		private var _puesto:String;
		private var _correo:String;
		private var _telefono:String;
		private var _origen:String;
		private var _folio:String;
		private var _registro:Boolean;
		private var _folioString:String;
		
		private var _facebook:Boolean;
		private var _twitter:Boolean;
		private var _linkedin:Boolean;
		
		private var _folios:ArrayCollection;
		private var _foliosString:String;
		
		private var _conferencia:String;
		
		private var _foliosConferencia:ArrayCollection;
		
		private var _foliosConferenciaString:String;
		
		public function Participantes()
		{
		}
		
		public function get linkedin():Boolean
		{
			return _linkedin;
		}
		
		public function set linkedin(value:Boolean):void
		{
			_linkedin = value;
		}
		
		public function get twitter():Boolean
		{
			return _twitter;
		}
		
		public function set twitter(value:Boolean):void
		{
			_twitter = value;
		}
		
		/**
		 * ExporFarma2015
		 */
		public function get facebook():Boolean
		{
			return _facebook;
		}
		
		/**
		 * @private
		 */
		public function set facebook(value:Boolean):void
		{
			_facebook = value;
		}
		
		public function get idRegistro():Number
		{
			return _idRegistro;
		}
		
		public function set idRegistro(value:Number):void
		{
			_idRegistro = value;
		}
		
		public function get nombre():String
		{
			return _nombre;
		}
		
		public function set nombre(value:String):void
		{
			_nombre = value;
		}
		
		public function get empresa():String
		{
			return _empresa;
		}
		
		public function set empresa(value:String):void
		{
			_empresa = value;
		}
		
		public function get puesto():String
		{
			return _puesto;
		}
		
		public function set puesto(value:String):void
		{
			_puesto = value;
		}
		
		public function get correo():String
		{
			return _correo;
		}
		
		public function set correo(value:String):void
		{
			_correo = value;
		}
		
		public function get telefono():String
		{
			return _telefono;
		}
		
		public function set telefono(value:String):void
		{
			_telefono = value;
		}
		
		public function get origen():String
		{
			return _origen;
		}
		
		public function set origen(value:String):void
		{
			_origen = value;
		}
		
		public function get folio():String
		{
			return _folio;
		}
		
		public function set folio(value:String):void
		{
			_folio = value;
		}
		
		public function get registro():Boolean
		{
			return _registro;
		}
		
		public function set registro(value:Boolean):void
		{
			_registro = value;
		}
		
		public function get folioString():String
		{
			var cadena:String
			if (folio != null ){
				
				if (folio.length > 3 ){
					cadena = folio;
				}
				else if (folio.length == 3 ){
					cadena = '0' + folio;
				}
				else if (folio.length == 2 ){
					cadena = '00' + folio ;
				}
				else {
					cadena = '000' + folio ;	
				}
				if (origen){
					if (origen.toLocaleUpperCase() == 'USPGDL2014'){
						return cadena + '-GDL-' + 'UF2014';
					}
					else if ( origen.toLocaleUpperCase() == 'USPDF2014' ){
						return cadena + '-MX-' + 'UF2014'
					}
					else if ( origen.toLocaleUpperCase() == 'MICROGDL2014' ){
						return cadena + '-GDL-' + 'SM2014'
					}
					else if ( origen.toLocaleUpperCase() == 'MICRODF2014' ){
						return cadena + '-MX-' + 'SM2014'
					}
					else if ( origen.toLocaleUpperCase() == 'EXPOFARMA2015' ){
						return "EXFE-" + cadena; 
					}
				}
			}
			return _folioString;
		}
		
		public function set folioString(value:String):void
		{
			_folioString = value;
		}
		
		public function get folios():ArrayCollection
		{
			return _folios;
		}
		
		public function set folios(value:ArrayCollection):void
		{
			_folios = value;
		}
		
		public function get foliosString():String
		{
			_foliosString = "";
			if (folioString)
				_foliosString = folioString + ", ";
			for each (var fol:Object in folios) 
			{
				var cadena:String
				if (fol && fol.hasOwnProperty("Folio") ){
					
					if (fol.Folio.length > 3 ){
						cadena = fol.Folio;
					}
					else if (fol.Folio.length == 3 ){
						cadena = '0' + fol.Folio;
					}
					else if (fol.Folio.length == 2 ){
						cadena = '00' + fol.Folio ;
					}
					else {
						cadena = '000' + fol.Folio ;	
					}
					if (origen){
						if ( origen.toLocaleUpperCase() == 'EXPOFARMA2015' ){
							_foliosString += "EXFR-" + cadena + ", "; 
						}
					}
				}
			}
			_foliosString = _foliosString.substring(0,  _foliosString.length-2);
			return _foliosString;
		}
		
		public function set foliosString(value:String):void
		{
			_foliosString = value;
		}

		public function get conferencia():String
		{
			return _conferencia;
		}

		public function set conferencia(value:String):void
		{
			_conferencia = value;
		}

		public function get foliosConferencia():ArrayCollection
		{
			return _foliosConferencia;
		}

		public function set foliosConferencia(value:ArrayCollection):void
		{
			_foliosConferencia = value;
		}

		public function get foliosConferenciaString():String
		{
			_foliosConferenciaString = "";
			for each (var fol:String in foliosConferencia) 
			{
				var cadena:String
				if (fol && fol.length > 0){
					if (_foliosConferenciaString != "" )
						_foliosConferenciaString += "\n";
					var inicial:String = fol.substring(0,1);
					var code:String = fol.substring(1,fol.length);
					if (code.length > 3 ){
						cadena = code;
					}
					else if (code.length == 3 ){
						cadena = '0' + code;
					}
					else if (code.length == 2 ){
						cadena = '00' + code ;
					}
					else {
						cadena = '000' + code ;	
					}
					if (origen){
						if ( origen.toLocaleUpperCase() == 'EXPOFARMA2015' ){
							_foliosConferenciaString += "EXF" + inicial.toUpperCase() + "-" + cadena; 
						}
					}
				}
			}
			return _foliosConferenciaString;
		}

		public function set foliosConferenciaString(value:String):void
		{
			_foliosConferenciaString = value;
		}


	}
}