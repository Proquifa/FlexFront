package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	import mx.formatters.DateBase;
	import mx.formatters.DateFormatter;
	import mx.utils.StringUtil;

	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.compras.PermisoImportacion")]
	public class PermisoImportacion
	{
		private var _numFila:int;
		private var _tipoProducto:String;
		private var _fabrica:String;
		private var _proveedor:String;
		private var _codigoProducto:String;
		private var _nombreProducto:String;
		private var _costo:Number;
		private var _moneda:String;
		private var _tipoPermiso:String;
		private var _documento:String;
		private var _fechaET:Date;
		private var _fechaEL:Date;
		private var _fechaLiberacion:Date
		private var _fraccionArancelaria:String;
		private var _tipoSolicitudPermiso:String;
		private var _clasificacionProducto:String;
		private var _clasificacionSolictud:String;
		private var _diasFiltro:String;
		private var _origen:String;
		private var _origenFolio:String;
		private var _estadoProducto:String;
		private var _controlProducto:String;
		private var _precioUnitario:Number;
		private var _cas:String;
		private var _estadoPermiso:String;
		private var _datosToxicologicos:String;
		private var _folioEntrada:String;
		private var _noEntrada:String;
		private var _estadoFisico:String;
		private var _etiqueta:String;
		private var _subTipo:String;
		private var _cantidad:int;
		private var _cantidadString:String;
		private var _idSolicitud:String;
		private var _pedCot:String;
		private var _folioLote:String;
		private var _folioSolicitud:String;
		private var _fechaSometio:String;
		private var _numEntrada:String;
		private var _doctoEntrada:String;
		private var _justificacion:String;
		private var _finicio:Date; 
		private var _marca:String;
		//Para Vista
		private var _clasificacionSolictudFiltro:String;
		private var _tipoProductoFiltro:String;
		private var _tipoSolicitudPermisoFiltro:String;
		private var _subTipoFiltro:String;
		private var _clasifProductoFiltro:String;
		private var _controlProductoFiltro:String;
		private var _estadoFisicoFiltro:String;
		private var _fechaETString:String;
		private var _fechaELString:String;
		private var _fechaSometioString:String;
		private var _fechaFormato:String;
		private var _fecha:Date;
		private var _estado:String;
		private var _idProducto:Number;
		private var _finicioString:String;
		private var _fechaFin:Date;
		
		private var _noProductos:int;
		
		private var _enTiempo:String;
		private var _totalesGrafica:int;
		private var _piezas:Number;
		private var _monto:Number;
		
		//Para Previo Importación en aplicacion Director General
		private var _reqPermiso:String;
		private var _sistema:String;
		private var _concepto:String;
		private var _unidad:String;
		private var _depositarioInternacional:String;
		private var _pais:String;
		private var _folio:String;
		private var _docto:String;
		private var _partida:String;
		private var _idpcotiza:String;
		
		DateBase.monthNamesShort = ["Ene","Feb","Mar","Abr","May","Jun","Jul","Ago","Sept","Oct","Nov","Dic"];
		
		public function PermisoImportacion()
		{
		}

		public function get cantidadString():String
		{
			return _cantidadString;
		}

		public function set cantidadString(value:String):void
		{
			_cantidadString = value;
		}

		public function get proveedor():String
		{
			return _proveedor;
		}

		public function set proveedor(value:String):void
		{
			_proveedor = value;
		}

		public function get totalesGrafica():int
		{
			return _totalesGrafica;
		}

		public function set totalesGrafica(value:int):void
		{
			_totalesGrafica = value;
		}

		public function get noProductos():int
		{
			return _noProductos;
		}

		public function set noProductos(value:int):void
		{
			_noProductos = value;
		}

		public function get fechaLiberacion():Date
		{
			return _fechaLiberacion;
		}

		public function set fechaLiberacion(value:Date):void
		{
			_fechaLiberacion = value;
		}

		public function get idProducto():Number
		{
			return _idProducto;
		}

		public function set idProducto(value:Number):void
		{
			_idProducto = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get fechaFormato():String
		{
			return _fechaFormato;
		}

		public function set fechaFormato(value:String):void
		{
			_fechaFormato = value;
		}
		public function get fecha():Date
		{
			return _fecha;
		}
		

		public function set fecha(value:Date):void
		{
			_fecha = value;
			if( value != null ){
				_fechaFormato = UtilsFecha.formatoFechaDDMMMYYYY( value )
			}else{
				_fechaFormato = 'ND';
			}
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get tipoProducto():String
		{
			return _tipoProducto;
		}
		
		public function set tipoProducto(value:String):void
		{
			if(value != null){
				if(value == "Estandares"){
					_tipoProducto = "Estándares";
					_tipoProductoFiltro = "ESTÁNDARES";
				}else{
					_tipoProducto = value;
					_tipoProductoFiltro = value.toUpperCase();
				}
			}
		}
		
		public function get fabrica():String
		{
			return _fabrica;
		}
		
		public function set fabrica(value:String):void
		{
			_fabrica = value;
		}
		
		public function get codigoProducto():String
		{
			return _codigoProducto;
		}
		
		public function set codigoProducto(value:String):void
		{
			_codigoProducto = value;
		}
		
		public function get nombreProducto():String
		{
			return _nombreProducto;
		}
		
		public function set nombreProducto(value:String):void
		{
			_nombreProducto = value;
		}
		
		public function get costo():Number
		{
			return _costo;
		}
		
		public function set costo(value:Number):void
		{
			_costo = value;
		}
		
		public function get moneda():String
		{
			return _moneda;
		}
		
		public function set moneda(value:String):void
		{
			_moneda = value;
		}
		
		public function get tipoPermiso():String
		{
			return _tipoPermiso;
		}
		
		public function set tipoPermiso(value:String):void
		{
			_tipoPermiso = value;
		}
		
		public function get documento():String
		{
			return _documento;
		}
		
		public function set documento(value:String):void
		{
			_documento = value;
		}
		
		public function get fechaET():Date
		{
			return _fechaET;
		}
		
		public function set fechaET(value:Date):void
		{
			_fechaET = value;
			if(value != null){
				var formatoFecha:DateFormatter = new DateFormatter();
				formatoFecha.formatString = "DD/MMM/YYYY";
				_fechaETString = formatoFecha.format(value);
			}
		}
		
		public function get fechaEL():Date
		{
			return _fechaEL;
		}
		
		public function set fechaEL(value:Date):void
		{
			_fechaEL = value;
			if(value != null){
				var formatoFecha:DateFormatter = new DateFormatter();
				formatoFecha.formatString = "DD/MMM/YYYY";
				_fechaELString = formatoFecha.format(value);
			}
		}
		
		public function get fraccionArancelaria():String
		{
			return _fraccionArancelaria;
		}
		
		public function set fraccionArancelaria(value:String):void
		{
			_fraccionArancelaria = value;
		}
		
		public function get tipoSolicitudPermiso():String
		{
			return _tipoSolicitudPermiso;
		}
		
		public function set tipoSolicitudPermiso(value:String):void
		{
			if(value != null){
				_tipoSolicitudPermisoFiltro = value.toUpperCase();
			}
			_tipoSolicitudPermiso = value;
		}
		
		public function get clasificacionProducto():String
		{
			return _clasificacionProducto;
		}
		
		public function set clasificacionProducto(value:String):void
		{
			if(value == null || StringUtil.trim(value).length == 0 || value == "--NINGUNO--"){
				_clasifProductoFiltro = "ND";
			}else{
				_clasifProductoFiltro = value.toUpperCase();
			}
			_clasificacionProducto = value;
		}
		
		public function get clasificacionSolictud():String
		{
			return _clasificacionSolictud;
		}
		
		public function set clasificacionSolictud(value:String):void
		{
			_clasificacionSolictud = value;
			_clasificacionSolictudFiltro = value.toUpperCase();
		}
		
		public function get diasFiltro():String
		{
			return _diasFiltro;
		}
		
		public function set diasFiltro(value:String):void
		{
			_diasFiltro = value;
		}
		
		public function get origen():String
		{
			return _origen;
		}
		
		public function set origen(value:String):void
		{
			_origen = value;
		}
		
		public function get origenFolio():String
		{
			return _origenFolio;
		}
		
		public function set origenFolio(value:String):void
		{
			_origenFolio = value;
		}
		
		public function get estadoProducto():String
		{
			return _estadoProducto;
		}
		
		public function set estadoProducto(value:String):void
		{
			_estadoProducto = value;
		}
		
		public function get controlProducto():String
		{
			return _controlProducto;
		}
		
		public function set controlProducto(value:String):void
		{
			if(value != null){
				_controlProductoFiltro = value.toUpperCase();
			}
			_controlProducto = value;
		}
		
		public function get precioUnitario():Number
		{
			return _precioUnitario;
		}
		
		public function set precioUnitario(value:Number):void
		{
			_precioUnitario = value;
		}
		
		public function get cas():String
		{
			return _cas;
		}
		
		public function set cas(value:String):void
		{
			_cas = value;
		}
		
		public function get estadoPermiso():String
		{
			return _estadoPermiso;
		}
		
		public function set estadoPermiso(value:String):void
		{
			if(value == "A tramitacion")
				_estadoPermiso = "A tramitación";
			else if(value == "En autorizacion"){
				_estadoPermiso = "En autorización";
			}else{
				_estadoPermiso = value;
			}
		}
		
		public function get datosToxicologicos():String
		{
			return _datosToxicologicos;
		}
		
		public function set datosToxicologicos(value:String):void
		{
			_datosToxicologicos = value;
		}
		
		public function get folioEntrada():String
		{
			return _folioEntrada;
		}
		
		public function set folioEntrada(value:String):void
		{
			_folioEntrada = value;
		}
		
		public function get noEntrada():String
		{
			return _noEntrada;
		}
		
		public function set noEntrada(value:String):void
		{
			_noEntrada = value;
		}
		
		public function get estadoFisico():String
		{
			return _estadoFisico;
		}
		
		public function set estadoFisico(value:String):void
		{
			if(value != null){
				if(value == "Liquido"){
					_estadoFisico = "Líquido";
				}else if(value == "Solido"){
					_estadoFisico = "Sólido";
				}else{
					_estadoFisico = value;
				}
			_estadoFisicoFiltro = _estadoFisico.toUpperCase();
			}
		}
		
		public function get etiqueta():String
		{
			return _etiqueta;
		}
		
		public function set etiqueta(value:String):void
		{
			_etiqueta = value;
		}
		
		public function get subTipo():String
		{
			return _subTipo;
		}
		
		public function set subTipo(value:String):void
		{
			if(value != null){
				_subTipoFiltro = value.toUpperCase();
			}
			_subTipo = value;
		}
		
		public function get tipoProductoFiltro():String
		{
			return _tipoProductoFiltro;
		}
		
		public function set tipoProductoFiltro(value:String):void
		{
			_tipoProductoFiltro = value;
		}
		
		public function get tipoSolicitudPermisoFiltro():String
		{
			return _tipoSolicitudPermisoFiltro;
		}
		
		public function set tipoSolicitudPermisoFiltro(value:String):void
		{
			_tipoSolicitudPermisoFiltro = value;
		}

		public function get subTipoFiltro():String
		{
			return _subTipoFiltro;
		}

		public function set subTipoFiltro(value:String):void
		{
			_subTipoFiltro = value;
		}

		public function get clasifProductoFiltro():String
		{
			return _clasifProductoFiltro;
		}

		public function set clasifProductoFiltro(value:String):void
		{
			_clasifProductoFiltro = value;
		}

		public function get controlProductoFiltro():String
		{
			return _controlProductoFiltro;
		}

		public function set controlProductoFiltro(value:String):void
		{
			_controlProductoFiltro = value;
		}

		public function get estadoFisicoFiltro():String
		{
			return _estadoFisicoFiltro;
		}

		public function set estadoFisicoFiltro(value:String):void
		{
			_estadoFisicoFiltro = value;
		}

		public function get fechaETString():String
		{
			return _fechaETString;
		}

		public function set fechaETString(value:String):void
		{
			_fechaETString = value;
		}

		public function get fechaELString():String
		{
			return _fechaELString;
		}

		public function set fechaELString(value:String):void
		{
			_fechaELString = value;
		}

		public function get cantidad():int
		{
			return _cantidad;
		}

		public function set cantidad(value:int):void
		{
			_cantidad = value;
		}

		public function get idSolicitud():String
		{
			return _idSolicitud;
		}

		public function set idSolicitud(value:String):void
		{
			_idSolicitud = value;
		}

		public function get pedCot():String
		{
			return _pedCot;
		}

		public function set pedCot(value:String):void
		{
			_pedCot = value;
		}

		public function get folioLote():String
		{
			return _folioLote;
		}

		public function set folioLote(value:String):void
		{
			_folioLote = value;
		}

		public function get folioSolicitud():String
		{
			return _folioSolicitud;
		}

		public function set folioSolicitud(value:String):void
		{
			_folioSolicitud = value;
		}

		public function get fechaSometio():String
		{
			return _fechaSometio;
		}

		public function set fechaSometio(value:String):void
		{
			_fechaSometio = value;
			if(value != null){
				var formatoFecha:DateFormatter = new DateFormatter();
				formatoFecha.formatString = "DD/MMM/YYYY";
				_fechaSometioString = formatoFecha.format(value);
			}
		}

		public function get numEntrada():String
		{
			return _numEntrada;
		}

		public function set numEntrada(value:String):void
		{
			_numEntrada = value;
		}

		public function get doctoEntrada():String
		{
			return _doctoEntrada;
		}

		public function set doctoEntrada(value:String):void
		{
			_doctoEntrada = value;
		}
		public function get enTiempo():String
		{
			return _enTiempo;
		}
		
		public function set enTiempo(value:String):void
		{
			_enTiempo = value;
		}

		public function get fechaSometioString():String
		{
			return _fechaSometioString;
		}

		public function set fechaSometioString(value:String):void
		{
			_fechaSometioString = value;
		}

		public function get justificacion():String
		{
			return _justificacion;
		}

		public function set justificacion(value:String):void
		{
			_justificacion = value;
		}

		public function get finicio():Date
		{
			return _finicio;
		}

		public function set finicio(value:Date):void
		{
			_finicio = value;
			if(value != null){
				var formatoFecha:DateFormatter = new DateFormatter();
				formatoFecha.formatString = "DD/MMM/YYYY HH:NN";
				_finicioString = formatoFecha.format(value);
			}
		}

		public function get finicioString():String
		{
			return _finicioString;
		}

		public function set finicioString(value:String):void
		{
			_finicioString = value;
		}

		public function get marca():String
		{
			return _marca;
		}

		public function set marca(value:String):void
		{
			_marca = value;
		}

		public function get reqPermiso():String
		{
			return _reqPermiso;
		}

		public function set reqPermiso(value:String):void
		{
			_reqPermiso = value;
		}

		public function get sistema():String
		{
			return _sistema;
		}

		public function set sistema(value:String):void
		{
			_sistema = value;
		}

		public function get concepto():String
		{
			return _concepto;
		}

		public function set concepto(value:String):void
		{
			_concepto = value;
		}

		public function get unidad():String
		{
			return _unidad;
		}

		public function set unidad(value:String):void
		{
			_unidad = value;
		}

		public function get depositarioInternacional():String
		{
			return _depositarioInternacional;
		}

		public function set depositarioInternacional(value:String):void
		{
			_depositarioInternacional = value;
		}

		public function get pais():String
		{
			return _pais;
		}

		public function set pais(value:String):void
		{
			_pais = value;
		}

		public function get fechaFin():Date
		{
			return _fechaFin;
		}

		public function set fechaFin(value:Date):void
		{
			_fechaFin = value;
		}

		public function get piezas():Number
		{
			return _piezas;
		}

		public function set piezas(value:Number):void
		{
			_piezas = value;
		}

		public function get monto():Number
		{
			return _monto;
		}

		public function set monto(value:Number):void
		{
			_monto = value;
		}

		public function get folio():String
		{
			return _folio;
		}

		public function set folio(value:String):void
		{
			_folio = value;
		}

		public function get docto():String
		{
			return _docto;
		}

		public function set docto(value:String):void
		{
			_docto = value;
		}

		public function get partida():String
		{
			return _partida;
		}

		public function set partida(value:String):void
		{
			_partida = value;
		}

		public function get clasificacionSolictudFiltro():String
		{
			return _clasificacionSolictudFiltro;
		}

		public function set clasificacionSolictudFiltro(value:String):void
		{
			_clasificacionSolictudFiltro = value;
		}

		public function get idpcotiza():String
		{
			return _idpcotiza;
		}

		public function set idpcotiza(value:String):void
		{
			_idpcotiza = value;
		}

		public function tipoProductoSinAcento(value:String):void{
			_tipoProducto = value;
		}
		
		public function estadoFisicoSinAcento(value:String):void{
			_estadoFisico = value;
		}
	}
}