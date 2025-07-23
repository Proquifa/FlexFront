package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.consultas.comun.ResumenLinea")]
	[Bindable]
	public dynamic class ResumenLinea
	{
		
		private var  _fechaConfirmacion:Date;
		private var _fechaRecepcion:Date;
		private var _nivel:String;
		private var _noFactura:String;
		private var _documentos:String;
		private var _comentarios:String;
		private var _NC:Boolean;
		private var _pagada:Boolean;
		
		private var _flete:Number;
		private var _nacional:Boolean;
		private var _fechaEstimadaDePago:Date;
		private var _fechaFacturacion:Date;
		private var _CondicionesPago:String;
		private var _moneda:String;
		private var _fechaRevicion:Date;
		
		private var _inconsistencia:String;
		private var _aclaracion:String; 
		private var _fecheque:Date;
		private var _fpago:Date;
		private var _importe:Number;
		private var _modoPago:String;
		private var _numCheque:String;
		private var _docPago:String;
		
		private var _fverificacion:Date;
		private var _insDeDeposito:String;
		private var _etiquetaDeposito:String;
		
		private var _fdeposito:Date;
		private var _medioC:String;
		private var _correoC:String;
		
		private var _importeFormato:String;
		
		private var _comentariosC:String;
		private var _finicioPagarOC:Date;
		private var _fechaConfirmacionOC:Date
		private var _depositarCheque:String;
		private var _comprobanteCheque:String;
		private var _etiquetas:String;
		
		private var _inconsistencias:ArrayCollection;
		private var _folioPG:String;
		private var _chequeDocto:String;
		private var _uuid:String;
		
		private var _factura:String;
		private var _chequeFirmado:String;
		private var _certificado:String;
		private var _fInconsistencia: Date;
		private var _fAclaracion: Date;
		private var _saldoAFavor:ArrayCollection;
		
		public function ResumenLinea()
		{
		}
		
		public function get saldoAFavor():ArrayCollection
		{
			return _saldoAFavor;
		}
		
		public function set saldoAFavor(value:ArrayCollection):void
		{
			_saldoAFavor = value;
		}
		public function get fInconsistencia():Date
		{
			return _fInconsistencia;
		}

		public function set fInconsistencia(value:Date):void
		{
			_fInconsistencia = value;
		}

		public function get fAclaracion():Date
		{
			return _fAclaracion;
		}

		public function set fAclaracion(value:Date):void
		{
			_fAclaracion = value;
		}

		public function get uuid():String
		{
			return _uuid;
		}

		public function set uuid(value:String):void
		{
			_uuid = value;
		}

		public function get certificado():String
		{
			return _certificado;
		}

		public function set certificado(value:String):void
		{
			_certificado = value;
		}

		public function get importeFormato():String
		{
			return _importeFormato;
		}
		
		public function set importeFormato(value:String):void
		{
			_importeFormato = value;
		}
		
		public function get fechaConfirmacion():Date
		{
			return _fechaConfirmacion;
		}

		public function set fechaConfirmacion(value:Date):void
		{
			_fechaConfirmacion = value;
		}

		public function get fechaRecepcion():Date
		{
			return _fechaRecepcion;
		}

		public function set fechaRecepcion(value:Date):void
		{
			_fechaRecepcion = value;
		}

		public function get nivel():String
		{
			return _nivel;
		}

		public function set nivel(value:String):void
		{
			_nivel = value;
		}

		public function get noFactura():String
		{
			return _noFactura;
		}

		public function set noFactura(value:String):void
		{
			_noFactura = value;
		}

		public function get documentos():String
		{
			return _documentos;
		}

		public function set documentos(value:String):void
		{
			_documentos = value;
		}

		public function get comentarios():String
		{
			return _comentarios;
		}

		public function set comentarios(value:String):void
		{
			_comentarios = value;
		}

		public function get NC():Boolean
		{
			return _NC;
		}

		public function set NC(value:Boolean):void
		{
			_NC = value;
		}

		public function get flete():Number
		{
			return _flete;
		}

		public function set flete(value:Number):void
		{
			_flete = value;
		}

		public function get nacional():Boolean
		{
			return _nacional;
		}

		public function set nacional(value:Boolean):void
		{
			_nacional = value;
		}

		public function get fechaEstimadaDePago():Date
		{
			return _fechaEstimadaDePago;
		}

		public function set fechaEstimadaDePago(value:Date):void
		{
			_fechaEstimadaDePago = value;
		}

		public function get fechaFacturacion():Date
		{
			return _fechaFacturacion;
		}

		public function set fechaFacturacion(value:Date):void
		{
			_fechaFacturacion = value;
		}

		public function get CondicionesPago():String
		{
			return _CondicionesPago;
		}

		public function set CondicionesPago(value:String):void
		{
			_CondicionesPago = value;
		}

		public function get moneda():String
		{
			return _moneda;
		}

		public function set moneda(value:String):void
		{
			_moneda = value;
		}

		public function get fechaRevicion():Date
		{
			return _fechaRevicion;
		}

		public function set fechaRevicion(value:Date):void
		{
			_fechaRevicion = value;
		}

		public function get inconsistencia():String
		{
			return _inconsistencia;
		}

		public function set inconsistencia(value:String):void
		{
			_inconsistencia = value;
		}

		public function get aclaracion():String
		{
			return _aclaracion;
		}

		public function set aclaracion(value:String):void
		{
			_aclaracion = value;
		}

		public function get fecheque():Date
		{
			return _fecheque;
		}

		public function set fecheque(value:Date):void
		{
			_fecheque = value;
		}

		public function get fpago():Date
		{
			return _fpago;
		}

		public function set fpago(value:Date):void
		{
			_fpago = value;
		}

		public function get importe():Number
		{
			return _importe;
		}

		public function set importe(value:Number):void
		{
			_importe = value;
			_importeFormato = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}

		public function get modoPago():String
		{
			return _modoPago;
		}

		public function set modoPago(value:String):void
		{
			_modoPago = value;
		}

		public function get numCheque():String
		{
			return _numCheque;
		}

		public function set numCheque(value:String):void
		{
			_numCheque = value;
		}

		public function get docPago():String
		{
			return _docPago;
		}

		public function set docPago(value:String):void
		{
			_docPago = value;
		}

		public function get fverificacion():Date
		{
			return _fverificacion;
		}

		public function set fverificacion(value:Date):void
		{
			_fverificacion = value;
		}

		public function get insDeDeposito():String
		{
			return _insDeDeposito;
		}

		public function set insDeDeposito(value:String):void
		{
			_insDeDeposito = value;
		}

		public function get etiquetaDeposito():String
		{
			return _etiquetaDeposito;
		}

		public function set etiquetaDeposito(value:String):void
		{
			_etiquetaDeposito = value;
		}

		public function get fdeposito():Date
		{
			return _fdeposito;
		}

		public function set fdeposito(value:Date):void
		{
			_fdeposito = value;
		}

		public function get medioC():String
		{
			return _medioC;
		}

		public function set medioC(value:String):void
		{
			_medioC = value;
		}

		public function get correoC():String
		{
			return _correoC;
		}

		public function set correoC(value:String):void
		{
			_correoC = value;
		}

		public function get comentariosC():String
		{
			return _comentariosC;
		}

		public function set comentariosC(value:String):void
		{
			_comentariosC = value;
		}

		public function get depositarCheque():String
		{
			return _depositarCheque;
		}

		public function set depositarCheque(value:String):void
		{
			_depositarCheque = value;
		}

		public function get comprobanteCheque():String
		{
			return _comprobanteCheque;
		}

		public function set comprobanteCheque(value:String):void
		{
			_comprobanteCheque = value;
		}

		public function get fechaConfirmacionOC():Date
		{
			return _fechaConfirmacionOC;
		}

		public function set fechaConfirmacionOC(value:Date):void
		{
			_fechaConfirmacionOC = value;
		}

		public function get finicioPagarOC():Date
		{
			return _finicioPagarOC;
		}

		public function set finicioPagarOC(value:Date):void
		{
			_finicioPagarOC = value;
		}

		public function get inconsistencias():ArrayCollection
		{
			return _inconsistencias;
		}

		public function set inconsistencias(value:ArrayCollection):void
		{
			_inconsistencias = value;
		}

		public function get etiquetas():String
		{
			return _etiquetas;
		}

		public function set etiquetas(value:String):void
		{
			_etiquetas = value;
		}

		public function get folioPG():String
		{
			return _folioPG;
		}

		public function set folioPG(value:String):void
		{
			_folioPG = value;
		}

		public function get chequeDocto():String
		{
			return _chequeDocto;
		}

		public function set chequeDocto(value:String):void
		{
			_chequeDocto = value;
		}

		public function get pagada():Boolean
		{
			return _pagada;
		}

		public function set pagada(value:Boolean):void
		{
			_pagada = value;
		}

		public function get factura():String
		{
			return _factura;
		}

		public function set factura(value:String):void
		{
			_factura = value;
		}

		public function get chequeFirmado():String
		{
			return _chequeFirmado;
		}

		public function set chequeFirmado(value:String):void
		{
			_chequeFirmado = value;
		}


	}
}