package mx.com.proquifa.proquifanet.rsl.vista.modelo.compras
{
	import flash.utils.ByteArray;
	
	import mx.collections.ArrayCollection;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.compras.gestorimportaciones.PedimentoGastos")]
	[Bindable]
	public class PedimentoGastos
	{
		private var _TIC:Number;
		private var _VAL:Number;
		private var _FTE:Number;
		private var _SEG:Number;
		private var _OTI:Number;
		private var _VAD:Number;
		private var _IVA:Number;
		private var _DTA:Number;
		private var _IGI:Number;
		private var _PRV:Number;
		private var _CNT:Number;
		private var _IMP:Number;
		private var _PRP:Number;
		private var _folio:String;
		
		private var _documentos:ArrayCollection;
		private var _documentoPDF:ByteArray; //nuevo
		private var _rutaPDF:String; //nuevo

		public function PedimentoGastos()
		{
			TIC = 0;
			VAD = 0;
			PRV = 0;
			CNT = 0;
			VAL = 0;
			FTE = 0;
			DTA = 0;
			IGI = 0;
			IVA = 0;
		}

		public function get rutaPDF():String
		{
			return _rutaPDF;
		}

		public function set rutaPDF(value:String):void
		{
			_rutaPDF = value;
		}

		public function get documentoPDF():ByteArray
		{
			return _documentoPDF;
		}

		public function set documentoPDF(value:ByteArray):void
		{
			_documentoPDF = value;
		}

		public function get documentos():ArrayCollection
		{
			return _documentos;
		}

		public function set documentos(value:ArrayCollection):void
		{
			_documentos = value;
		}

		public function get folio():String
		{
			return _folio;
		}

		public function set folio(value:String):void
		{
			_folio = value;
		}

		public function get PRP():Number
		{
			return _PRP;
		}

		public function set PRP(value:Number):void
		{
			_PRP = value;
		}

		public function get IMP():Number
		{
			return _IMP;
		}

		public function set IMP(value:Number):void
		{
			_IMP = value;
		}

		public function get CNT():Number
		{
			return _CNT;
		}

		public function set CNT(value:Number):void
		{
			_CNT = value;
		}

		public function get PRV():Number
		{
			return _PRV;
		}

		public function set PRV(value:Number):void
		{
			_PRV = value;
		}

		public function get IGI():Number
		{
			return _IGI;
		}

		public function set IGI(value:Number):void
		{
			_IGI = value;
		}

		public function get DTA():Number
		{
			return _DTA;
		}

		public function set DTA(value:Number):void
		{
			_DTA = value;
		}

		public function get IVA():Number
		{
			return _IVA;
		}

		public function set IVA(value:Number):void
		{
			_IVA = value;
		}

		public function get VAD():Number
		{
			return _VAD;
		}

		public function set VAD(value:Number):void
		{
			_VAD = value;
		}

		public function get OTI():Number
		{
			return _OTI;
		}

		public function set OTI(value:Number):void
		{
			_OTI = value;
		}

		public function get SEG():Number
		{
			return _SEG;
		}

		public function set SEG(value:Number):void
		{
			_SEG = value;
		}

		public function get FTE():Number
		{
			return _FTE;
		}

		public function set FTE(value:Number):void
		{
			_FTE = value;
		}

		public function get VAL():Number
		{
			return _VAL;
		}

		public function set VAL(value:Number):void
		{
			_VAL = value;
		}

		public function get TIC():Number
		{
			return _TIC;
		}

		public function set TIC(value:Number):void
		{
			_TIC = value;
		}

	}
}