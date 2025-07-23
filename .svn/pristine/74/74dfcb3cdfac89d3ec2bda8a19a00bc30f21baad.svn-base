package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes
{
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.clientes.EventoTableroClientes;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.productos.EventoTableroProductos;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.cliente.ResumenVentasESAC")]
	[Bindable]
	public class ResumenVentasESAC
	{
		
		private var _esac:String;
		private var _funcion:String;
		private var _totalClientes:int;
		private var _distribucionClientes:Number;
		private var _distribucionClientesAnt:Number;
		private var _totalVentaEsac:Number;
		
		private var _ventaAAplus:Number;
		private var _ventaAA:Number;
		private var _ventaAM:Number;
		private var _ventaAB:Number;
		private var _ventaMA:Number;
		private var _ventaMM:Number;
		private var _ventaMB:Number;
		private var _ventaDistribuidor:Number;
		private var _ventaBajos:Number;
		private var _ventaNuevos:Number;
		private var _carterasAltos:Number;
		private var _carterasMedios:Number;
		private var _carterasBajos:Number;
		private var _carterasNuevos:Number;
		private var _carterasDistribuidor:Number;
		
		private var _nivelIngreso:String;
		
		private var _objFun_AAplus:Number;
		private var _objFun_AA:Number;
		private var _objFun_AM:Number;
		private var _objFun_AB:Number;
		private var _objFun_MA:Number;
		private var _objFun_MM:Number;
		private var _objFun_MB:Number;
		private var _objFun_Bajo:Number;
		private var _objFun_Nuevo:Number;
		private var _objFun_Distribuidor:Number;
		private var _objFun_TotalTodos:Number;
		private var _objFun_TotalAltos:Number;
		private var _objFun_TotalMedios:Number;
		private var _objFun_TotalBajos:Number;
		private var _objFun_TotalDistri:Number;
		private var _objFun_TotalNuevos:Number;
		private var _objFun_GlobalTotalTodos:Number;
		private var _objFun_GlobalTotalAltos:Number;
		private var _objFun_GlobalTotalMedios:Number;
		private var _objFun_GlobalTotalBajos:Number;
		private var _objFun_GlobalTotalDistri:Number;
		private var _objFun_GlobalTotalNuevos:Number;
		
		private var _objDes_AAplus:Number;
		private var _objDes_AA:Number;
		private var _objDes_AM:Number;
		private var _objDes_AB:Number;
		private var _objDes_MA:Number;
		private var _objDes_MM:Number;
		private var _objDes_MB:Number;
		private var _objDes_Bajo:Number;
		private var _objDes_Nuevo:Number;
		private var _objDes_Distribuidor:Number;
		private var _objDes_TotalTodos:Number;
		private var _objDes_TotalAltos:Number;
		private var _objDes_TotalMedios:Number;
		private var _objDes_TotalBajos:Number;
		private var _objDes_TotalDistri:Number;
		private var _objDes_TotalNuevos:Number;
		private var _objDes_GlobalTotalTodos:Number;
		private var _objDes_GlobalTotalAltos:Number;
		private var _objDes_GlobalTotalMedios:Number;
		private var _objDes_GlobalTotalBajos:Number;
		private var _objDes_GlobalTotalDistri:Number;
		private var _objDes_GlobalTotalNuevos:Number;

		
		private var _ventaAAplus_Ant:Number;
		private var _ventaAA_Ant:Number;
		private var _ventaAM_Ant:Number;
		private var _ventaAB_Ant:Number;
		private var _ventaMA_Ant:Number;
		private var _ventaMM_Ant:Number;
		private var _ventaMB_Ant:Number;
		private var _ventaDistribuidor_ant:Number;
		private var _ventaBajos_Ant:Number;
		private var _ventaNuevos_Ant:Number;

		private var _montoVentaAnterior:Number;
		private var _objetivoFundamental:Number;
		private var _objetivoDeseado:Number;
		private var _diferencialFundamental:Number;  
		private var _diferencialDeseado:Number;

		
		private var _clientesAAplus:int;
		private var _clientesAA:int;
		private var _clientesAM:int;
		private var _clientesAB:int;
		private var _clientesMA:int;
		private var _clientesMM:int;
		private var _clientesMB:int;
		private var _clientesDistribuidor:int;
		private var _clientesBajos:int;
		private var _clientesNuevos:int;
		
		private var _idEjecutivoVenta:Number;
		private var _idEsac:Number;
		private var _idCobrador:Number;
		private var _nombreEjecutivoVenta:String;
		private var _nombreEsac:String;
		private var _nombreCobrador:String;
		
		
		//VARIABLES PARA VISTA
		
		private var _participacion:Number;
		private var _ventaAAplusString:String;
		private var _ventaAAString:String;
		private var _ventaAMString:String;
		private var _ventaABString:String;
		private var _ventaMAString:String;
		private var _ventaMMString:String;
		private var _ventaMBString:String;
		private var _ventaDistribuidorString:String;
		private var _ventaBajosString:String;
		private var _ventaNuevosString:String;
		private var _numFila:int;
		private var _totalVentaEsacString:String;
		private var _distribucionClientesString:String;
		private var _distribucionClientesAntString:String;
		private var _participacionString:String;
		private var _objetivoFundamentalString:String;
		private var _objetivoDeseadoString:String;
		private var _montoVentaAnteriorString:String;
		
		private var _eventoTablero:EventoTableroClientes;
		
		private var _totalGlobalTodo:Number;
		private var _totalGlobalAltos:Number;
		private var _totalGlobalMedios:Number;
		private var _totalGlobalBajos:Number;
		private var _totalGlobalNuevos:Number;
		private var _totalGlobalDistri:Number;
		private var _totalTodo:Number;
		private var _totalAltos:Number;
		private var _totalMedios:Number;
		private var _totalBajos:Number;
		private var _totalNuevos:Number;
		private var _totalDistri:Number;
		
		private var _totalCarterasTodos:Number;
		private var _totalCarterasAltos:Number;
		private var _totalCarterasMedios:Number;
		private var _totalCarterasBajos:Number;
		private var _totalCarterasNuevos:Number;
		private var _totalCarterasDistribuidor:Number;

		private var _totalGlobalTodos_ant:Number;
		private var _totalGlobalAltos_ant:Number;
		private var _totalGlobalMedios_ant:Number;
		private var _totalGlobalBajos_ant:Number;
		private var _totalGlobalNuevos_ant:Number;
		private var _totalGlobalDistri_ant:Number;
		private var _totalTodos_ant:Number;
		private var _totalAltos_ant:Number;
		private var _totalMedios_ant:Number;
		private var _totalBajos_ant:Number;
		private var _totalNuevos_ant:Number;
		private var _totalDistri_ant:Number;
		
		private var _distribucionTodos:Number;
		private var _distribucionTodos_ant:Number;
		private var _distribucionAltos:Number;
		private var _distribucionAltos_ant:Number;
		private var _distribucionMedios:Number;
		private var _distribucionMedios_ant:Number;
		private var _distribucionBajos:Number;
		private var _distribucionBajos_ant:Number;
		private var _distribucionNuevos:Number;
		private var _distribucionNuevos_ant:Number;
		private var _distribucionDistri:Number;
		private var _distribucionDistri_ant:Number;
		private var _distribucionTotalTodos:Number;
		private var _distribucionTotalAltos:Number;
		private var _distribucionTotalMedios:Number;
		private var _distribucionTotalBajos:Number;
		private var _distribucionTotalNuevos:Number;
		private var _distribucionTotalDistri:Number;
		
		/*private var _totalEsacVentas:Number;*/
		
		
		//TOTALES
		private var _tgridCAAplus:Number;
		private var _tgridMAAplus:Number;
		private var _tgridCAA:Number;
		private var _tgridMAA:Number;
		private var _tgridCAM:Number;
		private var _tgridMAM:Number;
		private var _tgridCAB:Number;
		private var _tgridMAB:Number;
		private var _tgridCMA:Number;
		private var _tgridMMA:Number;
		private var _tgridCMM:Number;
		private var _tgridMMM:Number;
		private var _tgridCMB:Number;
		private var _tgridMMB:Number;
		private var _tgridCDis:Number;
		private var _tgridMDis:Number;
		private var _tgridCBajo:Number;
		private var _tgridMBajo:Number;
		private var _tgridCNuevos:Number;
		private var _tgridMNuevos:Number;
		private var _tgridClientes:Number;
		private var _tgridDistribucion:Number;
		private var _tgridMontoAnterior:Number;
		private var _tgridMontoVentaAnterior:Number;
		private var _tgridParticipacion:Number;
		
		
		private var _tgridCAAplusString:String;
		private var _tgridMAAplusString:String;
		private var _tgridCAAString:String;
		private var _tgridMAAString:String;
		private var _tgridCAMString:String;
		private var _tgridMAMString:String;
		private var _tgridCABString:String;
		private var _tgridMABString:String;
		private var _tgridCMAString:String;
		private var _tgridMMAString:String;
		private var _tgridCMMString:String;
		private var _tgridMMMString:String;
		private var _tgridCMBString:String;
		private var _tgridMMBString:String;
		private var _tgridCDisString:String;
		private var _tgridMDisString:String;
		private var _tgridCBajoString:String;
		private var _tgridMBajoString:String;
		private var _tgridCNuevosString:String;
		private var _tgridMNuevosString:String;
		private var _tgridClientesString:String;
		private var _tgridDistribucionString:String;
		private var _tgridMontoAnteriorString:String;
		private var _tgridMontoVentaAnteriorString:String;
		private var _tgridParticipacionString:String;
		
		private var _nombreCartera:String;
		private var _idcartera:Number;
		private var _folioCartera:String;
		
		private var _eventoTabProducto:EventoTableroProductos;
		private var _posicion:String;
		
		/* VALORES DE FOOTER "TOTALES" */
		private var _footer_TotalClientes:int;
		private var _footer_TotalVentas:Number;		
		private var _footer_TotalMontoAnterior:Number;		
		
		public function ResumenVentasESAC()
		{
			_folioCartera = "";
			_nombreCartera ="";
			_idcartera = 0;
			_ventaAAplus = 0;
			_ventaAA = 0;
			_ventaAM = 0;
			_ventaAB = 0;
			_ventaMA = 0;
			_ventaMM = 0;
			_ventaMB = 0;
			_ventaNuevos = 0;
			_ventaBajos = 0;
			_ventaAAplus_Ant = 0;
			_ventaAA_Ant = 0;
			_ventaAM_Ant = 0;
			_ventaAB_Ant = 0;
			_ventaMA_Ant = 0;
			_ventaMM_Ant = 0;
			_ventaMB_Ant = 0;
			_ventaDistribuidor_ant = 0;
			_ventaBajos_Ant = 0;
			_ventaNuevos_Ant = 0;
			
			_distribucionClientes = 0;
			_distribucionClientesAnt = 0;
			_totalVentaEsac = 0;
			_participacion = 0;
			_objetivoDeseado = 0;
			_objetivoFundamental = 0;
			_montoVentaAnterior = 0;
			
			_ventaDistribuidor = 0;
			_ventaAAplusString = "$ 0";
			_ventaAAString = "$ 0";
			_ventaAMString = "$ 0";
			_ventaABString = "$ 0";
			_ventaMAString = "$ 0";
			_ventaMMString = "$ 0";
			_ventaMBString = "$ 0";
			_ventaDistribuidorString = "$ 0";
			_ventaBajosString = "$ 0";
			_ventaNuevosString = "$ 0";
			_objetivoDeseadoString = "$ 0";
			_objetivoFundamentalString = "$ 0";
			_montoVentaAnteriorString = "$ 0";
			
			
			//TOTALES
			_tgridCAAplus = 0;
			_tgridMAAplus = 0;
			_tgridCAA = 0;
			_tgridMAA = 0;
			_tgridCAM = 0;
			_tgridMAM = 0;
			_tgridCAB = 0;
			_tgridMAB = 0;
			_tgridCMA = 0;
			_tgridMMA = 0;
			_tgridCMM = 0;
			_tgridMMM = 0;
			_tgridCMB = 0;
			_tgridMMB = 0;
			_tgridCDis = 0;
			_tgridMDis = 0;
			_tgridClientes = 0;
			_tgridDistribucion = 0;
			_tgridMDis = 0;
			_tgridCDis = 0;
			_tgridCBajo = 0;
			_tgridMBajo = 0;
			_tgridCNuevos = 0;
			_tgridMNuevos = 0;
			_tgridMontoAnterior = 0;
			_tgridMontoVentaAnterior = 0;
			_tgridParticipacion = 0;
			
			_totalGlobalAltos = 0;
			_totalGlobalMedios = 0;
			_totalGlobalBajos = 0;
			_totalGlobalNuevos = 0;
			_totalGlobalDistri = 0;
			_totalAltos = 0;
			_totalMedios = 0;
			_totalBajos = 0;
			_totalNuevos = 0;
			_totalDistri = 0;
			
			_totalGlobalAltos_ant = 0;
			_totalGlobalMedios_ant = 0;
			_totalGlobalBajos_ant = 0;
			_totalGlobalNuevos_ant = 0;
			_totalGlobalDistri_ant = 0;
			_totalAltos_ant = 0;
			_totalMedios_ant = 0;
			_totalBajos_ant = 0;
			_totalNuevos_ant = 0;
			_totalDistri_ant = 0;
			
			_totalCarterasAltos = 0;
			_totalCarterasMedios = 0;
			_totalCarterasBajos = 0;
			_totalCarterasNuevos = 0;
			_totalCarterasDistribuidor = 0;
			
			_distribucionAltos = 0;
			_distribucionAltos_ant = 0;
			_distribucionMedios = 0;
			_distribucionMedios_ant = 0;
			_distribucionBajos = 0;
			_distribucionBajos_ant = 0;
			_distribucionNuevos = 0;
			_distribucionNuevos_ant = 0;
			_distribucionDistri = 0;
			_distribucionDistri_ant = 0;
			_distribucionTotalAltos = 0;
			_distribucionTotalMedios = 0;
			_distribucionTotalBajos = 0;
			_distribucionTotalNuevos = 0;
			_distribucionTotalDistri = 0;
			
			
			_objFun_AAplus = 0;
			_objFun_AA = 0;
			_objFun_AM = 0;
			_objFun_AB = 0;
			_objFun_MA = 0;
			_objFun_MM = 0;
			_objFun_MB = 0;
			_objFun_Bajo = 0;
			_objFun_Nuevo= 0;
			_objFun_Distribuidor = 0;
			_objFun_TotalAltos = 0;
			_objFun_TotalMedios = 0;
			_objFun_TotalBajos = 0;
			_objFun_TotalDistri = 0;
			_objFun_TotalNuevos = 0;
			_objFun_GlobalTotalAltos = 0;
			_objFun_GlobalTotalMedios = 0;
			_objFun_GlobalTotalBajos = 0;
			_objFun_GlobalTotalDistri = 0;
			_objFun_GlobalTotalNuevos = 0;
			
			
			_objDes_AAplus = 0;
			_objDes_AA = 0;
			_objDes_AM = 0;
			_objDes_AB = 0;
			_objDes_MA = 0;
			_objDes_MM = 0;
			_objDes_MB = 0;
			_objDes_Bajo = 0;
			_objDes_Nuevo = 0;
			_objDes_Distribuidor = 0;
			_objDes_TotalAltos = 0;
			_objDes_TotalMedios = 0;
			_objDes_TotalBajos = 0;
			_objDes_TotalDistri = 0;
			_objDes_TotalNuevos = 0;
			_objDes_GlobalTotalAltos = 0;
			_objDes_GlobalTotalMedios = 0;
			_objDes_GlobalTotalBajos = 0;
			_objDes_GlobalTotalDistri = 0;
			_objDes_GlobalTotalNuevos = 0;
			
			

			_nivelIngreso = "";
			
			_tgridCAAplusString= "0";
			_tgridMAAplusString= "0";
			_tgridCAAString= "0";
			_tgridMAAString= "0";
			_tgridCAMString= "0";
			_tgridMAMString= "0";
			_tgridCABString= "0";
			_tgridMABString= "0";
			_tgridCMAString= "0";
			_tgridMMAString= "0";
			_tgridCMMString= "0";
			_tgridMMMString= "0";
			_tgridCMBString= "0";
			_tgridMMBString= "0";
			_tgridCDisString= "0";
			_tgridMDisString= "0";
			_tgridMDisString = "0";
			_tgridCDisString = "0";
			_tgridCBajoString = "0";
			_tgridMBajoString = "0";
			_tgridCNuevosString = "0";
			_tgridMNuevosString = "0";
			_tgridClientesString= "0";
			_tgridDistribucionString= "0";
			_tgridMontoAnteriorString= "0";
			_tgridMontoVentaAnteriorString= "0";
			_tgridParticipacionString= "0";
		}
		

		public function get esac():String
		{
			return _esac;
		}
		
		public function set esac(value:String):void
		{
			_esac = value;
		}
		
		public function get funcion():String
		{
			return _funcion;
		}
		
		public function set funcion(value:String):void
		{
			_funcion = value;
		}
		
		public function get totalClientes():int
		{
			return _totalClientes;
		}
		
		public function set totalClientes(value:int):void
		{
			_totalClientes = value;
		}
		
		public function get distribucionClientes():Number
		{
			return _distribucionClientes;
		}
		
		public function set distribucionClientes(value:Number):void
		{
			if(value > 100)
				_distribucionClientes = 100;
			else
				_distribucionClientes = value;
			
			_distribucionClientesString = UtilsFormatosNumericos.truncarDecimalesCeil(value, 2 ) + " %";
		}
		
		public function get totalVentaEsac():Number
		{
			return _totalVentaEsac;
		}
		
		public function set totalVentaEsac(value:Number):void
		{
			_totalVentaEsac = value;
			_totalVentaEsacString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_totalVentaEsac);
		}
		
		public function get ventaAAplus():Number
		{
			return _ventaAAplus;
		}
		
		public function set ventaAAplus(value:Number):void
		{
			_ventaAAplus = value;
			
			_ventaAAplusString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_ventaAAplus);
		}
		
		public function get ventaAA():Number
		{
			return _ventaAA;
		}
		
		public function set ventaAA(value:Number):void
		{
			_ventaAA = value;
			
			_ventaAAString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_ventaAA);
		}
		
		public function get ventaAM():Number
		{
			return _ventaAM;
		}
		
		public function set ventaAM(value:Number):void
		{
			_ventaAM = value;
			
			_ventaAMString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_ventaAM);
		}
		
		public function get ventaAB():Number
		{
			return _ventaAB;
		}
		
		public function set ventaAB(value:Number):void
		{
			_ventaAB = value;
			
			_ventaABString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_ventaAB);
		}
		
		public function get ventaMA():Number
		{
			return _ventaMA;
		}
		
		public function set ventaMA(value:Number):void
		{
			_ventaMA = value;
			
			_ventaMAString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_ventaMA);
		}
		
		public function get ventaMM():Number
		{
			return _ventaMM;
		}
		
		public function set ventaMM(value:Number):void
		{
			_ventaMM = value;
			
			_ventaMMString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_ventaMM);
		}
		
		public function get ventaMB():Number
		{
			return _ventaMB;
		}
		
		public function set ventaMB(value:Number):void
		{
			_ventaMB = value;
			
			_ventaMBString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_ventaMB);
		}
		
		public function get ventaDistribuidor():Number
		{
			return _ventaDistribuidor;
		}
		
		public function set ventaDistribuidor(value:Number):void
		{
			_ventaDistribuidor = value;
			
			_ventaDistribuidorString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_ventaDistribuidor);
		}
		
		public function get clientesAAplus():int
		{
			return _clientesAAplus;
		}
		
		public function set clientesAAplus(value:int):void
		{
			_clientesAAplus = value;
		}
		
		public function get clientesAA():int
		{
			return _clientesAA;
		}
		
		public function set clientesAA(value:int):void
		{
			_clientesAA = value;
		}
		
		public function get clientesAM():int
		{
			return _clientesAM;
		}
		
		public function set clientesAM(value:int):void
		{
			_clientesAM = value;
		}
		
		public function get clientesAB():int
		{
			return _clientesAB;
		}
		
		public function set clientesAB(value:int):void
		{
			_clientesAB = value;
		}
		
		public function get clientesMA():int
		{
			return _clientesMA;
		}
		
		public function set clientesMA(value:int):void
		{
			_clientesMA = value;
		}
		
		public function get clientesMM():int
		{
			return _clientesMM;
		}
		
		public function set clientesMM(value:int):void
		{
			_clientesMM = value;
		}
		
		public function get clientesMB():int
		{
			return _clientesMB;
		}
		
		public function set clientesMB(value:int):void
		{
			_clientesMB = value;
		}
		
		public function get clientesDistribuidor():int
		{
			return _clientesDistribuidor;
		}
		
		public function set clientesDistribuidor(value:int):void
		{
			_clientesDistribuidor = value;
		}
		
		public function get ventaAAplusString():String
		{
			return _ventaAAplusString;
		}
		
		public function set ventaAAplusString(value:String):void
		{
			_ventaAAplusString = value;
		}
		
		public function get ventaAAString():String
		{
			return _ventaAAString;
		}
		
		public function set ventaAAString(value:String):void
		{
			_ventaAAString = value;
		}
		
		public function get ventaAMString():String
		{
			return _ventaAMString;
		}
		
		public function set ventaAMString(value:String):void
		{
			_ventaAMString = value;
		}
		
		public function get ventaABString():String
		{
			return _ventaABString;
		}
		
		public function set ventaABString(value:String):void
		{
			_ventaABString = value;
		}
		
		public function get ventaMAString():String
		{
			return _ventaMAString;
		}
		
		public function set ventaMAString(value:String):void
		{
			_ventaMAString = value;
		}
		
		public function get ventaMMString():String
		{
			return _ventaMMString;
		}
		
		public function set ventaMMString(value:String):void
		{
			_ventaMMString = value;
		}
		
		public function get ventaMBString():String
		{
			return _ventaMBString;
		}
		
		public function set ventaMBString(value:String):void
		{
			_ventaMBString = value;
		}
		
		public function get ventaDistribuidorString():String
		{
			return _ventaDistribuidorString;
		}
		
		public function set ventaDistribuidorString(value:String):void
		{
			_ventaDistribuidorString = value;
		}
		
		public function get numFila():int
		{
			return _numFila;
		}
		
		public function set numFila(value:int):void
		{
			_numFila = value;
		}
		
		public function get totalVentaEsacString():String
		{
			return _totalVentaEsacString;
		}
		
		public function set totalVentaEsacString(value:String):void
		{
			_totalVentaEsacString = value;
		}
		
		public function get tgridCAAplus():Number
		{
			return _tgridCAAplus;
		}
		
		public function set tgridCAAplus(value:Number):void
		{
			_tgridCAAplus = value;
			_tgridCAAplusString = value.toString();
		}
		
		public function get tgridMAAplus():Number
		{
			return _tgridMAAplus;
		}
		
		public function set tgridMAAplus(value:Number):void
		{
			_tgridMAAplus = value;
			_tgridMAAplusString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}
		
		public function get tgridCAA():Number
		{
			return _tgridCAA;
		}
		
		public function set tgridCAA(value:Number):void
		{
			_tgridCAA = value;
			_tgridCAAString = value.toString();
		}
		
		public function get tgridMAA():Number
		{
			return _tgridMAA;
		}
		
		public function set tgridMAA(value:Number):void
		{
			_tgridMAA = value;
			_tgridMAAString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}
		
		public function get tgridCAM():Number
		{
			return _tgridCAM;
		}
		
		public function set tgridCAM(value:Number):void
		{
			_tgridCAM = value;
			_tgridCAMString = value.toString();
		}
		
		public function get tgridMAM():Number
		{
			return _tgridMAM;
		}
		
		public function set tgridMAM(value:Number):void
		{
			_tgridMAM = value;
			_tgridMAMString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}
		
		public function get tgridCAB():Number
		{
			return _tgridCAB;
		}
		
		public function set tgridCAB(value:Number):void
		{
			_tgridCAB = value;
			_tgridCABString = value.toString();
		}
		
		public function get tgridMAB():Number
		{
			return _tgridMAB;
		}
		
		public function set tgridMAB(value:Number):void
		{
			_tgridMAB = value;
			_tgridMABString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}
		
		public function get tgridCMA():Number
		{
			return _tgridCMA;
		}
		
		public function set tgridCMA(value:Number):void
		{
			_tgridCMA = value;
			_tgridCMAString = value.toString();
		}
		
		public function get tgridMMA():Number
		{
			return _tgridMMA;
		}
		
		public function set tgridMMA(value:Number):void
		{
			_tgridMMA = value;
			_tgridMMAString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}
		
		public function get tgridCMM():Number
		{
			return _tgridCMM;
		}
		
		public function set tgridCMM(value:Number):void
		{
			_tgridCMM = value;
			_tgridCMMString = value.toString();
		}
		
		public function get tgridMMM():Number
		{
			return _tgridMMM;
		}
		
		public function set tgridMMM(value:Number):void
		{
			_tgridMMM = value;
			_tgridMMMString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}
		
		public function get tgridCMB():Number
		{
			return _tgridCMB;
		}
		
		public function set tgridCMB(value:Number):void
		{
			_tgridCMB = value;
			_tgridCMBString = value.toString();
		}
		
		public function get tgridMMB():Number
		{
			return _tgridMMB;
		}
		
		public function set tgridMMB(value:Number):void
		{
			_tgridMMB = value;
			_tgridMMBString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}
		
		public function get tgridCDis():Number
		{
			return _tgridCDis;
		}
		
		public function set tgridCDis(value:Number):void
		{
			_tgridCDis = value;
			_tgridCDisString = value.toString();
		}
		
		public function get tgridMDis():Number
		{
			return _tgridMDis;
		}
		
		public function set tgridMDis(value:Number):void
		{
			_tgridMDis = value;
			_tgridMDisString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}
		
		public function get tgridClientes():Number
		{
			return _tgridClientes;
		}
		
		public function set tgridClientes(value:Number):void
		{
			_tgridClientes = value;
			_tgridClientesString = value.toString();
		}
		
		public function get tgridDistribucion():Number
		{
			return _tgridDistribucion;
		}
		
		public function set tgridDistribucion(value:Number):void
		{
			if(value > 100)
				_tgridDistribucion = 100;
			else
				_tgridDistribucion = value;
			
			_tgridDistribucionString = UtilsFormatosNumericos.precisionADosDecimales(_tgridDistribucion) + " %";
		}
		
		public function get tgridMontoAnterior():Number
		{
			return _tgridMontoAnterior;
		}
		
		public function set tgridMontoAnterior(value:Number):void
		{
			_tgridMontoAnterior = value;
			
			_tgridMontoAnteriorString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_tgridMontoAnterior);
		}
		
		public function get tgridParticipacion():Number
		{
			return _tgridParticipacion;
		}
		
		public function set tgridParticipacion(value:Number):void
		{
			if(value > 100)
				_tgridParticipacion = 100;
			else
				_tgridParticipacion = value;
			
			_tgridParticipacionString = UtilsFormatosNumericos.precisionADosDecimales(_tgridParticipacion) + " %";
		}
		
		public function get tgridCAAplusString():String
		{
			return _tgridCAAplusString;
		}
		
		public function set tgridCAAplusString(value:String):void
		{
			_tgridCAAplusString = value;
		}
		
		public function get tgridMAAplusString():String
		{
			return _tgridMAAplusString;
		}
		
		public function set tgridMAAplusString(value:String):void
		{
			_tgridMAAplusString = value;
		}
		
		public function get tgridCAAString():String
		{
			return _tgridCAAString;
		}
		
		public function set tgridCAAString(value:String):void
		{
			_tgridCAAString = value;
		}
		
		public function get tgridMAAString():String
		{
			return _tgridMAAString;
		}
		
		public function set tgridMAAString(value:String):void
		{
			_tgridMAAString = value;
		}
		
		public function get tgridCAMString():String
		{
			return _tgridCAMString;
		}
		
		public function set tgridCAMString(value:String):void
		{
			_tgridCAMString = value;
		}
		
		public function get tgridMAMString():String
		{
			return _tgridMAMString;
		}
		
		public function set tgridMAMString(value:String):void
		{
			_tgridMAMString = value;
		}
		
		public function get tgridCABString():String
		{
			return _tgridCABString;
		}
		
		public function set tgridCABString(value:String):void
		{
			_tgridCABString = value;
		}
		
		public function get tgridMABString():String
		{
			return _tgridMABString;
		}
		
		public function set tgridMABString(value:String):void
		{
			_tgridMABString = value;
		}
		
		public function get tgridCMAString():String
		{
			return _tgridCMAString;
		}
		
		public function set tgridCMAString(value:String):void
		{
			_tgridCMAString = value;
		}
		
		public function get tgridMMAString():String
		{
			return _tgridMMAString;
		}
		
		public function set tgridMMAString(value:String):void
		{
			_tgridMMAString = value;
		}
		
		public function get tgridCMMString():String
		{
			return _tgridCMMString;
		}
		
		public function set tgridCMMString(value:String):void
		{
			_tgridCMMString = value;
		}
		
		public function get tgridMMMString():String
		{
			return _tgridMMMString;
		}
		
		public function set tgridMMMString(value:String):void
		{
			_tgridMMMString = value;
		}
		
		public function get tgridCMBString():String
		{
			return _tgridCMBString;
		}
		
		public function set tgridCMBString(value:String):void
		{
			_tgridCMBString = value;
		}
		
		public function get tgridMMBString():String
		{
			return _tgridMMBString;
		}
		
		public function set tgridMMBString(value:String):void
		{
			_tgridMMBString = value;
		}
		
		public function get tgridCDisString():String
		{
			return _tgridCDisString;
		}
		
		public function set tgridCDisString(value:String):void
		{
			_tgridCDisString = value;
		}
		
		public function get tgridMDisString():String
		{
			return _tgridMDisString;
		}
		
		public function set tgridMDisString(value:String):void
		{
			_tgridMDisString = value;
		}
		
		public function get tgridClientesString():String
		{
			return _tgridClientesString;
		}
		
		public function set tgridClientesString(value:String):void
		{
			_tgridClientesString = value;
		}
		
		public function get tgridDistribucionString():String
		{
			return _tgridDistribucionString;
		}
		
		public function set tgridDistribucionString(value:String):void
		{
			_tgridDistribucionString = value;
		}
		
		public function get tgridMontoAnteriorString():String
		{
			return _tgridMontoAnteriorString;
		}
		
		public function set tgridMontoAnteriorString(value:String):void
		{
			_tgridMontoAnteriorString = value;
		}
		
		public function get tgridParticipacionString():String
		{
			return _tgridParticipacionString;
		}
		
		public function set tgridParticipacionString(value:String):void
		{
			_tgridParticipacionString = value;
		}
		
		public function get participacion():Number
		{
			return _participacion;
		}
		
		public function set participacion(value:Number):void
		{
			if(value > 100)
				_participacion = 100;
			else
				_participacion = value;
			
			_participacionString = UtilsFormatosNumericos.truncarDecimalesCeil(_participacion, 2 ) + " %";
		}
		
		public function get distribucionClientesString():String
		{
			return _distribucionClientesString;
		}
		
		public function set distribucionClientesString(value:String):void
		{
			_distribucionClientesString = value;
		}
		
		public function get participacionString():String
		{
			return _participacionString;
		}
		
		public function set participacionString(value:String):void
		{
			_participacionString = value;
			
		}

		public function get ventaBajos():Number
		{
			return _ventaBajos;
		}

		public function set ventaBajos(value:Number):void
		{
			_ventaBajos = value;
			
			_ventaBajosString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_ventaBajos);
		}

		public function get ventaNuevos():Number
		{
			return _ventaNuevos;
		}

		public function set ventaNuevos(value:Number):void
		{
			_ventaNuevos = value;
			
			_ventaNuevosString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_ventaNuevos);
		}

		public function get clientesBajos():int
		{
			return _clientesBajos;
		}

		public function set clientesBajos(value:int):void
		{
			_clientesBajos = value;
		}

		public function get clientesNuevos():int
		{
			return _clientesNuevos;
		}

		public function set clientesNuevos(value:int):void
		{
			_clientesNuevos = value;
		}

		public function get ventaBajosString():String
		{
			return _ventaBajosString;
		}

		public function set ventaBajosString(value:String):void
		{
			_ventaBajosString = value;
		}

		public function get ventaNuevosString():String
		{
			return _ventaNuevosString;
		}

		public function set ventaNuevosString(value:String):void
		{
			_ventaNuevosString = value;
		}

		public function get eventoTablero():EventoTableroClientes
		{
			return _eventoTablero;
		}

		public function set eventoTablero(value:EventoTableroClientes):void
		{
			_eventoTablero = value;
		}

		public function get montoVentaAnterior():Number
		{
			return _montoVentaAnterior;
		}

		public function set montoVentaAnterior(value:Number):void
		{
			_montoVentaAnterior = value;
			
			_montoVentaAnteriorString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_montoVentaAnterior);
		}

		public function get objetivoFundamental():Number
		{
			return _objetivoFundamental;
		}

		public function set objetivoFundamental(value:Number):void
		{
			_objetivoFundamental = value;
			
			_objetivoFundamentalString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_objetivoFundamental);
		}

		public function get objetivoDeseado():Number
		{
			return _objetivoDeseado;
		}

		public function set objetivoDeseado(value:Number):void
		{
			_objetivoDeseado = value;
			
			_objetivoDeseadoString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_objetivoDeseado);
		}

		public function get diferencialFundamental():Number
		{
			return _diferencialFundamental;
		}

		public function set diferencialFundamental(value:Number):void
		{
			_diferencialFundamental = value;
		}

		public function get diferencialDeseado():Number
		{
			return _diferencialDeseado;
		}

		public function set diferencialDeseado(value:Number):void
		{
			_diferencialDeseado = value;
		}

		public function get objetivoFundamentalString():String
		{
			return _objetivoFundamentalString;
		}

		public function set objetivoFundamentalString(value:String):void
		{
			_objetivoFundamentalString = value;
		}

		public function get objetivoDeseadoString():String
		{
			return _objetivoDeseadoString;
		}

		public function set objetivoDeseadoString(value:String):void
		{
			_objetivoDeseadoString = value;
		}

		public function get montoVentaAnteriorString():String
		{
			return _montoVentaAnteriorString;
		}

		public function set montoVentaAnteriorString(value:String):void
		{
			_montoVentaAnteriorString = value;
		}

		public function get distribucionClientesAnt():Number
		{
			return _distribucionClientesAnt;
		}

		public function set distribucionClientesAnt(value:Number):void
		{
			if(value > 100)
				_distribucionClientesAnt = 100;
			else
				_distribucionClientesAnt = value;
			
			_distribucionClientesAntString = UtilsFormatosNumericos.truncarDecimalesCeil(value, 2 ) + " %";
		}

		public function get distribucionClientesAntString():String
		{
			return _distribucionClientesAntString;
		}

		public function set distribucionClientesAntString(value:String):void
		{
			_distribucionClientesAntString = value;
		}

		public function get tgridCBajo():Number
		{
			return _tgridCBajo;
		}

		public function set tgridCBajo(value:Number):void
		{
			_tgridCBajo = value;
			
			_tgridCBajoString = _tgridCBajo.toString();
		}

		public function get tgridMBajo():Number
		{
			return _tgridMBajo;
		}

		public function set tgridMBajo(value:Number):void
		{
			_tgridMBajo = value;
			
			_tgridMBajoString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_tgridMBajo);
		}

		public function get tgridCNuevos():Number
		{
			return _tgridCNuevos;
		}

		public function set tgridCNuevos(value:Number):void
		{
			_tgridCNuevos = value;
			
			_tgridCNuevosString = _tgridCNuevos.toString();
		}

		public function get tgridMNuevos():Number
		{
			return _tgridMNuevos;
		}

		public function set tgridMNuevos(value:Number):void
		{
			_tgridMNuevos = value;
			
			_tgridMNuevosString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_tgridMNuevos);
		}

		public function get tgridCBajoString():String
		{
			return _tgridCBajoString;
		}

		public function set tgridCBajoString(value:String):void
		{
			_tgridCBajoString = value;
		}

		public function get tgridMBajoString():String
		{
			return _tgridMBajoString;
		}

		public function set tgridMBajoString(value:String):void
		{
			_tgridMBajoString = value;
		}

		public function get tgridCNuevosString():String
		{
			return _tgridCNuevosString;
		}

		public function set tgridCNuevosString(value:String):void
		{
			_tgridCNuevosString = value;
		}

		public function get tgridMNuevosString():String
		{
			return _tgridMNuevosString;
		}

		public function set tgridMNuevosString(value:String):void
		{
			_tgridMNuevosString = value;
		}

		public function get tgridMontoVentaAnterior():Number
		{
			return _tgridMontoVentaAnterior;
		}

		public function set tgridMontoVentaAnterior(value:Number):void
		{
			_tgridMontoVentaAnterior = value;
			
			_tgridMontoVentaAnteriorString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_tgridMontoVentaAnterior);
		}

		public function get tgridMontoVentaAnteriorString():String
		{
			return _tgridMontoVentaAnteriorString;
		}

		public function set tgridMontoVentaAnteriorString(value:String):void
		{
			_tgridMontoVentaAnteriorString = value;
		}

		public function get totalGlobalAltos():Number
		{
			return _totalGlobalAltos;
		}

		public function set totalGlobalAltos(value:Number):void
		{
			_totalGlobalAltos = value;
		}

		public function get totalGlobalMedios():Number
		{
			return _totalGlobalMedios;
		}

		public function set totalGlobalMedios(value:Number):void
		{
			_totalGlobalMedios = value;
		}

		public function get totalGlobalBajos():Number
		{
			return _totalGlobalBajos;
		}

		public function set totalGlobalBajos(value:Number):void
		{
			_totalGlobalBajos = value;
		}

		public function get totalGlobalNuevos():Number
		{
			return _totalGlobalNuevos;
		}

		public function set totalGlobalNuevos(value:Number):void
		{
			_totalGlobalNuevos = value;
		}

		public function get totalGlobalDistri():Number
		{
			return _totalGlobalDistri;
		}

		public function set totalGlobalDistri(value:Number):void
		{
			_totalGlobalDistri = value;
		}

		public function get totalAltos():Number
		{
			return _totalAltos;
		}

		public function set totalAltos(value:Number):void
		{
			_totalAltos = value;
		}

		public function get totalMedios():Number
		{
			return _totalMedios;
		}

		public function set totalMedios(value:Number):void
		{
			_totalMedios = value;
		}

		public function get totalBajos():Number
		{
			return _totalBajos;
		}

		public function set totalBajos(value:Number):void
		{
			_totalBajos = value;
		}

		public function get totalNuevos():Number
		{
			return _totalNuevos;
		}

		public function set totalNuevos(value:Number):void
		{
			_totalNuevos = value;
		}

		public function get totalDistri():Number
		{
			return _totalDistri;
		}

		public function set totalDistri(value:Number):void
		{
			_totalDistri = value;
		}

		public function get distribucionAltos():Number
		{
			return _distribucionAltos;
		}

		public function set distribucionAltos(value:Number):void
		{
			_distribucionAltos = value;
		}

		public function get distribucionMedios():Number
		{
			return _distribucionMedios;
		}

		public function set distribucionMedios(value:Number):void
		{
			_distribucionMedios = value;
		}

		public function get distribucionBajos():Number
		{
			return _distribucionBajos;
		}

		public function set distribucionBajos(value:Number):void
		{
			_distribucionBajos = value;
		}

		public function get distribucionNuevos():Number
		{
			return _distribucionNuevos;
		}

		public function set distribucionNuevos(value:Number):void
		{
			_distribucionNuevos = value;
		}

		public function get distribucionDistri():Number
		{
			return _distribucionDistri;
		}

		public function set distribucionDistri(value:Number):void
		{
			_distribucionDistri = value;
		}

		public function get distribucionTotalAltos():Number
		{
			return _distribucionTotalAltos;
		}

		public function set distribucionTotalAltos(value:Number):void
		{
			_distribucionTotalAltos = value;
		}

		public function get distribucionTotalMedios():Number
		{
			return _distribucionTotalMedios;
		}

		public function set distribucionTotalMedios(value:Number):void
		{
			_distribucionTotalMedios = value;
		}

		public function get distribucionTotalBajos():Number
		{
			return _distribucionTotalBajos;
		}

		public function set distribucionTotalBajos(value:Number):void
		{
			_distribucionTotalBajos = value;
		}

		public function get distribucionTotalNuevos():Number
		{
			return _distribucionTotalNuevos;
		}

		public function set distribucionTotalNuevos(value:Number):void
		{
			_distribucionTotalNuevos = value;
		}

		public function get distribucionTotalDistri():Number
		{
			return _distribucionTotalDistri;
		}

		public function set distribucionTotalDistri(value:Number):void
		{
			_distribucionTotalDistri = value;
		}

		public function get ventaAAplus_Ant():Number
		{
			return _ventaAAplus_Ant;
		}

		public function set ventaAAplus_Ant(value:Number):void
		{
			_ventaAAplus_Ant = value;
		}

		public function get ventaAA_Ant():Number
		{
			return _ventaAA_Ant;
		}

		public function set ventaAA_Ant(value:Number):void
		{
			_ventaAA_Ant = value;
		}

		public function get ventaAM_Ant():Number
		{
			return _ventaAM_Ant;
		}

		public function set ventaAM_Ant(value:Number):void
		{
			_ventaAM_Ant = value;
		}

		public function get ventaAB_Ant():Number
		{
			return _ventaAB_Ant;
		}

		public function set ventaAB_Ant(value:Number):void
		{
			_ventaAB_Ant = value;
		}

		public function get ventaMA_Ant():Number
		{
			return _ventaMA_Ant;
		}

		public function set ventaMA_Ant(value:Number):void
		{
			_ventaMA_Ant = value;
		}

		public function get ventaMM_Ant():Number
		{
			return _ventaMM_Ant;
		}

		public function set ventaMM_Ant(value:Number):void
		{
			_ventaMM_Ant = value;
		}

		public function get ventaMB_Ant():Number
		{
			return _ventaMB_Ant;
		}

		public function set ventaMB_Ant(value:Number):void
		{
			_ventaMB_Ant = value;
		}

		public function get ventaBajos_Ant():Number
		{
			return _ventaBajos_Ant;
		}

		public function set ventaBajos_Ant(value:Number):void
		{
			_ventaBajos_Ant = value;
		}

		public function get ventaNuevos_Ant():Number
		{
			return _ventaNuevos_Ant;
		}

		public function set ventaNuevos_Ant(value:Number):void
		{
			_ventaNuevos_Ant = value;
		}

		public function get totalGlobalAltos_ant():Number
		{
			return _totalGlobalAltos_ant;
		}

		public function set totalGlobalAltos_ant(value:Number):void
		{
			_totalGlobalAltos_ant = value;
		}

		public function get totalGlobalMedios_ant():Number
		{
			return _totalGlobalMedios_ant;
		}

		public function set totalGlobalMedios_ant(value:Number):void
		{
			_totalGlobalMedios_ant = value;
		}

		public function get totalGlobalBajos_ant():Number
		{
			return _totalGlobalBajos_ant;
		}

		public function set totalGlobalBajos_ant(value:Number):void
		{
			_totalGlobalBajos_ant = value;
		}

		public function get totalGlobalNuevos_ant():Number
		{
			return _totalGlobalNuevos_ant;
		}

		public function set totalGlobalNuevos_ant(value:Number):void
		{
			_totalGlobalNuevos_ant = value;
		}

		public function get totalGlobalDistri_ant():Number
		{
			return _totalGlobalDistri_ant;
		}

		public function set totalGlobalDistri_ant(value:Number):void
		{
			_totalGlobalDistri_ant = value;
		}

		public function get totalAltos_ant():Number
		{
			return _totalAltos_ant;
		}

		public function set totalAltos_ant(value:Number):void
		{
			_totalAltos_ant = value;
		}

		public function get totalMedios_ant():Number
		{
			return _totalMedios_ant;
		}

		public function set totalMedios_ant(value:Number):void
		{
			_totalMedios_ant = value;
		}

		public function get totalBajos_ant():Number
		{
			return _totalBajos_ant;
		}

		public function set totalBajos_ant(value:Number):void
		{
			_totalBajos_ant = value;
		}

		public function get totalNuevos_ant():Number
		{
			return _totalNuevos_ant;
		}

		public function set totalNuevos_ant(value:Number):void
		{
			_totalNuevos_ant = value;
		}

		public function get totalDistri_ant():Number
		{
			return _totalDistri_ant;
		}

		public function set totalDistri_ant(value:Number):void
		{
			_totalDistri_ant = value;
		}

		public function get nivelIngreso():String
		{
			return _nivelIngreso;
		}

		public function set nivelIngreso(value:String):void
		{
			_nivelIngreso = value;
		}

		public function get objFun_AAplus():Number
		{
			return _objFun_AAplus;
		}

		public function set objFun_AAplus(value:Number):void
		{
			_objFun_AAplus = value;
		}

		public function get objFun_AA():Number
		{
			return _objFun_AA;
		}

		public function set objFun_AA(value:Number):void
		{
			_objFun_AA = value;
		}

		public function get objFun_AM():Number
		{
			return _objFun_AM;
		}

		public function set objFun_AM(value:Number):void
		{
			_objFun_AM = value;
		}

		public function get objFun_AB():Number
		{
			return _objFun_AB;
		}

		public function set objFun_AB(value:Number):void
		{
			_objFun_AB = value;
		}

		public function get objFun_MA():Number
		{
			return _objFun_MA;
		}

		public function set objFun_MA(value:Number):void
		{
			_objFun_MA = value;
		}

		public function get objFun_MM():Number
		{
			return _objFun_MM;
		}

		public function set objFun_MM(value:Number):void
		{
			_objFun_MM = value;
		}

		public function get objFun_MB():Number
		{
			return _objFun_MB;
		}

		public function set objFun_MB(value:Number):void
		{
			_objFun_MB = value;
		}

		public function get objFun_Bajo():Number
		{
			return _objFun_Bajo;
		}

		public function set objFun_Bajo(value:Number):void
		{
			_objFun_Bajo = value;
		}

		public function get objFun_Distribuidor():Number
		{
			return _objFun_Distribuidor;
		}

		public function set objFun_Distribuidor(value:Number):void
		{
			_objFun_Distribuidor = value;
		}

		public function get objDes_AAplus():Number
		{
			return _objDes_AAplus;
		}

		public function set objDes_AAplus(value:Number):void
		{
			_objDes_AAplus = value;
		}

		public function get objDes_AA():Number
		{
			return _objDes_AA;
		}

		public function set objDes_AA(value:Number):void
		{
			_objDes_AA = value;
		}

		public function get objDes_AM():Number
		{
			return _objDes_AM;
		}

		public function set objDes_AM(value:Number):void
		{
			_objDes_AM = value;
		}

		public function get objDes_AB():Number
		{
			return _objDes_AB;
		}

		public function set objDes_AB(value:Number):void
		{
			_objDes_AB = value;
		}

		public function get objDes_MA():Number
		{
			return _objDes_MA;
		}

		public function set objDes_MA(value:Number):void
		{
			_objDes_MA = value;
		}

		public function get objDes_MM():Number
		{
			return _objDes_MM;
		}

		public function set objDes_MM(value:Number):void
		{
			_objDes_MM = value;
		}

		public function get objDes_MB():Number
		{
			return _objDes_MB;
		}

		public function set objDes_MB(value:Number):void
		{
			_objDes_MB = value;
		}

		public function get objDes_Bajo():Number
		{
			return _objDes_Bajo;
		}

		public function set objDes_Bajo(value:Number):void
		{
			_objDes_Bajo = value;
		}

		public function get objDes_Distribuidor():Number
		{
			return _objDes_Distribuidor;
		}

		public function set objDes_Distribuidor(value:Number):void
		{
			_objDes_Distribuidor = value;
		}

		public function get objFun_TotalAltos():Number
		{
			return _objFun_TotalAltos;
		}

		public function set objFun_TotalAltos(value:Number):void
		{
			_objFun_TotalAltos = value;
		}

		public function get objFun_TotalMedios():Number
		{
			return _objFun_TotalMedios;
		}

		public function set objFun_TotalMedios(value:Number):void
		{
			_objFun_TotalMedios = value;
		}

		public function get objFun_TotalBajos():Number
		{
			return _objFun_TotalBajos;
		}

		public function set objFun_TotalBajos(value:Number):void
		{
			_objFun_TotalBajos = value;
		}

		public function get objFun_TotalDistri():Number
		{
			return _objFun_TotalDistri;
		}

		public function set objFun_TotalDistri(value:Number):void
		{
			_objFun_TotalDistri = value;
		}

		public function get objFun_TotalNuevos():Number
		{
			return _objFun_TotalNuevos;
		}

		public function set objFun_TotalNuevos(value:Number):void
		{
			_objFun_TotalNuevos = value;
		}

		public function get objFun_GlobalTotalAltos():Number
		{
			return _objFun_GlobalTotalAltos;
		}

		public function set objFun_GlobalTotalAltos(value:Number):void
		{
			_objFun_GlobalTotalAltos = value;
		}

		public function get objFun_GlobalTotalMedios():Number
		{
			return _objFun_GlobalTotalMedios;
		}

		public function set objFun_GlobalTotalMedios(value:Number):void
		{
			_objFun_GlobalTotalMedios = value;
		}

		public function get objFun_GlobalTotalBajos():Number
		{
			return _objFun_GlobalTotalBajos;
		}

		public function set objFun_GlobalTotalBajos(value:Number):void
		{
			_objFun_GlobalTotalBajos = value;
		}

		public function get objFun_GlobalTotalDistri():Number
		{
			return _objFun_GlobalTotalDistri;
		}

		public function set objFun_GlobalTotalDistri(value:Number):void
		{
			_objFun_GlobalTotalDistri = value;
		}

		public function get objFun_GlobalTotalNuevos():Number
		{
			return _objFun_GlobalTotalNuevos;
		}

		public function set objFun_GlobalTotalNuevos(value:Number):void
		{
			_objFun_GlobalTotalNuevos = value;
		}

		public function get objDes_TotalAltos():Number
		{
			return _objDes_TotalAltos;
		}

		public function set objDes_TotalAltos(value:Number):void
		{
			_objDes_TotalAltos = value;
		}

		public function get objDes_TotalMedios():Number
		{
			return _objDes_TotalMedios;
		}

		public function set objDes_TotalMedios(value:Number):void
		{
			_objDes_TotalMedios = value;
		}

		public function get objDes_TotalBajos():Number
		{
			return _objDes_TotalBajos;
		}

		public function set objDes_TotalBajos(value:Number):void
		{
			_objDes_TotalBajos = value;
		}

		public function get objDes_TotalDistri():Number
		{
			return _objDes_TotalDistri;
		}

		public function set objDes_TotalDistri(value:Number):void
		{
			_objDes_TotalDistri = value;
		}

		public function get objDes_TotalNuevos():Number
		{
			return _objDes_TotalNuevos;
		}

		public function set objDes_TotalNuevos(value:Number):void
		{
			_objDes_TotalNuevos = value;
		}

		public function get objDes_GlobalTotalAltos():Number
		{
			return _objDes_GlobalTotalAltos;
		}

		public function set objDes_GlobalTotalAltos(value:Number):void
		{
			_objDes_GlobalTotalAltos = value;
		}

		public function get objDes_GlobalTotalMedios():Number
		{
			return _objDes_GlobalTotalMedios;
		}

		public function set objDes_GlobalTotalMedios(value:Number):void
		{
			_objDes_GlobalTotalMedios = value;
		}

		public function get objDes_GlobalTotalBajos():Number
		{
			return _objDes_GlobalTotalBajos;
		}

		public function set objDes_GlobalTotalBajos(value:Number):void
		{
			_objDes_GlobalTotalBajos = value;
		}

		public function get objDes_GlobalTotalDistri():Number
		{
			return _objDes_GlobalTotalDistri;
		}

		public function set objDes_GlobalTotalDistri(value:Number):void
		{
			_objDes_GlobalTotalDistri = value;
		}

		public function get objDes_GlobalTotalNuevos():Number
		{
			return _objDes_GlobalTotalNuevos;
		}

		public function set objDes_GlobalTotalNuevos(value:Number):void
		{
			_objDes_GlobalTotalNuevos = value;
		}

		public function get objDes_Nuevo():Number
		{
			return _objDes_Nuevo;
		}

		public function set objDes_Nuevo(value:Number):void
		{
			_objDes_Nuevo = value;
		}

		public function get objFun_Nuevo():Number
		{
			return _objFun_Nuevo;
		}

		public function set objFun_Nuevo(value:Number):void
		{
			_objFun_Nuevo = value;
		}

		public function get ventaDistribuidor_ant():Number
		{
			return _ventaDistribuidor_ant;
		}

		public function set ventaDistribuidor_ant(value:Number):void
		{
			_ventaDistribuidor_ant = value;
		}

		public function get nombreCartera():String
		{
			return _nombreCartera;
		}

		public function set nombreCartera(value:String):void
		{
			_nombreCartera = value;
		}

		public function get idcartera():Number
		{
			return _idcartera;
		}

		public function set idcartera(value:Number):void
		{
			_idcartera = value;
		}

		public function get folioCartera():String
		{
			return _folioCartera;
		}

		public function set folioCartera(value:String):void
		{
			_folioCartera = value;
		}

		public function get idEjecutivoVenta():Number
		{
			return _idEjecutivoVenta;
		}

		public function set idEjecutivoVenta(value:Number):void
		{
			_idEjecutivoVenta = value;
		}

		public function get idEsac():Number
		{
			return _idEsac;
		}

		public function set idEsac(value:Number):void
		{
			_idEsac = value;
		}

		public function get idCobrador():Number
		{
			return _idCobrador;
		}

		public function set idCobrador(value:Number):void
		{
			_idCobrador = value;
		}

		public function get nombreEjecutivoVenta():String
		{
			return _nombreEjecutivoVenta;
		}

		public function set nombreEjecutivoVenta(value:String):void
		{
			_nombreEjecutivoVenta = value;
		}

		public function get nombreEsac():String
		{
			return _nombreEsac;
		}

		public function set nombreEsac(value:String):void
		{
			_nombreEsac = value;
		}

		public function get nombreCobrador():String
		{
			return _nombreCobrador;
		}

		public function set nombreCobrador(value:String):void
		{
			_nombreCobrador = value;
		}

		public function get distribucionMedios_ant():Number
		{
			return _distribucionMedios_ant;
		}

		public function set distribucionMedios_ant(value:Number):void
		{
			_distribucionMedios_ant = value;
		}

		public function get distribucionAltos_ant():Number
		{
			return _distribucionAltos_ant;
		}

		public function set distribucionAltos_ant(value:Number):void
		{
			_distribucionAltos_ant = value;
		}

		public function get distribucionBajos_ant():Number
		{
			return _distribucionBajos_ant;
		}

		public function set distribucionBajos_ant(value:Number):void
		{
			_distribucionBajos_ant = value;
		}

		public function get distribucionNuevos_ant():Number
		{
			return _distribucionNuevos_ant;
		}

		public function set distribucionNuevos_ant(value:Number):void
		{
			_distribucionNuevos_ant = value;
		}

		public function get distribucionDistri_ant():Number
		{
			return _distribucionDistri_ant;
		}

		public function set distribucionDistri_ant(value:Number):void
		{
			_distribucionDistri_ant = value;
		}

		public function get carterasBajos():Number
		{
			return _carterasBajos;
		}

		public function set carterasBajos(value:Number):void
		{
			_carterasBajos = value;
		}

		public function get carterasNuevos():Number
		{
			return _carterasNuevos;
		}

		public function set carterasNuevos(value:Number):void
		{
			_carterasNuevos = value;
		}

		public function get carterasDistribuidor():Number
		{
			return _carterasDistribuidor;
		}

		public function set carterasDistribuidor(value:Number):void
		{
			_carterasDistribuidor = value;
		}

		public function get carterasAltos():Number
		{
			return _carterasAltos;
		}

		public function set carterasAltos(value:Number):void
		{
			_carterasAltos = value;
		}

		public function get carterasMedios():Number
		{
			return _carterasMedios;
		}

		public function set carterasMedios(value:Number):void
		{
			_carterasMedios = value;
		}

		public function get totalCarterasAltos():Number
		{
			return _totalCarterasAltos;
		}

		public function set totalCarterasAltos(value:Number):void
		{
			_totalCarterasAltos = value;
		}

		public function get totalCarterasMedios():Number
		{
			return _totalCarterasMedios;
		}

		public function set totalCarterasMedios(value:Number):void
		{
			_totalCarterasMedios = value;
		}

		public function get totalCarterasBajos():Number
		{
			return _totalCarterasBajos;
		}

		public function set totalCarterasBajos(value:Number):void
		{
			_totalCarterasBajos = value;
		}

		public function get totalCarterasNuevos():Number
		{
			return _totalCarterasNuevos;
		}

		public function set totalCarterasNuevos(value:Number):void
		{
			_totalCarterasNuevos = value;
		}

		public function get totalCarterasDistribuidor():Number
		{
			return _totalCarterasDistribuidor;
		}

		public function set totalCarterasDistribuidor(value:Number):void
		{
			_totalCarterasDistribuidor = value;
		}

		public function get eventoTabProducto():EventoTableroProductos
		{
			return _eventoTabProducto;
		}

		public function set eventoTabProducto(value:EventoTableroProductos):void
		{
			_eventoTabProducto = value;
		}

		public function get posicion():String
		{
			return _posicion;
		}

		public function set posicion(value:String):void
		{
			_posicion = value;
		}

		public function get footer_TotalClientes():int
		{
			return _footer_TotalClientes;
		}

		public function set footer_TotalClientes(value:int):void
		{
			_footer_TotalClientes = value;
		}

		public function get footer_TotalVentas():Number
		{
			return _footer_TotalVentas;
		}

		public function set footer_TotalVentas(value:Number):void
		{
			_footer_TotalVentas = value;
		}		

		public function get footer_TotalMontoAnterior():Number
		{
			return _footer_TotalMontoAnterior;
		}

		public function set footer_TotalMontoAnterior(value:Number):void
		{
			_footer_TotalMontoAnterior = value;
		}

		public function get totalTodo():Number
		{
			return _totalTodo;
		}

		public function set totalTodo(value:Number):void
		{
			_totalTodo = value;
		}

		public function get totalGlobalTodo():Number
		{
			return _totalGlobalTodo;
		}

		public function set totalGlobalTodo(value:Number):void
		{
			_totalGlobalTodo = value;
		}

		public function get totalCarterasTodos():Number
		{
			return _totalCarterasTodos;
		}

		public function set totalCarterasTodos(value:Number):void
		{
			_totalCarterasTodos = value;
		}

		public function get totalGlobalTodos_ant():Number
		{
			return _totalGlobalTodos_ant;
		}

		public function set totalGlobalTodos_ant(value:Number):void
		{
			_totalGlobalTodos_ant = value;
		}

		public function get totalTodos_ant():Number
		{
			return _totalTodos_ant;
		}

		public function set totalTodos_ant(value:Number):void
		{
			_totalTodos_ant = value;
		}

		public function get distribucionTodos():Number
		{
			return _distribucionTodos;
		}

		public function set distribucionTodos(value:Number):void
		{
			_distribucionTodos = value;
		}

		public function get distribucionTodos_ant():Number
		{
			return _distribucionTodos_ant;
		}

		public function set distribucionTodos_ant(value:Number):void
		{
			_distribucionTodos_ant = value;
		}

		public function get distribucionTotalTodos():Number
		{
			return _distribucionTotalTodos;
		}

		public function set distribucionTotalTodos(value:Number):void
		{
			_distribucionTotalTodos = value;
		}

		public function get objFun_TotalTodos():Number
		{
			return _objFun_TotalTodos;
		}

		public function set objFun_TotalTodos(value:Number):void
		{
			_objFun_TotalTodos = value;
		}

		public function get objFun_GlobalTotalTodos():Number
		{
			return _objFun_GlobalTotalTodos;
		}

		public function set objFun_GlobalTotalTodos(value:Number):void
		{
			_objFun_GlobalTotalTodos = value;
		}

		public function get objDes_TotalTodos():Number
		{
			return _objDes_TotalTodos;
		}

		public function set objDes_TotalTodos(value:Number):void
		{
			_objDes_TotalTodos = value;
		}

		public function get objDes_GlobalTotalTodos():Number
		{
			return _objDes_GlobalTotalTodos;
		}

		public function set objDes_GlobalTotalTodos(value:Number):void
		{
			_objDes_GlobalTotalTodos = value;
		}


	}
}