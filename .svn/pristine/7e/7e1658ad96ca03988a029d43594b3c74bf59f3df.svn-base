package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.asistencia
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	
	import skins.catalogos.catalogoColores;
	import skins.catalogos.catalogoIconosGrid;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.staff.Asistencia")]
	[Bindable]
	public class Asistencia
	{
		private var _numFila:int;
		private var _idTrabajador:Number;
		private var _nombreCorto:String;
		private var _fecha:Date;
		private var _hora:String;
		private var _tipoChecada:String;
		private var _area:String;
		private var _areaIcono:Class;
		private var _depto:String;
		private var _categoria:String;
		private var _incidencia:String;
		private var _incidenciaString:String;
		private var _fechaFormato:String;
		private var _checada:Date;
		private var _rotacion:String;
		private var _localidad:String;
		private var _colorIncidencia:uint;

		public function Asistencia(){
			areaIcono = null;
		}
		

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get localidad():String
		{
			return _localidad;
		}

		public function set localidad(value:String):void
		{
			if (value == "CUERNAVACA"){
				_localidad = "RYNDEM";
			}else if(value == "DISTRITO FEDERAL"){
				_localidad = "PROQUIFA"
			}else{
				_localidad = value;
			}
		}

		public function get rotacion():String
		{
			return _rotacion;
		}

		public function set rotacion(value:String):void
		{
			_rotacion = value;
		}

		public function get idTrabajador():Number
		{
			return _idTrabajador;
		}

		public function set idTrabajador(value:Number):void
		{
			_idTrabajador = value;
		}

		public function get nombreCorto():String
		{
			return _nombreCorto;
		}

		public function set nombreCorto(value:String):void
		{
			_nombreCorto = value;
		}

		public function get fecha():Date
		{
			return _fecha;
		}

		public function set fecha(value:Date):void
		{
			_fecha = value;
			_fechaFormato = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}

		public function get hora():String
		{
			return _hora == null ? 'NA' : _hora;
		}

		public function set hora(value:String):void
		{
			_hora = value;
		}

		public function get tipoChecada():String
		{
			return _tipoChecada == null ? 'NA' : _tipoChecada;
		}

		public function set tipoChecada(value:String):void
		{
			_tipoChecada = value;
		}

		public function get area():String
		{
			return _area;
		}

		public function set area(value:String):void
		{
			if (value == "COMERCIALIZACION"){
				_areaIcono = catalogoIconosGrid.getInstance().comercializacion;
			}else if (value == "DIRECCION" ){
				_areaIcono = catalogoIconosGrid.getInstance().direcciones;
			}else if (value == "FINANZAS" ){
				_areaIcono = catalogoIconosGrid.getInstance().finanzas;
			}else if (value == "OPERACIONES" ){
				_areaIcono = catalogoIconosGrid.getInstance().operaciones;
			}else if (value == "SERVICIOS" ){
				_areaIcono = catalogoIconosGrid.getInstance().servicios;
			}
			_area = value;
		}

		public function get depto():String
		{
			return _depto;
		}

		public function set depto(value:String):void
		{
			_depto = value;
		}

		public function get categoria():String
		{
			return _categoria;
		}

		public function set categoria(value:String):void
		{
			_categoria = value;
		}

		public function get incidencia():String
		{
			return _incidencia;
		}

		public function set incidencia(value:String):void
		{
			if (value.toUpperCase() == "NINGUNA"){
				_colorIncidencia = "0x" + catalogoColores.LABEL_VERDE;
				_incidenciaString = "ASISTIÓ"
			}else if (value.toUpperCase() == "FALTA"){
				_colorIncidencia = "0x" + catalogoColores.LABEL_ROJO;
				_incidenciaString = "FALTÓ"
			}else if (value.toUpperCase() == "RETARDO"){
				_colorIncidencia = "0x" + catalogoColores.LABEL_AMARILLO_SEMAFORO;
				incidenciaString = value;
			}else{
				_colorIncidencia = "0x" + catalogoColores.LABEL_NARANJA;
				incidenciaString = value;
			}
			_incidencia = value;
		}

		public function get fechaFormato():String
		{
			return _fechaFormato;
		}

		public function set fechaFormato(value:String):void
		{
			_fechaFormato = value;
		}


		public function get checada():Date
		{
			return _checada;
		}

		public function set checada(value:Date):void
		{
			_checada = value;
		}

		public function get colorIncidencia():uint
		{
			return _colorIncidencia;
		}

		public function set colorIncidencia(value:uint):void
		{
			_colorIncidencia = value;
		}

		public function get areaIcono():Class
		{
			return _areaIcono;
		}

		public function set areaIcono(value:Class):void
		{
			_areaIcono = value;
		}

		public function get incidenciaString():String
		{
			return _incidenciaString;
		}

		public function set incidenciaString(value:String):void
		{
			_incidenciaString = value;
		}



	}
}