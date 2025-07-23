package mx.com.proquifa.proquifanet.compradorPhs.vistas.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PartidaConfirmacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.RequisicionPhs;
	import mx.controls.Alert;
	
	public class ModeloProveedoresConPAC extends EventDispatcher
	{
		private var _requisicionPhs:RequisicionPhs;
		private var _partidaConfirmacion:PartidaConfirmacion;
		
		public function ModeloProveedoresConPAC(target:IEventDispatcher=null)
		{
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
		 ******************************************** Funcion que regresa la consulta de requisiciones Por Confirmar. ***************************************************************
		 */
		private var _requisicionesPorConfirmarBandera:ArrayCollection;
		public function setRequisicionesPorConfirmarBandera(dato:ArrayCollection):void{
			this._requisicionesPorConfirmarBandera = dato;
			dispatchEvent(new Event ("eventoRequisicionesPorConfirmarBandera"));
		}
		
		[Bindable(event="eventoRequisicionesPorConfirmarBandera")]
		public function get requisicionesPorConfirmarBandera():ArrayCollection{
			return this._requisicionesPorConfirmarBandera;
		}
		/**
		 * Funcion Fault
		 */ 
		public function faultRequisicionesPorConfirmarBandera(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo al generar la Nueva Requisicion.","");
		}
		/**
		 ******************************************** Funcion que regresa la confirmacion de la generacion de una nueva requisicion ***************************************************************
		 */
		private var _confirmaNuevaRequisicion:Boolean;
		public function setConfirmaNuevaRequisicion(dato:Boolean):void{
			this._confirmaNuevaRequisicion = dato;
			dispatchEvent(new Event ("NuevaRequisicion"));
		}
		
		[Bindable(event="NuevaRequisicion")]
		public function get confirmaNuevaRequisicion():Boolean{
			return this._confirmaNuevaRequisicion;
		}
		/**
		 * Funcion Fault
		 */ 
		public function faultConfirmaRequisicion(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo al generar la Nueva Requisicion.","");
		}
		
		/**
		 ******************************************** Funcion que regresa la consulta de requisiciones Por Confirmar. ***************************************************************
		 */
		private var _requisicionesPorConfirmar:ArrayCollection;
		public function setRequisicionesPorConfirmar(dato:ArrayCollection):void{
			this._requisicionesPorConfirmar = dato;
			dispatchEvent(new Event ("eventoRequisicionesPorConfirmar"));
		}
		
		[Bindable(event="eventoRequisicionesPorConfirmar")]
		public function get requisicionesPorConfirmar():ArrayCollection{
			return this._requisicionesPorConfirmar;
		}
		/**
		 * Funcion Fault
		 */ 
		public function faultRequisicionesPorConfirmar(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo al generar la Nueva Requisicion.","");
		}
		
		/**
		 ******************************************** Funcion que regresa una confirmacion de que se actualizo correctamente las requisiciones. ***************************************************************
		 */
		private var _cambioMEdioRequisicion:Boolean;
		public function setActualizaMedioRequisicion(dato:Boolean):void{
			if( dato == false){
				return;
			}	
			this._cambioMEdioRequisicion = dato;
			dispatchEvent(new Event ("eventoCambiaMedioRequisicion"));
		}
		
		[Bindable(event="eventoCambiaMedioRequisicion")]
		public function get actualizaMedioRequisicion():Boolean{
			return this._cambioMEdioRequisicion;
		}
		/**
		 * Funcion Fault
		 */ 
		 public function faultActualizaMedioRequisicion(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo al cambiar el Medio en la reuisicion.","");
		}
		 /**
		  ******************************************** Funcion que regresa una confirmacion de que se actualizo correctamente las requisiciones. ***************************************************************
		  */
		 private var _actualizaRequisicion:Boolean;
		 public function setActualizaRequisicion(dato:Boolean):void{
			 if( dato == false){
				 return;
			 }	
			 this._actualizaRequisicion = dato;
			 dispatchEvent(new Event ("eventoActualizaRequisicion"));
		 }
		 
		 [Bindable(event="eventoActualizaRequisicion")]
		 public function get actualizRequisicion():Boolean{
			 return this._actualizaRequisicion;
		 }
		 /**
		  * Funcion Fault
		  */ 
		 public function faultActualizaRequisicion(objeto:Object):void{
			 trace("Error ...");
			 Alert.show("Fallo al gactualizar la requisicion desde el Inspector.","");
		 }
		 
		 /**
		  ******************************************** Funcion que confirmacion el envio de la o las partidas Exitosamente ***************************************************************
		  */
		 private var _enviaPartidas:Boolean;
		 public function setEnviaPartidas(dato:Boolean):void{
			 if( dato == false){
				 return;
			 }	
			 this._enviaPartidas = dato;
			 dispatchEvent(new Event ("eventoEnviaPartidas"));
		 }
		 
		 [Bindable(event="eventoEnviaPartidas")]
		 public function get enviaPartidas():Boolean{
			 return this._enviaPartidas;
		 }
		 /**
		  * Funcion Fault
		  */ 
		 public function faultEnviaPartidas(objeto:Object):void{
			 trace("Error ...");
			 Alert.show("Fallo al gactualizar la requisicion desde el Inspector.","");
		 }
		 /**
		  ******************************************** Funcion Que envia la opcion seleccionada del PopUpTipoRequisicion.mxml a Espacio de Planificacion ***************************************************************
		  */
		 private var datos:RequisicionPhs;
		 public function setEliminaEnviados( $req:RequisicionPhs):void{
			 this.datos = $req;
			 dispatchEvent(new Event ("eventoEliminaEnviados"));
		 }
		 
		 [Bindable(event="eventoEliminaEnviados")]
		 public function get EliminaEnviados():RequisicionPhs{
			 return datos;
		 }
		 /**
		  ******************************************** Funcion Que Rectifica si hay pendientes existentes ***************************************************************
		  */
		 private var _rectificaPendietes:Boolean;
		 public function setRectificaPendientes():void{
			 _rectificaPendietes = true;
			 dispatchEvent(new Event ("eventoRectificaPendientes"));
		 }
		 
		 [Bindable(event="eventoRectificaPendientes")]
		 public function get RectificaPendientes():Boolean{
			 return _rectificaPendietes;
		 }
	}
}