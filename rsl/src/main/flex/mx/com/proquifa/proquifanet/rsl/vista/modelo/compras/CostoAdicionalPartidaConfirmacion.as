////////////////////////////////////////////////////////////////////////////////
//Code stub generated with:
//                                Crocus Modeller
//                      Robust UML editor for AS3 & Flex devs.
//                             http://CrocusModeller.com
//
////////////////////////////////////////////////////////////////////////////////
package mx.com.proquifa.proquifanet.rsl.vista.modelo.compras
{
	/**
	 * costoAdicionalPartidaConfirmacion
	 *
	 * @author El Osva  O_o
	 */
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.compras.gestorproductosphs.productoaconfirmar.CostoAdicionalPartidaConfirmacion")]
	[Bindable]
	public class CostoAdicionalPartidaConfirmacion{
		
		private var _numFila:int;
		private var _idCostoAdicional:int;
		private var _idPartida:int;
		
		private var _costo:Number;
		
		private var _costoFormatoDecimales:String;
		private var _concepto:String;
		private var _nota:String;
		private var _monedaProveedor:String;
		
		///////////////////////
		// GETTERS/SETTERS
		///////////////////////
		
		public function get costoFormatoDecimales():String
		{
			return _costoFormatoDecimales;
		}

		public function set costoFormatoDecimales(value:String):void
		{
			_costoFormatoDecimales = value;
		}

		public function get monedaProveedor():String
		{
			return _monedaProveedor;
		}

		public function set monedaProveedor(value:String):void
		{
			_monedaProveedor = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get idCostoAdicional():int {
			return _idCostoAdicional;
		}
		
		public function set idCostoAdicional(value:int):void {
			_idCostoAdicional = value;
		}
		
		public function get concepto():String {
			return _concepto;
		}
		
		public function set concepto(value:String):void {
			_concepto = value;
		}
		
		public function get nota():String {
			return _nota;
		}
		
		public function set nota(value:String):void {
			_nota = value;
		}
		
		public function get costo():Number {
			return _costo;
		}
		
		public function set costo(value:Number):void {
			_costo = value;
		}
		
		public function get idPartida():int {
			return _idPartida;
		}
		
		public function set idPartida(value:int):void {
			_idPartida = value;
		}

		public function CostoAdicionalPartidaConfirmacion()
		{
		}
	}
}