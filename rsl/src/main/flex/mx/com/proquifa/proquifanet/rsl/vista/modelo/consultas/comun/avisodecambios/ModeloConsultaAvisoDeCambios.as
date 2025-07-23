package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.avisodecambios
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.interlocutor.AvisoDeCambios;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;

	public class ModeloConsultaAvisoDeCambios extends EventDispatcher
	{
		public function ModeloConsultaAvisoDeCambios(target:IEventDispatcher=null)
		{
			super (target);
		}
		
		private var ac:AvisoDeCambios = new AvisoDeCambios(); 
		/**
		 * Funcion que busca los datos para obtener clientes 
		 */ 
		private var _cliente:ArrayCollection;
		public function setClientesACambios(cliente:ArrayCollection):void{
			_cliente = cliente;
			dispatchEvent(new Event ("clientesConsultaAvisoDeCambios"));
		}
		
		[Bindable(event="clientesConsultaAvisoDeCambios")]
		public function get clientesACambios():ArrayCollection{
			return this._cliente;
		}
		
		/**
		 * Funcion de result de busqueda de proveedores  
		 */
		private var _listaProveedores:ArrayCollection;
		public function setListaProveedores(datos:ArrayCollection):void{
			this._listaProveedores = datos;
			dispatchEvent(new Event ("regresaProveedoresAvisoDeCambios"));
		}
		
		[Bindable(event="regresaProveedoresAvisoDeCambios")]
		public function get ListaProveedores():ArrayCollection{
			return this._listaProveedores;  
		}
		
		/**
		 * Funcion de result de busqueda por folio para Aviso de cambios  
		 */
		private var _listaACambios:ArrayCollection;
		public function setBusquedaAvisoCambios(aCambios:ArrayCollection):void{
			for( var d:int = 0; d < aCambios.length; d++ ){
				aCambios[d].numFila = d + 1;
			}
			//this._listaACambios = aCambios;
			this._listaACambios = FuncionesEstaticas.getInstance().formatoObjetos(aCambios);
			dispatchEvent(new Event ("regresaBusquedaAvisoDeCambios"));
		}
		
		[Bindable(event="regresaBusquedaAvisoDeCambios")]
		public function get busquedaAvisoCambios():ArrayCollection{
			return this._listaACambios;  
		}

		/**
		 * Funcion result para filtro Aviso de cambios  
		 */
		private var _filtroACambios:ArrayCollection;
		public function setFiltroAvisoCambios(filtro:ArrayCollection):void{
			for( var d:int = 0; d < filtro.length; d++ ){
				filtro[d].numFila = d + 1;
			}
			//this._listaACambios = aCambios;
			this._filtroACambios = FuncionesEstaticas.getInstance().formatoObjetos(filtro);
			dispatchEvent(new Event ("regresaFiltroAvisoDeCambios"));
		}
		
		
		[Bindable(event="regresaFiltroAvisoDeCambios")]
		public function get filtroAvisoCambios():ArrayCollection{
			return this._filtroACambios;  
		}
		
		/**
		 * Función para enviar datos de grafica a los distintos componentes 
		 */
		
		private var _graficaAC:ArrayCollection;
		public function setDatosGarficaAvisoCambios(grafica:ArrayCollection):void{
			this._graficaAC=grafica;
			dispatchEvent(new Event ("regresaDatosGraficaAvisoDeCambios"));
		}
		
		[Bindable(event="regresaDatosGraficaAvisoDeCambios")]
		public function get datosGarficaAvisoCambios():ArrayCollection{
			return this._graficaAC;  
		}
		
		/**
		 * Función para cambiar de stack al dar clik en algun grafico
		 */
		  
		private var _cambia:int;
		public function setStackAvisoCambios(stack:int):void{
			this._cambia=stack;
			dispatchEvent(new Event ("regresaStackAvisoDeCambios"));
		}
		
		[Bindable(event="regresaStackAvisoDeCambios")]
		public function get stackAvisoCambios():int{
			return this._cambia;  
		}
		
		/**
		 * Función para enviar datos al dar clik en algun grafico
		 */
		
		private var _click:ArrayCollection;
		public function setClickAvisoCambios(click:ArrayCollection):void{
			this._click=click;
			dispatchEvent(new Event ("regresaClickAvisoDeCambios"));
		}
		
		[Bindable(event="regresaClickAvisoDeCambios")]
		public function get clickAvisoCambios():ArrayCollection{
			return this._click;  
		}
	}
}