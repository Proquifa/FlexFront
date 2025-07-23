package mx.com.proquifa.vista.modelo.tramitarCompra
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Compra;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PartidaPedido;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	
	public class ModeloTramitarCompraMateriales extends EventDispatcher
	{
		public static var queryOC:Query;
		private var ordenesCompraPendientes:ArrayCollection;
		
		private var arrayListaPedidos:ArrayCollection;
		private var arrayProveedoresPie:ArrayCollection;
		private var arrayTransitoPie:ArrayCollection;
		private var arrayFamiliaPie:ArrayCollection;
		
		public function setObtenerPedidos(data:ArrayCollection):void
		{
			var fila:int = 1;
			if(data == null || data.length == 0)
				arrayListaPedidos = new ArrayCollection();
			else
				arrayListaPedidos = data;
			
			for (var i:int = 0; i < data.length; i++) 
			{
				data[i].cant_entrega_unica = data[i].cant_regular + data[i].cant_fleteExpress;
				data[i].cant_flete_normal = data[i].cant_regular + data[i].cant_programados;
			}
			
			
			arrayTransitoPie = new ArrayCollection();
			arrayProveedoresPie = new ArrayCollection();
			arrayFamiliaPie = new ArrayCollection();
			ordenesCompraPendientes = new ArrayCollection();
			//OBTENER POR ENTREGA(UNICA, PROGRMADA) Y FLETE(NORMAL, EXPRESS)
			queryOC = new Query(data,['nombreProveedor','trafico','familia']);
			var punteroProveedores:Array = queryOC.getPunteros(['nombreProveedor'],'nombreProveedor');
			for each (var proveedor:String in punteroProveedores) 
			{
				var punteros:Array = queryOC.getPunteros([proveedor]);
				
				var orden:PartidaPedido = ObjectUtil.copy(queryOC.universo.getItemAt(punteros[0])) as PartidaPedido;
				var resumenProvee:ResumenConsulta = new ResumenConsulta();
				
				resumenProvee.totalProveedores = 1;
				resumenProvee.etiqueta = ObjectUtil.copy(proveedor) as String;
				resumenProvee.piezasTotal = orden.cant_piezas = queryOC.getSumarCampo('cant_piezas',punteros);
				resumenProvee.monto = orden.monto = queryOC.getSumarCampo('monto',punteros);
				resumenProvee.noProductos = orden.cant_productos = queryOC.getSumarCampo('cant_productos',punteros);
				orden.cant_programados = queryOC.getSumarCampo('cant_programados',punteros);
				orden.cant_regular = queryOC.getSumarCampo('cant_regular',punteros);
				orden.cant_fleteExpress = queryOC.getSumarCampo('cant_fleteExpress',punteros);
				orden.numeroFila = ObjectUtil.copy(fila) as int; 
				ordenesCompraPendientes.addItem(orden);
				arrayProveedoresPie.addItem(resumenProvee);
				fila++;
			}
			
			var punterosTipo:Array = queryOC.getPunteros([null,'trafico'],'trafico');
			for each (var tipo:String in punterosTipo) 
			{
				var punterosT:Array = queryOC.getPunteros([null,tipo]);
				var resumenTipo:ResumenConsulta = new ResumenConsulta();
				
				resumenTipo.etiqueta = ObjectUtil.copy(tipo) as String;
				resumenTipo.noProductos = queryOC.getSumarCampo('cant_programados',punterosT);
				resumenTipo.piezasTotal = queryOC.getSumarCampo('cant_piezas',punterosT);
				resumenTipo.monto = queryOC.getSumarCampo('monto',punterosT);
				resumenTipo.noTipoTransito = 1;
				arrayTransitoPie.addItem(resumenTipo);
			}
			
			
			var punterosFamilia:Array = queryOC.getPunteros([null,null,'familia'],'familia');
			for each (var familia:String in punterosFamilia) 
			{
				var punterosF:Array = queryOC.getPunteros([null,null,familia]);
				var resumenFamilia:ResumenConsulta = new ResumenConsulta();
				
				resumenFamilia.etiqueta = ObjectUtil.copy(familia) as String;
				resumenFamilia.noProductos = queryOC.getSumarCampo('cant_programados',punterosF);
				resumenFamilia.piezasTotal = queryOC.getSumarCampo('cant_piezas',punterosF);
				resumenFamilia.monto = queryOC.getSumarCampo('monto',punterosF);
				resumenFamilia.cantFamilia = 1;
				arrayFamiliaPie.addItem(resumenFamilia);
			}
			dispatchEvent(new Event("enviarListaPedidosModeloTramitarCompra"));
			dispatchEvent(new Event("enviarListaProveedoresPieTramitarCompra"));
			dispatchEvent(new Event("enviarListaTransitoPieTramitarCompra"));
			dispatchEvent(new Event("enviarListaFamiliaPieTramitarCompra"));
		}
		
		[Bindable(event="enviarListaPedidosModeloTramitarCompra")]
		public function get enviarListaPedidos():ArrayCollection
		{
			return ordenesCompraPendientes;
		}
		[Bindable(event="enviarListaProveedoresPieTramitarCompra")]
		public function get enviarListaProveedoresPie():ArrayCollection
		{
			return arrayProveedoresPie;
		}
		[Bindable(event="enviarListaTransitoPieTramitarCompra")]
		public function get enviarListaTransitoPie():ArrayCollection
		{
			return arrayTransitoPie;
		}
		[Bindable(event="enviarListaFamiliaPieTramitarCompra")]
		public function get enviarListaFamiliaPie():ArrayCollection
		{
			return arrayFamiliaPie;
		}
		
		
		
		/**
		 ***************************************** LISTA UNIVERSO PRODUCTOS  **************************************
		 */ 
		private var _universoProd:ArrayCollection;
		public function setObtenerUniverso($universo:ArrayCollection):void{
			
			_universoProd = $universo;
			if($universo.length > 0)
			{
				for (var h:int = 0; h < _universoProd.length; h++) 
				{
					if((_universoProd[h] as PartidaPedido).stock)
						(_universoProd[h] as PartidaPedido).trafico = "stock";
					
					/*if(_universoProd[h].nombreVendedor.toLowerCase() == "proveedora" )*/
					if(_universoProd[h].nombreVendedor && _universoProd[h].nombreVendedor.toLowerCase() == "pharma" )
						_universoProd[h].vendedorEsPharma = true;
					else
						_universoProd[h].vendedorEsPharma = false;
						
					
				}
				
			}
			dispatchEvent(new Event ("universoProductosTramitarCompra"));
		}
		
		[Bindable(event="universoProductosTramitarCompra")]
		public function get getUniversoProductos():ArrayCollection{
			return this._universoProd;
		}
		
		
		
		/**
		 ***************************************** LISTA SUBPRODUCTOS   **************************************
		 */ 
		private var _subProductos:ArrayCollection;
		public function setObtenerSubproductos($universo:ArrayCollection):void{
			
			_subProductos = $universo;
			dispatchEvent(new Event ("subProductosTramitarCompra"));
		}
		
		[Bindable(event="subProductosTramitarCompra")]
		public function get getSubProductos():ArrayCollection{
			return _subProductos;
		}
		
		
		
		/**
		 ***************************************** FAMILIAS PROVEEDOR   **************************************
		 */ 
		private var _familiasProvee:ArrayCollection;
		public function setObtenerFamiliasProvee($universo:ArrayCollection):void{
			
			_familiasProvee = familySort(ObjectUtil.copy($universo) as ArrayCollection);
			/*_familiasProvee = $universo;*/
			dispatchEvent(new Event ("familiasProveedorTramitarCompra"));
		}
		
		[Bindable(event="familiasProveedorTramitarCompra")]
		public function get getFamiliasProvee():ArrayCollection{
			return _familiasProvee;
		}
		
		
		/**
		 ***************************************** Cambio de Proveedor  **************************************
		 */ 
		private var respuesta:Boolean;
		public function setRespuestaIntercambio(res:Boolean):void{
			
			respuesta = res;
			
			dispatchEvent(new Event ("mandarRespuestaIntercambioProveedor"));
		}
		
		[Bindable(event="mandarRespuestaIntercambioProveedor")]
		public function get getRespuesIntercambioPro():Boolean{
			return respuesta;
		}
		
		
		
		/**
		 ***************************************** GENERAR ORDEN DE COMPRA   **************************************
		 */ 
		private var _ordenCompra:String;
		public function setObtenerOrdenCompra($universo:String):void
		{
			_ordenCompra = $universo;
			dispatchEvent(new Event ("ordenComprasTramitarCompra"));
		}
		
		[Bindable(event="ordenComprasTramitarCompra")]
		public function get getObtenerOrdenCompra():String{
			return _ordenCompra;
		}
		
		////////////////////    ORDENAR FAMILIAS
		private function familySort(familias:ArrayCollection):ArrayCollection
		{
			var tempSort:ArrayCollection = new ArrayCollection();
			var filtrado:Query = new Query(familias,["industria","tipo","subtipo","control"]);
			var arrayIndustrial:ArrayCollection = new ArrayCollection(['Farma','Alimentos','Aguas','Clínico','Gobierno','null']);
			var arrayTipoFarma:ArrayCollection = new ArrayCollection(['Estandares','Reactivos','Publicaciones','Labware','Medicamentos','Asesorías','Capacitaciones']);
			var arrayTipoAlimentos:ArrayCollection = new ArrayCollection(['Estandares','Reactivos','Labware','Diagnóstico','Publicaciones','Medicamentos','Asesorías','Capacitaciones']);
			var arrayTipoAgua:ArrayCollection = new ArrayCollection(['Estandares','Reactivos','Labware','Pruebas de aptitud','Publicaciones','Medicamentos','Asesorías','Capacitaciones']);
			var arraySubtipo:ArrayCollection = new ArrayCollection(['Químico','Biológico']);
			var arrayControl:ArrayCollection = new ArrayCollection(['Normal','Nacionales','Mundiales','Origen']);
			var punteros:Array = new Array;
			var arrayTipo:ArrayCollection = new ArrayCollection;
			
			
			for (var i:int = 0; i < arrayIndustrial.length; i++ )
			{
				if (arrayIndustrial[i] == 'Farma' || 
					arrayIndustrial[i] == 'Clínico' || arrayIndustrial[i] == 'Gobierno' )
				{
					arrayTipo = arrayTipoFarma;
				}
				else if(arrayIndustrial[i] == 'Alimentos')
				{
					arrayTipo = arrayTipoAlimentos;
				}
				else
				{
					arrayTipo = arrayTipoAgua;
				}
				
				for (var j:int = 0; j < arrayTipo.length; j++)
				{
					if (arrayTipo[j] == 'Estandares' || arrayTipo[j] == 'Reactivos')
					{
						for (var k:int = 0; k < arraySubtipo.length; k++)
						{
							for (var l:int = 0; l < arrayControl.length; l++)
							{
								punteros = filtrado.getPunteros([arrayIndustrial[i],arrayTipo[j],arraySubtipo[k],arrayControl[l]],'industria');
								tempSort.addAll(filtrado.armarLista(punteros));
							}
						}
					}
					else
					{
						punteros = filtrado.getPunteros([arrayIndustrial[i].toLowerCase(),arrayTipo[j],null,null],'industria');
						tempSort.addAll(filtrado.armarLista(punteros));
					}
				}
			}
			var familiasOrdenadas:ArrayCollection;
			familiasOrdenadas = ObjectUtil.copy(tempSort) as ArrayCollection;
			return familiasOrdenadas;
		}
		
		
		
		/////////////////////////////////////////////////////////////////////
		////////////////////////					 ////////////////////////
		////////////////////////       NACIONAL      ////////////////////////
		////////////////////////					 ////////////////////////
		/////////////////////////////////////////////////////////////////////
		
		
		public static var queryOCNacional:Query;
		private var ordenesCompraPendientesNacional:ArrayCollection;
		
		private var arrayListaPedidosNacionales:ArrayCollection;
		private var arrayProveedoresPieNacional:ArrayCollection;
		private var arrayTransitoPieNacional:ArrayCollection;
		private var arrayFamiliaPieNacional:ArrayCollection;
		
		public function setObtenerPedidosNacional(data:ArrayCollection):void
		{
			var fila:int = 1;
			if(data == null || data.length == 0)
				arrayListaPedidosNacionales = new ArrayCollection();
			else
				arrayListaPedidosNacionales = data;
			
			for (var i:int = 0; i < data.length; i++) 
			{
				data[i].cant_entrega_unica = data[i].cant_regular + data[i].cant_fleteExpress;
				data[i].cant_flete_normal = data[i].cant_regular + data[i].cant_programados;
			}
			
			
			arrayTransitoPieNacional = new ArrayCollection();
			arrayProveedoresPieNacional = new ArrayCollection();
			arrayFamiliaPieNacional = new ArrayCollection();
			ordenesCompraPendientesNacional = new ArrayCollection();
			//OBTENER POR ENTREGA(UNICA, PROGRMADA) Y FLETE(NORMAL, EXPRESS)
			queryOCNacional = new Query(data,['nombreProveedor','trafico','familia']);
			var punteroProveedores:Array = queryOCNacional.getPunteros(['nombreProveedor'],'nombreProveedor');
			for each (var proveedor:String in punteroProveedores) 
			{
				var punteros:Array = queryOCNacional.getPunteros([proveedor]);
				
				var orden:PartidaPedido = ObjectUtil.copy(queryOCNacional.universo.getItemAt(punteros[0])) as PartidaPedido;
				var resumenProvee:ResumenConsulta = new ResumenConsulta();
				
				resumenProvee.totalProveedores = 1;
				resumenProvee.etiqueta = ObjectUtil.copy(proveedor) as String;
				resumenProvee.piezasTotal = orden.cant_piezas = queryOCNacional.getSumarCampo('cant_piezas',punteros);
				resumenProvee.monto = orden.monto = queryOCNacional.getSumarCampo('monto',punteros);
				resumenProvee.noProductos = orden.cant_productos = queryOCNacional.getSumarCampo('cant_productos',punteros);
				orden.cant_programados = queryOCNacional.getSumarCampo('cant_programados',punteros);
				orden.cant_regular = queryOCNacional.getSumarCampo('cant_regular',punteros);
				orden.cant_fleteExpress = queryOCNacional.getSumarCampo('cant_fleteExpress',punteros);
				orden.numeroFila = ObjectUtil.copy(fila) as int; 
				ordenesCompraPendientesNacional.addItem(orden);
				arrayProveedoresPieNacional.addItem(resumenProvee);
				fila++;
			}
			
			var punterosTipo:Array = queryOCNacional.getPunteros([null,'trafico'],'trafico');
			for each (var tipo:String in punterosTipo) 
			{
				var punterosT:Array = queryOCNacional.getPunteros([null,tipo]);
				var resumenTipo:ResumenConsulta = new ResumenConsulta();
				
				resumenTipo.etiqueta = ObjectUtil.copy(tipo) as String;
				resumenTipo.noProductos = queryOCNacional.getSumarCampo('cant_programados',punterosT);
				resumenTipo.piezasTotal = queryOCNacional.getSumarCampo('cant_piezas',punterosT);
				resumenTipo.monto = queryOCNacional.getSumarCampo('monto',punterosT);
				resumenTipo.noTipoTransito = 1;
				arrayTransitoPieNacional.addItem(resumenTipo);
			}
			
			
			var punterosFamilia:Array = queryOCNacional.getPunteros([null,null,'familia'],'familia');
			for each (var familia:String in punterosFamilia) 
			{
				var punterosF:Array = queryOCNacional.getPunteros([null,null,familia]);
				var resumenFamilia:ResumenConsulta = new ResumenConsulta();
				
				resumenFamilia.etiqueta = ObjectUtil.copy(familia) as String;
				resumenFamilia.noProductos = queryOCNacional.getSumarCampo('cant_programados',punterosF);
				resumenFamilia.piezasTotal = queryOCNacional.getSumarCampo('cant_piezas',punterosF);
				resumenFamilia.monto = queryOCNacional.getSumarCampo('monto',punterosF);
				resumenFamilia.cantFamilia = 1;
				arrayFamiliaPieNacional.addItem(resumenFamilia);
			}
			dispatchEvent(new Event("enviarListaPedidosModeloTramitarCompraNacional"));
			dispatchEvent(new Event("enviarListaProveedoresPieTramitarCompraNacional"));
			dispatchEvent(new Event("enviarListaTransitoPieTramitarCompraNacional"));
			dispatchEvent(new Event("enviarListaFamiliaPieTramitarCompraNacional"));
		}
		
		[Bindable(event="enviarListaPedidosModeloTramitarCompraNacional")]
		public function get enviarListaPedidosNacional():ArrayCollection
		{
			return ordenesCompraPendientesNacional;
		}
		[Bindable(event="enviarListaProveedoresPieTramitarCompraNacional")]
		public function get enviarListaProveedoresPieNacional():ArrayCollection
		{
			return arrayProveedoresPieNacional;
		}
		[Bindable(event="enviarListaTransitoPieTramitarCompraNacional")]
		public function get enviarListaTransitoPieNacional():ArrayCollection
		{
			return arrayTransitoPieNacional;
		}
		[Bindable(event="enviarListaFamiliaPieTramitarCompraNacional")]
		public function get enviarListaFamiliaPieNacional():ArrayCollection
		{
			return arrayFamiliaPieNacional;
		}
		
		/**
		 ***************************************** FAMILIAS PROVEEDOR NACIONAL  **************************************
		 */ 
		private var _familiasProveeNacional:ArrayCollection;
		public function setObtenerFamiliasProveeNacional($universo:ArrayCollection):void{
			
			_familiasProveeNacional = familySort(ObjectUtil.copy($universo) as ArrayCollection);
			/*_familiasProvee = $universo;*/
			dispatchEvent(new Event ("familiasProveedorTramitarCompraNacional"));
		}
		
		[Bindable(event="familiasProveedorTramitarCompraNacional")]
		public function get getFamiliasProveeNacional():ArrayCollection{
			return _familiasProveeNacional;
		}
		
		/**
		 ***************************************** LISTA UNIVERSO PRODUCTOS  **************************************
		 */ 
		private var _universoProdNacional:ArrayCollection;
		public function setObtenerUniversoNacional($universo:ArrayCollection):void{
			
			_universoProdNacional = $universo;
			if($universo.length > 0)
			{
				for (var h:int = 0; h < _universoProdNacional.length; h++) 
				{
					if((_universoProdNacional[h] as PartidaPedido).stock)
						(_universoProdNacional[h] as PartidaPedido).trafico = "stock";
					
					/*if(_universoProd[h].nombreVendedor.toLowerCase() == "proveedora" )*/
					if(_universoProdNacional[h].nombreVendedor && _universoProdNacional[h].nombreVendedor.toLowerCase() == "pharma" )
						_universoProdNacional[h].vendedorEsPharma = true;
					else
						_universoProdNacional[h].vendedorEsPharma = false;
					
					
				}
				
			}
			dispatchEvent(new Event ("universoProductosTramitarCompraNacional"));
		}
		
		[Bindable(event="universoProductosTramitarCompraNacional")]
		public function get getUniversoProductosNacional():ArrayCollection{
			return this._universoProdNacional;
		}
		
		
		/**
		 ***************************************** RECIBE RESPUESTA SI PROCEDE COMPRA**************************************
		 */ 
		private var respuestaPC:Number;
		public function setRespuestaProcedeCompra(res:Number):void{
			
			respuestaPC = res;
			
			dispatchEvent(new Event ("mandarRespuestaDeProcedeCompra"));
		}
		
		[Bindable(event="mandarRespuestaDeProcedeCompra")]
		public function get getRespuestaProcedeCompra():Number{
			return respuestaPC;
		}
		
		
		/**
		 ***************************************** RECIBE RESPUESTA SI PROCEDE COMPRA PUBIBLICACIONES**************************************
		 */ 
		private var respuestaPCP:Number;
		public function setRespuestaProcedeCompraPub(res:Number):void{
			
			respuestaPCP = res;
			
			dispatchEvent(new Event ("mandarRespuestaDeProcedeCompraPub"));
		}
		
		[Bindable(event="mandarRespuestaDeProcedeCompraPub")]
		public function get getRespuestaProcedeCompraPub():Number{
			return respuestaPCP;
		}
		
		
		/**
		 ***************************************** GENERAR ORDEN DE COMPRA   **************************************
		 */ 
		private var _ordenCompraNacional:String;
		public function setObtenerOrdenCompraNacional($universo:String):void
		{
			_ordenCompraNacional = $universo;
			dispatchEvent(new Event ("ordenComprasTramitarCompraNacional"));
		}
		
		[Bindable(event="ordenComprasTramitarCompraNacional")]
		public function get getObtenerOrdenCompraNacional():String{
			return _ordenCompraNacional;
		}
		
		
		
		public function errorListaAgentes(objeto:Object):void
		{
			trace("ERROR LISTA AGENTES")
			alertaSingleton.show( objeto.toString() );
		}
		
		public function errorUniverso(objeto:Object):void
		{
			trace("ERROR UNIVERSO")
			alertaSingleton.show( objeto.toString() );
		}
		
		public function errorFamilias(objeto:Object):void
		{
			trace("ERROR FAMILIA")
			alertaSingleton.show( objeto.toString() );
		}
		
		
		
		
		public function ModeloTramitarCompraMateriales(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
	
}

