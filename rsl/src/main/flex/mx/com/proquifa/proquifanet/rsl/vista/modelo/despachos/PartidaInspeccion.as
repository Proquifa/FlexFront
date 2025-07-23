package mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos
{
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PartidaCompra;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.DocumentoAdjunto;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	
	import flashx.textLayout.formats.Direction;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.despachos.PartidaInspeccion")]
	[Bindable]
	public class PartidaInspeccion extends PartidaCompra
	{
		public function PartidaInspeccion()
		{
			super();
		}
		private var _idProveedor:Number;
		private var _idPPedido:Number;
		private var _nombreProveedor:String;
		private var _manejo:String;
		private var _paisProveedor:String
		/*private var _origen:String;*/
		private var _rechazoXDoc:Boolean;
		private var _rechazoXInsp:Boolean;
		private var _fechaInicioInspeccion:Date;
		private var _fechaFinInspeccion:Date;
		private var _disponibilidadPedimento:String;
		private var _guia:String;
		private var _idioma:String;
		private var _mesCaduca:String;
		private var _anoCaduca:String;
		private var _caducidad:String;
		private var _edicion:String;
		private var _parciales:String;
		private var _folioPackingList:String;
		private var _estadoRechazo:String;
		private var _numPartidasProgramadas:int;
		private var _numPartidasRegulares:int;
		private var _numPartidasFEx:int;
		private var _documento:String;
		private var _tipoDocumento:String;
		private var _presentacion:String;
		private var _edoPrevioPP:String;
		private var _edoPrevioPC:String;
		private var _inspector:String;
		private var _editoPartida:Boolean;
		private var _revisoNumPiezas:Boolean;
		private var _revisoCaducidad:Boolean;
		private var _revisoLote:Boolean;
		private var _revisoDoc:Boolean;
		private var _insertoPiezas:Boolean;
		private var _pedidoFacturadoPor:String;
		//private var _rechazoAPartida:String;
		//private var _editoPiezas:Boolean;
		
		/////////////////////////////variables para la tabla y graficas
		private var _enTiempo:String;
		private var _fechaEstimadaEntregaString:String;
		private var _fechaInicioInspeccionString:String;
		private var _numPartidas:int = 0;
		private var _numRechazosXDoc:int;
		private var _numRechazosXDocAbiertos:int;
		private var _numRechazosXDocCerrados:int;
		private var _numRechazosXIns:int;
		private var _numRechazosXInsAbiertos:int;
		private var _numRechazosXInsCerrados:int;
		private var _manejoMasCritico:String;
		private var _numManejoMasCritico:int=-2;
		private var _numOrdenesCompra:int;
		private var _FEEMasCercana:Date;
		private var _FEEMasCercanaString:String;
		private var _pedidosInternosAsociados:int;
		private var _situacionMasCritica:String;
		private var _numSituacionMasCritica:int=-2;
		//			variables para el renderer OrdenCompraRenderer
		private var _ET:String;
		private var _numET:int=-1;
		private var _numUR:int=-1;
		private var _numFT:int=-1;
		private var _numST:int=-1;
		private var _numCG:int=-1;
		private var _numRG:int=-1;
		private var _numAB:int=-1;
		private var _numNA:int=-1;
		private var _numFR:int=-1;
		private var _numFE:int=-1;
		private var _numFP:int=-1;
		private var _numAbierto:int=-2;
		private var _numCerrado:int=-2;
		private var _ultimo:String="";
		private var _rechaString:String="";
		//			/variables para el renderer OrdenCompraRenderer
		private var _numFechaInicioInspeccionDias:int= 0;
		
		
		private var _folioOrdenDespacho:String;
		private var _folioListaArribo:String;
		private var _diasRestantes:Number;
		private var _ruta:String;
		private var _zonaMensajeria:String;
		private var _prioridad:String;
		private var _puntos:String;
		private var _criterio:String;
		
		private var _prioridadFEE:String;
		private var _prioridadRDestino:String;
		private var _prioridadRParciales:String;
		private var _prioridadManejo:String;
		private var _prioridadUDArribo:String;
		private var _prioridadControl:String;
		private var _puntosFEE:Number;
		private var _puntosRDestino:Number;
		private var _puntosRParciales:Number;
		private var _puntosManejo:Number;
		private var _puntosUDArribo:Number;
		private var _puntosControl:Number;
		private var _frecuencia:String;
		private var _aceptaParciales:Number;
		private var _folioEtiqueta:String;
		
		private var _numPartidasContabilizadas:Number;
		private var _numPiezasContabilizadas:Number;
		private var _numPiezasPriori1:Number;
		private var _numPiezasPriori2:Number;
		private var _numPiezasPriori3:Number;
		private var _montoTotalPriori1:Number;
		private var _montoTotalPriori2:Number;
		private var _montoTotalPriori3:Number;
		private var _prioridadesContenidas:String;
		private var _conceptoAux:String;
		private var _idCliente:Number;
		private var _esImportado:Boolean;
		private var _estadoFisico:String;
	    private var _fisicamenCon:String;
	    private var _ubicacion:String;
		private var _referenciaOC:Number;
		private var _referenciaFact:Number;
		

		
		/*variables de vista inspeccionar productos*/
		
		private var _loteDistinto:Boolean;
		private var _catCorrecto:Boolean;
		private var _descripcionCorrecta:Boolean;
		private var _presentacionCorrecta:Boolean;
		private var _loteCorrecto:Boolean;
		private var _caducidadCorrecta:Boolean;
		private var _fisicamenteCorrecto:Boolean;
		private var _documentacionCorrecta:Boolean;
		private var _despachable:Boolean;
		private var _idiomaCorecto:Boolean;
		private var _edicionCorrecta:Boolean;
		
		private var _imagenFrente:DocumentoAdjunto;
		private var _imagenArriba:DocumentoAdjunto;
		private var _imagenAbajo:DocumentoAdjunto;
		private var _loteOriginal:String;
		private var _reporte:String;
		
		private var _fechaFinString:String;
		private var _almacen:String;
		private var _transportacion:String;
		private var _conDocumentacion:Boolean;
		private var _esPublicacion:Boolean;
		private var _fechaInsString:String;
		
		private var _esTitulo:Boolean;
		private var _colectado:Boolean;
		private var _tiempoInspeccion:Date;
		private var _prioridad_p:Number;
		
	   /*Variables para el itemRender "Conceptos" la vista de colectar*/
		private var _num:Number;
		private var _prioridadCalculada:String;
		private var _cantPartidas:Number;
		private var _fechaFinEmbalaje:Date;

		public function get fechaFinEmbalaje():Date
		{
			return _fechaFinEmbalaje;
		}

		public function set fechaFinEmbalaje(value:Date):void
		{
			_fechaFinEmbalaje = value;
		}

		public function get cantPartidas():Number
		{
			return _cantPartidas;
		}

		public function set cantPartidas(value:Number):void
		{
			_cantPartidas = value;
		}

		public function get prioridadCalculada():String
		{
			return _prioridadCalculada;
		}

		public function set prioridadCalculada(value:String):void
		{
			_prioridadCalculada = value;
		}

		public function get prioridad_p():Number
		{
			return _prioridad_p;
		}

		public function set prioridad_p(value:Number):void
		{
			_prioridad_p = value;
		}

		public function get tiempoInspeccion():Date
		{
			return _tiempoInspeccion;
		}

		public function set tiempoInspeccion(value:Date):void
		{
			_tiempoInspeccion = value;
		}

		public function get colectado():Boolean
		{
			return _colectado;
		}

		public function set colectado(value:Boolean):void
		{
			_colectado = value;
		}

		public function get esTitulo():Boolean
		{
			return _esTitulo;
		}

		public function set esTitulo(value:Boolean):void
		{
			_esTitulo = value;
		}

		public function get transportacion():String
		{
			return _transportacion;
		}

		public function set transportacion(value:String):void
		{
			_transportacion = value;
		}

		public function get fechaFinString():String
		{
			return _fechaFinString;
		}

		public function set fechaFinString(value:String):void
		{
			_fechaFinString = value;
		}

		public function get almacen():String
		{
			return _almacen;
		}

		public function set almacen(value:String):void
		{
			_almacen = value;
		}

		public function get esPublicacion():Boolean
		{
			return _esPublicacion;
		}

		public function set esPublicacion(value:Boolean):void
		{
			_esPublicacion = value;
		}

		public function get puntosRParciales():Number
		{
			return _puntosRParciales;
		}

		public function set puntosRParciales(value:Number):void
		{
			_puntosRParciales = value;
		}

		public function get puntosRDestino():Number
		{
			return _puntosRDestino;
		}

		public function set puntosRDestino(value:Number):void
		{
			_puntosRDestino = value;
		}

		public function get fechaInsString():String
		{
			return _fechaInsString;
		}

		public function set fechaInsString(value:String):void
		{
			_fechaInsString = value;
		}

		public function get loteOriginal():String
		{
			return _loteOriginal;
		}

		public function set loteOriginal(value:String):void
		{
			_loteOriginal = value;
		}

		public function get edicionCorrecta():Boolean
		{
			return _edicionCorrecta;
		}

		public function set edicionCorrecta(value:Boolean):void
		{
			_edicionCorrecta = value;
		}

		public function get idiomaCorecto():Boolean
		{
			return _idiomaCorecto;
		}

		public function set idiomaCorecto(value:Boolean):void
		{
			_idiomaCorecto = value;
		}

		public function get reporte():String
		{
			return _reporte;
		}

		public function set reporte(value:String):void
		{
			_reporte = value;
		}

		public function get puntosControl():Number
		{
			return _puntosControl;
		}

		public function set puntosControl(value:Number):void
		{
			_puntosControl = value;
		}

		public function get puntosUDArribo():Number
		{
			return _puntosUDArribo;
		}

		public function set puntosUDArribo(value:Number):void
		{
			_puntosUDArribo = value;
		}

		public function get puntosManejo():Number
		{
			return _puntosManejo;
		}

		public function set puntosManejo(value:Number):void
		{
			_puntosManejo = value;
		}

		public function get puntosFEE():Number
		{
			return _puntosFEE;
		}

		public function set puntosFEE(value:Number):void
		{
			_puntosFEE = value;
		}

		public function get imagenFrente():DocumentoAdjunto
		{
			return _imagenFrente;
		}

		public function set imagenFrente(value:DocumentoAdjunto):void
		{
			_imagenFrente = value;
		}

		public function get imagenArriba():DocumentoAdjunto
		{
			return _imagenArriba;
		}

		public function set imagenArriba(value:DocumentoAdjunto):void
		{
			_imagenArriba = value;
		}

		public function get imagenAbajo():DocumentoAdjunto
		{
			return _imagenAbajo;
		}

		public function set imagenAbajo(value:DocumentoAdjunto):void
		{
			_imagenAbajo = value;
		}

		public function get documentacionCorrecta():Boolean
		{
			return _documentacionCorrecta;
		}

		public function set documentacionCorrecta(value:Boolean):void
		{
			_documentacionCorrecta = value;
		}

		public function get loteDistinto():Boolean
		{
			return _loteDistinto;
		}

		public function set loteDistinto(value:Boolean):void
		{
			_loteDistinto = value;
		}

		public function get despachable():Boolean
		{
			return _despachable;
		}

		public function set despachable(value:Boolean):void
		{
			_despachable = value;
		}

		public function get descripcionCorrecta():Boolean
		{
			return _descripcionCorrecta;
		}

		public function set descripcionCorrecta(value:Boolean):void
		{
			_descripcionCorrecta = value;
		}

		public function get conDocumentacion():Boolean
		{
			return _conDocumentacion;
		}

		public function set conDocumentacion(value:Boolean):void
		{
			_conDocumentacion = value;
		}

		public function get loteCorrecto():Boolean
		{
			return _loteCorrecto;
		}

		public function set loteCorrecto(value:Boolean):void
		{
			_loteCorrecto = value;
		}

		public function get fisicamenteCorrecto():Boolean
		{
			return _fisicamenteCorrecto;
		}

		public function set fisicamenteCorrecto(value:Boolean):void
		{
			_fisicamenteCorrecto = value;
		}

		public function get caducidadCorrecta():Boolean
		{
			return _caducidadCorrecta;
		}

		public function set caducidadCorrecta(value:Boolean):void
		{
			_caducidadCorrecta = value;
		}

		public function get presentacionCorrecta():Boolean
		{
			return _presentacionCorrecta;
		}

		public function set presentacionCorrecta(value:Boolean):void
		{
			_presentacionCorrecta = value;
		}

		public function get catCorrecto():Boolean
		{
			return _catCorrecto;
		}

		public function set catCorrecto(value:Boolean):void
		{
			_catCorrecto = value;
		}

		public function get fisicamenCon():String
		{
			return _fisicamenCon;
		}

		public function set fisicamenCon(value:String):void
		{
			_fisicamenCon = value;
		}

		public function get esImportado():Boolean
		{
			return _esImportado;
		}

		public function set esImportado(value:Boolean):void
		{
			_esImportado = value;
		}

		public function get idCliente():Number
		{
			return _idCliente;
		}

		public function set idCliente(value:Number):void
		{
			_idCliente = value;
		}

		public function get conceptoAux():String
		{
			return _conceptoAux;
		}

		public function set conceptoAux(value:String):void
		{
			_conceptoAux = value;
		}

		public function get numPiezasPriori3():Number
		{
			return _numPiezasPriori3;
		}

		public function set numPiezasPriori3(value:Number):void
		{
			_numPiezasPriori3 = value;
		}

		public function get numPiezasContabilizadas():Number
		{
			return _numPiezasContabilizadas;
		}

		public function set numPiezasContabilizadas(value:Number):void
		{
			_numPiezasContabilizadas = value;
		}

		public function get numPartidasContabilizadas():Number
		{
			return _numPartidasContabilizadas;
		}

		public function set numPartidasContabilizadas(value:Number):void
		{
			_numPartidasContabilizadas = value;
		}

		public function get numPiezasPriori2():Number
		{
			return _numPiezasPriori2;
		}

		public function set numPiezasPriori2(value:Number):void
		{
			_numPiezasPriori2 = value;
		}

		public function get numPiezasPriori1():Number
		{
			return _numPiezasPriori1;
		}

		public function set numPiezasPriori1(value:Number):void
		{
			_numPiezasPriori1 = value;
		}

		public function get folioEtiqueta():String
		{
			return _folioEtiqueta;
		}

		public function set folioEtiqueta(value:String):void
		{
			_folioEtiqueta = value;
		}

		public function get aceptaParciales():Number
		{
			return _aceptaParciales;
		}

		public function set aceptaParciales(value:Number):void
		{
			_aceptaParciales = value;
		}

		public function get frecuencia():String
		{
			return _frecuencia;
		}

		public function set frecuencia(value:String):void
		{
			_frecuencia = value;
		}


		public function get prioridadUDArribo():String
		{
			return _prioridadUDArribo;
		}

		public function set prioridadUDArribo(value:String):void
		{
			_prioridadUDArribo = value;
		}

		public function get prioridadManejo():String
		{
			return _prioridadManejo;
		}

		public function set prioridadManejo(value:String):void
		{
			_prioridadManejo = value;
		}

		public function get prioridadRParciales():String
		{
			return _prioridadRParciales;
		}

		public function set prioridadRParciales(value:String):void
		{
			_prioridadRParciales = value;
		}

		public function get prioridadRDestino():String
		{
			return _prioridadRDestino;
		}

		public function set prioridadRDestino(value:String):void
		{
			_prioridadRDestino = value;
		}

		public function get prioridadFEE():String
		{
			return _prioridadFEE;
		}

		public function set prioridadFEE(value:String):void
		{
			_prioridadFEE = value;
		}

		public function get criterio():String
		{
			return _criterio;
		}

		public function set criterio(value:String):void
		{
			_criterio = value;
		}

		public function get puntos():String
		{
			return _puntos;
		}

		public function set puntos(value:String):void
		{
			_puntos = value;
		}

		public function get prioridad():String
		{
			return _prioridad;
		}

		public function set prioridad(value:String):void
		{
			_prioridad = value;
		}

		public function get zonaMensajeria():String
		{
			return _zonaMensajeria;
		}

		public function set zonaMensajeria(value:String):void
		{
			_zonaMensajeria = value;
		}

		public function get ruta():String
		{
			return _ruta;
		}

		public function set ruta(value:String):void
		{
			_ruta = value;
		}

		public function get diasRestantes():Number
		{
			return _diasRestantes;
		}

		public function set diasRestantes(value:Number):void
		{
			_diasRestantes = value;
		}

		public function get folioListaArribo():String
		{
			return _folioListaArribo;
		}

		public function set folioListaArribo(value:String):void
		{
			_folioListaArribo = value;
		}

		public function get folioOrdenDespacho():String
		{
			return _folioOrdenDespacho;
		}

		public function set folioOrdenDespacho(value:String):void
		{
			_folioOrdenDespacho = value;
		}

		public function get pedidoFacturadoPor():String
		{
			return _pedidoFacturadoPor;
		}

		public function set pedidoFacturadoPor(value:String):void
		{
			_pedidoFacturadoPor = value;
		}

		public function get insertoPiezas():Boolean
		{
			return _insertoPiezas;
		}

		public function set insertoPiezas(value:Boolean):void
		{
			_insertoPiezas = value;
		}

		public function get anoCaduca():String
		{
			return _anoCaduca;
		}

		public function set anoCaduca(value:String):void
		{
			_anoCaduca = value;
		}

		public function get mesCaduca():String
		{
			return _mesCaduca;
		}

		public function set mesCaduca(value:String):void
		{
			_mesCaduca = value;
		}

		public function get guia():String
		{
			return _guia;
		}

		public function set guia(value:String):void
		{
			_guia = value;
		}

		public function get disponibilidadPedimento():String
		{
			return _disponibilidadPedimento;
		}

		public function set disponibilidadPedimento(value:String):void
		{
			_disponibilidadPedimento = value;
		}

		public function get fechaFinInspeccion():Date
		{
			return _fechaFinInspeccion;
		}

		public function set fechaFinInspeccion(value:Date):void
		{
			fechaFinString = UtilsFecha.formatoFechaDDMMMYYYY(value);
			_fechaFinInspeccion = value;
		}

		public function get editoPartida():Boolean
		{
			return _editoPartida;
		}

		public function set editoPartida(value:Boolean):void
		{
			_editoPartida = value;
		}

		public function get revisoDoc():Boolean
		{
			return _revisoDoc;
		}

		public function set revisoDoc(value:Boolean):void
		{
			_revisoDoc = value;
		}

		public function get revisoLote():Boolean
		{
			return _revisoLote;
		}

		public function set revisoLote(value:Boolean):void
		{
			_revisoLote = value;
		}

		public function get revisoCaducidad():Boolean
		{
			return _revisoCaducidad;
		}

		public function set revisoCaducidad(value:Boolean):void
		{
			_revisoCaducidad = value;
		}

		public function get revisoNumPiezas():Boolean
		{
			return _revisoNumPiezas;
		}

		public function set revisoNumPiezas(value:Boolean):void
		{
			_revisoNumPiezas = value;
		}

		public function get inspector():String
		{
			return _inspector;
		}

		public function set inspector(value:String):void
		{
			_inspector = value;
		}

		public function get edoPrevioPC():String
		{
			return _edoPrevioPC;
		}

		public function set edoPrevioPC(value:String):void
		{
			_edoPrevioPC = value;
		}

		public function get edoPrevioPP():String
		{
			return _edoPrevioPP;
		}

		public function set edoPrevioPP(value:String):void
		{
			_edoPrevioPP = value;
		}

		public function get idPPedido():Number
		{
			return _idPPedido;
		}

		public function set idPPedido(value:Number):void
		{
			_idPPedido = value;
		}

		public function get presentacion():String
		{
			return _presentacion;
		}

		public function set presentacion(value:String):void
		{
			_presentacion = value;
		}

		public function get documento():String
		{
			if( _documento == null || _documento == "" ) _documento = "No especificado";
			return _documento;
		}

		public function set documento(value:String):void
		{
			_documento = value;
		}

		public function get numFechaInicioInspeccionDias():int
		{
			var hoy:Date = new Date();
			if(fechaInicioInspeccion != null) _numFechaInicioInspeccionDias = UtilsFecha.regresaDiferenciaEntreFechasEnDias( fechaInicioInspeccion, hoy)-1;
			return _numFechaInicioInspeccionDias;
		}

		public function set numFechaInicioInspeccionDias(value:int):void
		{
			_numFechaInicioInspeccionDias = value;
		}

		public function get fechaInicioInspeccionString():String
		{
			if(fechaInicioInspeccion != null) _fechaInicioInspeccionString = UtilsFecha.formatoFechaDDMMMYYYY(fechaInicioInspeccion) + ' ' 
				+(fechaInicioInspeccion.getHours() < 10 ? '0'+fechaInicioInspeccion.getHours():fechaInicioInspeccion.getHours() )
				+ ':' 
				+ (fechaInicioInspeccion.getMinutes() < 10 ? '0'+fechaInicioInspeccion.getMinutes():fechaInicioInspeccion.getMinutes() );
			else _fechaInicioInspeccionString = "No definido";
			return _fechaInicioInspeccionString;
		}

		public function set fechaInicioInspeccionString(value:String):void
		{
			_fechaInicioInspeccionString = value;
		}

		public function get numPartidasFEx():int
		{
			return _numPartidasFEx;
		}

		public function set numPartidasFEx(value:int):void
		{
			_numPartidasFEx = value;
		}

		public function get numPartidasRegulares():int
		{
			return _numPartidasRegulares;
		}

		public function set numPartidasRegulares(value:int):void
		{
			_numPartidasRegulares = value;
		}

		public function get numPartidasProgramadas():int
		{
			return _numPartidasProgramadas;
		}

		public function set numPartidasProgramadas(value:int):void
		{
			_numPartidasProgramadas = value;
		}

		public function get numSituacionMasCritica():int
		{
			return _numSituacionMasCritica;
		}

		public function set numSituacionMasCritica(value:int):void
		{
			_numSituacionMasCritica = value;
		}

		public function get numManejoMasCritico():int
		{
			return _numManejoMasCritico;
		}

		public function set numManejoMasCritico(value:int):void
		{
			_numManejoMasCritico = value;
		}

		public function get rechaString():String
		{
			return _rechaString;
		}

		public function set rechaString(value:String):void
		{
			_rechaString = value;
		}

		public function get ultimo():String
		{
			return _ultimo;
		}

		public function set ultimo(value:String):void
		{
			_ultimo = value;
		}

		public function get numCerrado():int
		{
			return _numCerrado;
		}

		public function set numCerrado(value:int):void
		{
			_numCerrado = value;
		}

		public function get numAbierto():int
		{
			return _numAbierto;
		}

		public function set numAbierto(value:int):void
		{
			_numAbierto = value;
		}

		public function get numFP():int
		{
			return _numFP;
		}

		public function set numFP(value:int):void
		{
			_numFP = value;
		}

		public function get numFE():int
		{
			return _numFE;
		}

		public function set numFE(value:int):void
		{
			_numFE = value;
		}

		public function get numFR():int
		{
			return _numFR;
		}

		public function set numFR(value:int):void
		{
			_numFR = value;
		}

		public function get numNA():int
		{
			return _numNA;
		}

		public function set numNA(value:int):void
		{
			_numNA = value;
		}

		public function get numAB():int
		{
			return _numAB;
		}

		public function set numAB(value:int):void
		{
			_numAB = value;
		}

		public function get numRG():int
		{
			return _numRG;
		}

		public function set numRG(value:int):void
		{
			_numRG = value;
		}

		public function get numCG():int
		{
			return _numCG;
		}

		public function set numCG(value:int):void
		{
			_numCG = value;
		}

		public function get numST():int
		{
			return _numST;
		}

		public function set numST(value:int):void
		{
			_numST = value;
		}

		public function get numFT():int
		{
			return _numFT;
		}

		public function set numFT(value:int):void
		{
			_numFT = value;
		}

		public function get numUR():int
		{
			return _numUR;
		}

		public function set numUR(value:int):void
		{
			_numUR = value;
		}

		public function get numET():int
		{
			return _numET;
		}

		public function set numET(value:int):void
		{
			_numET = value;
		}

		public function get ET():String
		{
			return _ET;
		}

		public function set ET(value:String):void
		{
			_ET = value;
		}

		public function get numOrdenesCompra():int
		{
			return _numOrdenesCompra;
		}

		public function set numOrdenesCompra(value:int):void
		{
			_numOrdenesCompra = value;
		}

		public function get situacionMasCritica():String
		{
			return _situacionMasCritica;
		}

		public function set situacionMasCritica(value:String):void
		{
			_situacionMasCritica = value;
		}

		public function get pedidosInternosAsociados():int
		{
			return _pedidosInternosAsociados;
		}

		public function set pedidosInternosAsociados(value:int):void
		{
			_pedidosInternosAsociados = value;
		}

		public function get FEEMasCercanaString():String
		{
			return _FEEMasCercanaString;
		}

		public function set FEEMasCercanaString(value:String):void
		{
			_FEEMasCercanaString = value;
		}

		public function get FEEMasCercana():Date
		{
			return _FEEMasCercana;
		}

		public function set FEEMasCercana(value:Date):void
		{
			_FEEMasCercana = value;
		}

		public function get manejoMasCritico():String
		{
			return _manejoMasCritico;
		}

		public function set manejoMasCritico(value:String):void
		{
			_manejoMasCritico = value;
		}

		public function get numRechazosXInsCerrados():int
		{
			return _numRechazosXInsCerrados;
		}

		public function set numRechazosXInsCerrados(value:int):void
		{
			_numRechazosXInsCerrados = value;
		}

		public function get numRechazosXDocCerrados():int
		{
			return _numRechazosXDocCerrados;
		}

		public function set numRechazosXDocCerrados(value:int):void
		{
			_numRechazosXDocCerrados = value;
		}

		public function get numRechazosXInsAbiertos():int
		{
			return _numRechazosXInsAbiertos;
		}

		public function set numRechazosXInsAbiertos(value:int):void
		{
			_numRechazosXInsAbiertos = value;
		}

		public function get numRechazosXDocAbiertos():int
		{
			return _numRechazosXDocAbiertos;
		}

		public function set numRechazosXDocAbiertos(value:int):void
		{
			_numRechazosXDocAbiertos = value;
		}

		public function get numRechazosXIns():int
		{
			return _numRechazosXIns;
		}

		public function set numRechazosXIns(value:int):void
		{
			_numRechazosXIns = value;
		}

		public function get numRechazosXDoc():int
		{
			return _numRechazosXDoc;
		}

		public function set numRechazosXDoc(value:int):void
		{
			_numRechazosXDoc = value;
		}

		public function get numPartidas():int
		{
			return _numPartidas;
		}

		public function set numPartidas(value:int):void
		{
			_numPartidas = value;
		}

		public function get fechaEstimadaEntregaString():String
		{
			_fechaEstimadaEntregaString = UtilsFecha.formatoFechaDDMMMYYYY(fechaEstimadaEntrega);
			return _fechaEstimadaEntregaString;
		}

		public function set fechaEstimadaEntregaString(value:String):void
		{
			_fechaEstimadaEntregaString = value;
		}

		public function get enTiempo():String
		{
			var fechaHoy:Date = new Date();
			var diferenciaDias:int=0;
			_enTiempo = "unset";
				if( fechaEstimadaEntrega != null ) diferenciaDias = UtilsFecha.regresaDiferenciaEntreFechasEnDias( fechaEstimadaEntrega, fechaHoy )-1;
				if( diferenciaDias < -5 ){
					_enTiempo = "En tiempo";
				}
				if( diferenciaDias > -6 && diferenciaDias <= -1 ){
					_enTiempo = "Urgente";
				}
				if(diferenciaDias > -1){
					_enTiempo = "Fuera de tiempo";
				}
			return _enTiempo;//+'#'+diferenciaDias;
		}

		public function set enTiempo(value:String):void
		{
			_enTiempo = value;
		}

		public function get estadoRechazo():String
		{
			return _estadoRechazo;
		}

		public function set estadoRechazo(value:String):void
		{
			_estadoRechazo = value;
		}

		public function get folioPackingList():String
		{
			return _folioPackingList;
		}

		public function set folioPackingList(value:String):void
		{
			_folioPackingList = value;
		}

		public function get parciales():String
		{
			return _parciales;
		}

		public function set parciales(value:String):void
		{
			_parciales = value;
		}

		public function get caducidad():String
		{
			return _caducidad;
		}

		public function set caducidad(value:String):void
		{
			_caducidad = value;
		}

		public function get fechaInicioInspeccion():Date
		{
			return _fechaInicioInspeccion;
		}

		public function set fechaInicioInspeccion(value:Date):void
		{
			_fechaInicioInspeccion = value;
		}

		public function get rechazoXInsp():Boolean
		{
			return _rechazoXInsp;
		}

		public function set rechazoXInsp(value:Boolean):void
		{
			_rechazoXInsp = value;
		}

		public function get rechazoXDoc():Boolean
		{
			return _rechazoXDoc;
		}

		public function set rechazoXDoc(value:Boolean):void
		{
			_rechazoXDoc = value;
		}

		/*public function get origen():String
		{
			return _origen;
		}

		public function set origen(value:String):void
		{
			_origen = value;
		}*/

		public function get paisProveedor():String
		{
			return _paisProveedor;
		}

		public function set paisProveedor(value:String):void
		{
			_paisProveedor = value;
		}

		public function get idProveedor():Number
		{
			return _idProveedor;
		}

		public function set idProveedor(value:Number):void
		{
			_idProveedor = value;
		}

		public function get montoTotalPriori1():Number
		{
			return _montoTotalPriori1;
		}

		public function set montoTotalPriori1(value:Number):void
		{
			_montoTotalPriori1 = value;
		}

		public function get montoTotalPriori2():Number
		{
			return _montoTotalPriori2;
		}

		public function set montoTotalPriori2(value:Number):void
		{
			_montoTotalPriori2 = value;
		}

		public function get montoTotalPriori3():Number
		{
			return _montoTotalPriori3;
		}

		public function set montoTotalPriori3(value:Number):void
		{
			_montoTotalPriori3 = value;
		}

		public function get prioridadesContenidas():String
		{
			return _prioridadesContenidas;
		}

		public function set prioridadesContenidas(value:String):void
		{
			_prioridadesContenidas = value;
		}

		public override function get manejo():String
		{
			return _manejo;
		}

		public function set manejo(value:String):void
		{
			_manejo = value;
		}

		public override function get ubicacion():String
		{
			return _ubicacion;
		}

		public function set ubicacion(value:String):void
		{
			_ubicacion = value;
		}

		public function get num():Number
		{
			return _num;
		}

		public function set num(value:Number):void
		{
			_num = value;
		}

		public function get referenciaOC():Number
		{
			return _referenciaOC;
		}

		public function set referenciaOC(value:Number):void
		{
			_referenciaOC = value;
		}

		public function get referenciaFact():Number
		{
			return _referenciaFact;
		}

		public function set referenciaFact(value:Number):void
		{
			_referenciaFact = value;
		}


	}
}