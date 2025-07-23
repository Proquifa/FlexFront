package mx.com.proquifa.proquifanet.compradorPhs.vistas.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PartidaProforma;
	import mx.controls.Alert;
	
	public class ModeloGeneralDePendientes extends EventDispatcher
	{
		public function ModeloGeneralDePendientes(target:IEventDispatcher=null)
		{
			//TODO: implement function
			super(target);
		}
		/**
		 ******************************************** Funcion Que regresa El Universo de las Partidas A Confirmar ***************************************************************
		 */
		private var _listaPartidasAConfirmar:ArrayCollection;
		public function setListaPartidasAConfirmar(lista:ArrayCollection):void{
			this._listaPartidasAConfirmar = lista;
			dispatchEvent(new Event ("regresaListaPartidasAConfirmar"));
		}
		
		[Bindable(event="regresaListaPartidasAConfirmar")]
		public function get listaPartidasAConfirmar():ArrayCollection{
			return this._listaPartidasAConfirmar;
		}
		/**
		 * Funcion Fault
		 */ 
		public function faultPartidasAConfirmar(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo al cargar Partidas Por Confirmar.","");
		}
		/**
		 ******************************************** Funcion Que regresa El Universo de las Partidas A Confirmar ***************************************************************
		 */
		private var _listaTipoY_CantidadPartidas:ArrayCollection;
		public function setTipoY_CantidadPartidas(lista:ArrayCollection):void{
			this._listaTipoY_CantidadPartidas = lista;
			dispatchEvent(new Event ("regresaTipoY_CantidadPartidas"));
		}
		
		[Bindable(event="regresaTipoY_CantidadPartidas")]
		public function get listaTipoY_CantidadPartidas():ArrayCollection{
			return this._listaTipoY_CantidadPartidas;
		}
		/**
		 * Funcion Fault
		 */ 
		public function faultTipoY_CantidadPartidas(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo al cargar Partidas Por Confirmar.","");
		}
		/**
		 ******************************************** Funcion Que regresa El Universo de las Proformas ***************************************************************
		 */
		private var _regresaProformas:ArrayCollection;
		public function setRegresaProformas( $lista:ArrayCollection):void{
			this._regresaProformas = new ArrayCollection();
			/*for(var i:int = 0; i < 5; i++){
				
				var prueba:PartidaProforma = new PartidaProforma();
				prueba.numFila = i+1;
				prueba.cantidad = i*2;
				prueba.costoCDesc = 90;
				i < 10 ? prueba.cpedido = "P-121111-000"+i : prueba.cpedido = "P-121111-00"+i;
				prueba.descripcionProducto = "PruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPruebaPrueba";
				prueba.descuento = 5;
				prueba.destino = "destino";
				prueba.proformaAbierta = true;
				prueba.fechaTramitacion = new Date();
				prueba.FEE = new Date();
				prueba.folioProforma = "folio" + i;
				prueba.idPartidaProforma = i;
				prueba.idPPedido = 93675 + i;
				prueba.idProforma = 2;
				prueba.idProveedor = 44;
				prueba.intervaloMayor = -2000;
				prueba.intervaloMenor = 2000;
				prueba.maxCompra = 5000 + i;
				prueba.minCompra = 1000+ i;
				prueba.monedaProveedor = "Pesos";
				prueba.nombreCliente = "Lab Pisa";
				prueba.nombreProveedor = "USP";
				prueba.noReubicaciones = i;
				prueba.paisProveedor = "USA";
				prueba.parciales = false;
				prueba.tipoCarro = "STOCK";
				prueba.tipoFlete = "Regular";
				this._regresaProformas.addItem( prueba );
			}*/
			_regresaProformas = $lista;
			dispatchEvent(new Event ("eventoRegresaProformas"));
		}
		
		[Bindable(event="eventoRegresaProformas")]
		public function get RegresaProformas():ArrayCollection{
			return this._regresaProformas;
		}
		/**
		 * Funcion Fault
		 */ 
		public function faultRegresaProformas(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo al cargar Partidas Proforma Colocacion.","");
		}
	}
}