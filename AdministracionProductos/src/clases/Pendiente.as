package clases
{
	[Bindable]
	[RemoteClass(alias="clases.Pendiente")]
	public class Pendiente
	{
		private var _fechaInicio:String;
		private var _fechaFin:String;
		private var _partida:String;
		private var _responsable:String;
		private var _docto:String;
		private var _tipo:String;
		private var _folio:int;
		private var _indice:int;
		private var _concepto:String;
		private var _caduca:String;
		
		public function Pendiente()
		{
		}
		public function set indice(indice:int):void{
			this._indice = indice;
		}
		public function get indice():int{
			return this._indice;
		}
		public function set fechaInicio(fechaInicio:String):void{
			this._fechaInicio = fechaInicio;
		}
		public function get fechaInicio():String{
			return this._fechaInicio;
		}
		
		public function set fechaFin(fechaFin:String):void{
			this._fechaFin = fechaFin;
		}
		public function get fechaFin():String{
			return this._fechaFin;
		}
		
		public function set partida(partida:String):void{
			this._partida = partida;
		}
		public function get partida():String{
			return this._partida;
		}
		
		public function set responsable(responsable:String):void{
			this._responsable = responsable;
		}
		public function get responsable():String{
			return this._responsable;
		}
		
		public function set docto(docto:String):void{
			this._docto = docto;
		}
		public function get docto():String{
			return this._docto;
		}
		
		public function set tipo(tipo:String):void{
			this._tipo = tipo;
		}
		public function get tipo():String{
			return this._tipo;
		}
		
		public function set folio(folio:int):void{
			this._folio = folio;
		}
		public function get folio():String{
			return this._folio;
		}
		public function set caduca(caduca:String):void{
			this._caduca = caduca;
		}
		public function get caduca():String{
			return this._caduca;
		}
		public function set concepto(concepto:String):void{
			this._concepto = concepto;
		}
		public function get concepto():String{
			return this._concepto;
		}
	}
}