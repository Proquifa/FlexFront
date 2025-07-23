
	////////////////////////////////////////////////////////////////////////////////
	//
	//  {user Osvaldo} set your username in:  settings > code generation
	//  Copyright 2011 {user Osvaldo}
	//  All Rights Reserved.
	//
	////////////////////////////////////////////////////////////////////////////////
package mx.com.proquifa.proquifanet.rsl.vista.modelo.compras	
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.compras.gestorproductosphs.productoaconfirmar.PartidaConfirmacion")]
	[Bindable]
	public class PartidaConfirmacion {
		//_________________________
		//
		// PROPERTIES
		//
		//_________________________

		private var _noPiezas:int;
		private var _numFila:int;
		private var _idProveedor:int;
		private var _idPCotPharma:int;
		private var _numRechazos:int;
		private var _partidasTotales:int;
		private var _partidasET:int;
		private var _partidasFT:int;
		private var _diferencialDias:int;
		
		private var _costoWeb:Number;
		private var _costoBaseConfirmado:Number;
		
		private var _estatusTiempo:Boolean;
		private var _estatus:Boolean;
		private var _conCertificado:Boolean;
		private var _conRequisicion:Boolean;
		private var _enviar:Boolean;
		private var _ultimaEdicion:Boolean;
		private var _checkSeleccionado:Boolean;
		private var _esGuardada:Boolean;
		
		private var _fechaFin:Date;
		private var _fechaInicio:Date;
		private var _fechaEnEspera:Date;
		
		private var _historialRechazos:ArrayCollection;
		private var _costosAdicionales:ArrayCollection;
		
		private var _formatoFechaEnEspera:String;
		private var _fechaInicioFormato:String;
		
		private var _nombreProveedor:String;
		private var _paisProveedor:String;
		private var _tipoProveedor:String;
		private var _solicitoESAC:String;
		private var _tipoProducto:String;
		private var _descripcionProducto:String;
		private var _folioCotizacion:String;
		private var _comentariosESAC:String;
		private var _tipoMoneda:String;
		private var _situacionDisponibilidad:String;
		private var _tiempoEntrega:String;
		private var _loteDisponible:String;
		private var _caducidadDisponible:String;
		private var _comentariosDisponibilidad:String;
		private var _almacenamiento:String;
		private var _transporte:String;
		private var _comentariosManejo:String;
		private var _comentariosAdicionales:String;
		private var _justificacionRechazo:String;
		private var _comentariosRechazo:String;
		private var _edicionDisponible:String;
		private var _codigo:String
		//_________________________
		//
		// GETTERS/SETTERS
		//
		//_________________________

		
		public function get formatoFechaEnEspera():String
		{
			return _formatoFechaEnEspera;
		}

		public function set formatoFechaEnEspera(value:String):void
		{
			_formatoFechaEnEspera = value;
		}

		public function get fechaEnEspera():Date
		{
			return _fechaEnEspera;
		}

		public function set fechaEnEspera(value:Date):void
		{
			_fechaEnEspera = value;
			formatoFechaEnEspera = UtilsFecha.formatoFechaDDMMMYYYY( value );
		}

		public function get estatusTiempo():Boolean
		{
			return _estatusTiempo;
		}

		public function set estatusTiempo(value:Boolean):void
		{
			_estatusTiempo = value;
		}

		public function get esGuardada():Boolean
		{
			return _esGuardada;
		}

		public function set esGuardada(value:Boolean):void
		{
			_esGuardada = value;
		}

		public function get checkSeleccionado():Boolean
		{
			return _checkSeleccionado;
		}

		public function set checkSeleccionado(value:Boolean):void
		{
			_checkSeleccionado = value;
		}

		public function get partidasFT():int
		{
			return _partidasFT;
		}

		public function set partidasFT(value:int):void
		{
			_partidasFT = value;
		}

		public function get partidasET():int
		{
			return _partidasET;
		}

		public function set partidasET(value:int):void
		{
			_partidasET = value;
		}

		public function get partidasTotales():int
		{
			return _partidasTotales;
		}

		public function set partidasTotales(value:int):void
		{
			_partidasTotales = value;
		}

		public function get codigo():String
		{
			return _codigo;
		}

		public function set codigo(value:String):void
		{
			_codigo = value;
		}

		public function get folioCotizacion():String
		{
			return _folioCotizacion;
		}

		public function set folioCotizacion(value:String):void
		{
			_folioCotizacion = value;
		}

		public function get nombreProveedor():String {
			return _nombreProveedor;
		}
		
		public function set nombreProveedor(value:String):void {
			_nombreProveedor = value;
		}
		
		public function get paisProveedor():String {
			return _paisProveedor;
		}
		
		public function set paisProveedor(value:String):void {
			_paisProveedor = value;
		}
		
		public function get tipoProveedor():String {
			return _tipoProveedor;
		}
		
		public function set tipoProveedor(value:String):void {
			_tipoProveedor = value;
		}
		
		public function get diferencialDias():int {
			return _diferencialDias;
		}
		
		public function set diferencialDias(value:int):void {
			_diferencialDias = value;
		}
		
		public function get solicitoESAC():String {
			return _solicitoESAC;
		}
		
		public function set solicitoESAC(value:String):void {
			_solicitoESAC = value;
		}
		
		public function get fechaInicio():Date {
			return _fechaInicio;
		}
		
		public function set fechaInicio(value:Date):void {
			_fechaInicio = value;
			fechaInicioFormato = UtilsFecha.formatoFechaDDMMMYYYY( value );
		}
		
		public function get tipoProducto():String {
			return _tipoProducto;
		}
		
		public function set tipoProducto(value:String):void {
			_tipoProducto = value;
		}
		
		public function get noPiezas():int {
			return _noPiezas;
		}
		
		public function set noPiezas(value:int):void {
			_noPiezas = value;
		}
		
		public function get descripcionProducto():String {
			return _descripcionProducto;
		}
		
		public function set descripcionProducto(value:String):void {
			_descripcionProducto = value;
		}
		
		public function get fechaInicioFormato():String {
			return _fechaInicioFormato;
		}
		
		public function set fechaInicioFormato(value:String):void {
			_fechaInicioFormato = value;
		}
		
		public function get numFila():int {
			return _numFila;
		}
		
		public function set numFila(value:int):void {
			_numFila = value;
		}
		
		public function get idProveedor():int {
			return _idProveedor;
		}
		
		public function set idProveedor(value:int):void {
			_idProveedor = value;
		}
		
		public function get conRequisicion():Boolean {
			return _conRequisicion;
		}
		
		public function set conRequisicion(value:Boolean):void {
			_conRequisicion = value;
		}
		
		public function get comentariosESAC():String {
			return _comentariosESAC;
		}
		
		public function set comentariosESAC(value:String):void {
			_comentariosESAC = value;
		}
		
		public function get estatus():Boolean {
			return _estatus;
		}
		
		public function set estatus(value:Boolean):void {
			_estatus = value;
		}
		
		public function get idPCotPharma():int {
			return _idPCotPharma;
		}
		
		public function set idPCotPharma(value:int):void {
			_idPCotPharma = value;
		}
		
		public function get fechaFin():Date {
			return _fechaFin;
		}
		
		public function set fechaFin(value:Date):void {
			_fechaFin = value;
		}
		
		public function get tipoMoneda():String {
			return _tipoMoneda;
		}
		
		public function set tipoMoneda(value:String):void {
			_tipoMoneda = value;
		}
		
		public function get costoWeb():Number {
			return _costoWeb;
		}
		
		public function set costoWeb(value:Number):void {
			_costoWeb = value;
		}
		
		public function get costoBaseConfirmado():Number {
			return _costoBaseConfirmado;
		}
		
		public function set costoBaseConfirmado(value:Number):void {
			_costoBaseConfirmado = value;
		}
		
		public function get costosAdicionales():ArrayCollection {
			return _costosAdicionales;
		}
		
		public function set costosAdicionales(value:ArrayCollection):void {
			_costosAdicionales = value;
		}
		
		public function get situacionDisponibilidad():String {
			return _situacionDisponibilidad;
		}
		
		public function set situacionDisponibilidad(value:String):void {
			_situacionDisponibilidad = value;
		}
		
		public function get tiempoEntrega():String {
			return _tiempoEntrega;
		}
		
		public function set tiempoEntrega(value:String):void {
			_tiempoEntrega = value;
		}
		
		public function get loteDisponible():String {
			return _loteDisponible;
		}
		
		public function set loteDisponible(value:String):void {
			_loteDisponible = value;
		}
		
		public function get caducidadDisponible():String {
			return _caducidadDisponible;
		}
		
		public function set caducidadDisponible(value:String):void {
			_caducidadDisponible = value;
		}
		
		public function get conCertificado():Boolean {
			return _conCertificado;
		}
		
		public function set conCertificado(value:Boolean):void {
			_conCertificado = value;
		}
		
		public function get comentariosDisponibilidad():String {
			return _comentariosDisponibilidad;
		}
		
		public function set comentariosDisponibilidad(value:String):void {
			_comentariosDisponibilidad = value;
		}
		
		public function get almacenamiento():String {
			return _almacenamiento;
		}
		
		public function set almacenamiento(value:String):void {
			_almacenamiento = value;
		}
		
		public function get transporte():String {
			return _transporte;
		}
		
		public function set transporte(value:String):void {
			_transporte = value;
		}
		
		public function get comentariosManejo():String {
			return _comentariosManejo;
		}
		
		public function set comentariosManejo(value:String):void {
			_comentariosManejo = value;
		}
		
		public function get comentariosAdicionales():String {
			return _comentariosAdicionales;
		}
		
		public function set comentariosAdicionales(value:String):void {
			_comentariosAdicionales = value;
		}
		
		public function get numRechazos():int {
			return _numRechazos;
		}
		
		public function set numRechazos(value:int):void {
			_numRechazos = value;
		}
		
		public function get justificacionRechazo():String {
			return _justificacionRechazo;
		}
		
		public function set justificacionRechazo(value:String):void {
			_justificacionRechazo = value;
		}
		
		public function get comentariosRechazo():String {
			return _comentariosRechazo;
		}
		
		public function set comentariosRechazo(value:String):void {
			_comentariosRechazo = value;
		}
		
		public function get historialRechazos():ArrayCollection {
			return _historialRechazos;
		}
		
		public function set historialRechazos(value:ArrayCollection):void {
			_historialRechazos = value;
		}
		
		public function get enviar():Boolean {
			return _enviar;
		}
		
		public function set enviar(value:Boolean):void {
			_enviar = value;
		}
		
		public function get edicionDisponible():String {
			return _edicionDisponible;
		}
		
		public function set edicionDisponible(value:String):void {
			_edicionDisponible = value;
		}
		
		public function get ultimaEdicion():Boolean {
			return _ultimaEdicion;
		}
		
		public function set ultimaEdicion(value:Boolean):void {
			_ultimaEdicion = value;
		}
		
		
	}
}