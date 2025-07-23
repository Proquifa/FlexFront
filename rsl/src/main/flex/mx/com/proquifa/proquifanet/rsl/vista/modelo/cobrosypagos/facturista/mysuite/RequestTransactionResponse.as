package mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.facturista.mysuite
{
	
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.negocio.cobrosypagos.facturista.mysuite.RequestTransactionResponse")]
	public class RequestTransactionResponse
	{
		private var _requestTransactionResult:TransactionTag;

		public function get requestTransactionResult():TransactionTag
		{
			return _requestTransactionResult;
		}

		public function set requestTransactionResult(value:TransactionTag):void
		{
			_requestTransactionResult = value;
		}

	}
}