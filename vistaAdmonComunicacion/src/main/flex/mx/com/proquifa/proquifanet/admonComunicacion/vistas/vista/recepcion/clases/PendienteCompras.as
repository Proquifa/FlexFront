package clases
{
[Bindable]
[RemoteClass(alias="funciones.PendienteCompras")]
	public class PendienteCompras
	{ 
	  private var _fila:int;
	  private var _idCorreo:int;
	  private var _fechaInicio:String;
	  private var _origen:String;
	  private var _destino:String;
	  private var _medio:String;
	  private var _folioDocumento:String;
	  private var _correo:String;
	  private var _cuerpoCorreo:String;
	  private var _comentariosEntrega:String;
	  public function PendienteCompras()
	  {
	  }

	  public function set fila(fila:int):void{
	   this._fila = fila;
	  }
	  public function get fila():int{
	   return this._fila;
	  }
	  public function set indice(indice:int):void{
	   this._idCorreo = indice;
	  }
	  public function get indice():int{
	   return this._idCorreo;
	  }
	  public function set fechaInicio(fechaInicio:String):void{
	   this._fechaInicio = fechaInicio;
	  }
	  public function get fechaInicio():String{
	   return this._fechaInicio;
	  }
	  public function set origen(origen:String):void{
	   this._origen = origen;
	  }
	  public function get origen():String{
	   return this._origen;
	  }
	  public function set destino(destino:String):void{
	   this._destino = destino;
	  }
	  public function get destino():String{
	   return this._destino;
	  }
	  public function set medio(medio:String):void{
	   this._medio = medio;
	  }
	  public function get medio():String{
	   return this._medio;
	  }
	  public function set doc(doc:String):void{
	   this._folioDocumento = medio;
	  }
	  public function get doc():String{
	   return this._folioDocumento;
	  }
	  public function set correo(correo:String):void{
	   this._correo = correo;
	  }
	  public function get correo():String{
	   return this._correo;
	  }
	  public function set cuerpoCorreo(cuerpoCorreo:String):void{
	   this._cuerpoCorreo = cuerpoCorreo;
	  }
	  public function get cuerpoCorreo():String{
	   return this._cuerpoCorreo;
	  }
	  public function set comentarios(comentarios:String):void{
	   this._comentariosEntrega = cuerpoCorreo;
	  }
	  public function get comentarios():String{
	   return this._comentariosEntrega;
	  }
	}
}