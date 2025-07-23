package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.metodos.zip
{
	
	import flash.accessibility.Accessibility;
	import flash.utils.ByteArray;
	import flash.utils.Endian;
	//import mine.core.CRC32;
	
	public class ASZip {
		
		private var compressedData:ByteArray;
		private var centralDirectory:ByteArray;
		private var oldOffset:Number;
		//private var nbDirectory:Array;
		private var numEntries:int;
		private var compressionMethod:String;
		private var comment:String;
		
		public function ASZip ( pCompression:String="gzip" ){
			compressedData = new ByteArray();
			compressedData.endian = Endian.LITTLE_ENDIAN;
			centralDirectory = new ByteArray();
			centralDirectory.endian = Endian.LITTLE_ENDIAN;
			//nbDirectory = new Array();
			comment = "";
			oldOffset = 0;
			numEntries = 0;
			compressionMethod = pCompression;
		}
		
		/**
		 * Lets you create a directory for the current Zip
		 * 
		 * @param directoryName Name of the directory
		 * @example
		 * This example shows how to create a directory and subdirectory :
		 * <div class="listing">
		 * <pre>
		 * 
		 * myZip.addDirectory ( "images" );
		 * myZip.addDirectory ( "images/funk" );
		 * </pre>
		 * </div>
		 */	
		public function addDirectory ( directoryName:String ):void {
			directoryName = directoryName.split ('\\').join ('/');  
			
			//var feedArrayRow:ByteArray = new ByteArray;
			//feedArrayRow.endian = Endian.LITTLE_ENDIAN;
			compressedData.writeUnsignedInt ( 0x04034b50 );
			compressedData.writeShort ( 0x0014 ); // 0a
			compressedData.writeShort ( 0x0000 );
			compressedData.writeShort ( 0x0000 );
			compressedData.writeUnsignedInt ( unixToDos() ); 
			
			compressedData.writeUnsignedInt (0); 
			compressedData.writeUnsignedInt (0); 
			compressedData.writeUnsignedInt (0); 
			compressedData.writeShort ( directoryName.length ); 
			compressedData.writeShort ( 0 ); 
			compressedData.writeUTFBytes ( directoryName );  
			
			//feedArrayRow.writeUnsignedInt ( 0 );//changed for myDirMod
			//feedArrayRow.writeUnsignedInt ( 0 ); //changed for myDirMod
			//feedArrayRow.writeUnsignedInt ( 0 );// changed for myDirMod
			
			//compressedData.writeBytes ( feedArrayRow );
			
			var newOffset:int = this.compressedData.length;
			
			// Directory header
			//var addCentralRecord:ByteArray = new ByteArray;
			//addCentralRecord.endian = Endian.LITTLE_ENDIAN;
			centralDirectory.writeUnsignedInt ( 0x02014b50 );
			centralDirectory.writeShort ( 0x0014 );  //00  
			centralDirectory.writeShort ( 0x0014 );   //0a
			centralDirectory.writeShort ( 0x0000 );   
			centralDirectory.writeShort ( 0x0000 );    
			centralDirectory.writeUnsignedInt ( unixToDos() ); //0x00000000  changed for myDirMod
			centralDirectory.writeUnsignedInt ( 0 ); 
			centralDirectory.writeUnsignedInt ( 0 ); 
			centralDirectory.writeUnsignedInt ( 0 ); 
			centralDirectory.writeShort ( directoryName.length ); 
			centralDirectory.writeShort ( 0 ); 
			centralDirectory.writeShort ( 0 ); 
			centralDirectory.writeShort ( 0 ); 
			centralDirectory.writeShort ( 0 ); 
			centralDirectory.writeUnsignedInt ( 16 ); 
			centralDirectory.writeUnsignedInt ( this.oldOffset ); 
			
			this.oldOffset = newOffset;
			
			centralDirectory.writeUTFBytes (directoryName);
			
			//this.nbDirectory.push ( addCentralRecord );
			numEntries ++;
			//this.centralDirectory.writeBytes ( addCentralRecord );
			
		}
		
		/**
		 * Lets you add a file into a specific directory
		 * 
		 * @param pBytes File stream
		 * @param pDirectory Directory name
		 * @example
		 * This example shows how to add files into directories :
		 * <div class="listing">
		 * <pre>
		 * 
		 * myZip.addFile ( imageByteArray, "images/image.jpg" );
		 * myZip.addFile ( imageByteArray, "images/funk/image.jpg" );
		 * </pre>
		 * </div>
		 */	
		public function addFile ( pBytes:ByteArray, pDirectory:String ):void
			
		{
			
			pDirectory = pDirectory.split ('\\').join ('/');
			
			//var feedArrayRow:ByteArray = new ByteArray;
			//feedArrayRow.endian = Endian.LITTLE_ENDIAN;
			
			// Local File Header
			compressedData.writeUnsignedInt ( 0x04034b50 );
			compressedData.writeShort ( 0x0014 );
			compressedData.writeShort ( 0x0000 );
			
			// File is deflated 
			compressedData.writeShort ( this.compressionMethod == "gzip" ? 0x0008 : 0x0000 );
			
			compressedData.writeUnsignedInt ( unixToDos() ); 
			
			var uncompressedLength:Number = pBytes.length; 
			
			// CRC32 checksum 
			var crc:CRC32 = new CRC32;
			crc.generateCRC32 ( pBytes );
			//var compression:int = CRC32.generate( pBytes );
			var compression:int = crc.getCRC32();
			compressedData.writeUnsignedInt ( compression );
			
			var compressedLength:int = pBytes.length;
			
			// If GZIP compression
			if ( compressionMethod == "gzip" ){
				pBytes.compress();
				//var copy:ByteArray = new ByteArray;
				//copy.writeBytes ( pBytes, 0, pBytes.length - 4 );
				//var finalCopy:ByteArray = new ByteArray;
				//finalCopy.writeBytes ( copy, 2 );
				//pBytes = finalCopy;
				compressedLength = pBytes.length - 6;
				
				compressedData.writeUnsignedInt ( compressedLength );
				compressedData.writeUnsignedInt ( uncompressedLength ); 
				compressedData.writeShort ( pDirectory.length ); 
				compressedData.writeShort ( 0 ); 
				compressedData.writeUTFBytes ( pDirectory ); 
				//compressedData.writeBytes ( feedArrayRow );
				compressedData.writeBytes ( pBytes , 2, compressedLength);
			}else{
				compressedData.writeUnsignedInt ( compressedLength );
				compressedData.writeUnsignedInt ( uncompressedLength ); 
				compressedData.writeShort ( pDirectory.length ); 
				compressedData.writeShort ( 0 ); 
				compressedData.writeUTFBytes ( pDirectory ); 
				//compressedData.writeBytes ( feedArrayRow );
				compressedData.writeBytes ( pBytes );
			}
			
			
			
			//feedArrayRow.writeUnsignedInt ( compressedLength );
			//feedArrayRow.writeUnsignedInt ( uncompressedLength ); 
			//feedArrayRow.writeShort ( pDirectory.length ); 
			//feedArrayRow.writeShort ( 0 ); 
			//feedArrayRow.writeUTFBytes ( pDirectory ); 
			//feedArrayRow.writeBytes ( pBytes );  
			
			// Data Descriptor
			//feedArrayRow.writeUnsignedInt ( compression ); 
			//feedArrayRow.writeUnsignedInt ( compressedLength ); 
			//feedArrayRow.writeUnsignedInt ( uncompressedLength );
			
			//compressedData.writeBytes ( feedArrayRow );
			//compressedData.writeBytes ( pBytes );
			
			var newOffset:int = compressedData.length;
			
			// File header
			//var addCentralRecord:ByteArray = new ByteArray();
			//addCentralRecord.endian = Endian.LITTLE_ENDIAN;
			centralDirectory.writeUnsignedInt ( 0x02014b50 );
			centralDirectory.writeShort ( 0x0014 );    
			centralDirectory.writeShort ( 0x0014 );    
			centralDirectory.writeShort ( 0x0000 );  //general purpose flag  
			centralDirectory.writeShort ( this.compressionMethod == "gzip" ? 0x0008 : 0x0000 );    
			centralDirectory.writeUnsignedInt ( unixToDos() ); 
			centralDirectory.writeUnsignedInt ( compression ); 
			centralDirectory.writeUnsignedInt ( compressedLength ); 
			centralDirectory.writeUnsignedInt ( uncompressedLength ); 
			centralDirectory.writeShort(pDirectory.length); 
			centralDirectory.writeShort ( 0 );
			centralDirectory.writeShort ( 0 );
			centralDirectory.writeShort ( 0 );
			centralDirectory.writeShort ( 0 );
			centralDirectory.writeUnsignedInt( 32 ); 
			centralDirectory.writeUnsignedInt ( this.oldOffset );
			centralDirectory.writeUTFBytes  (pDirectory);  
			//this.centralDirectory.writeBytes ( addCentralRecord );
			//this.nbDirectory.push ( addCentralRecord );
			this.oldOffset = newOffset;
			numEntries ++;			
		}
		
		/**
		 * Lets you finalize and save the ZIP file and make it available for download
		 * 
		 * @param pMethod Can be se to Method.LOCAL, the saveZIP will return the ZIP ByteArray. When Method.REMOTE is passed, just specify the path to the create.php file
		 * @param pURL The url of the create.php file
		 * @param pDownload Lets you specify the way the ZIP is going to be available. Use Download.INLINE if you want the ZIP to be directly opened, use Download.ATTACHMENT if you want to make it available with a save-as dialog box
		 * @param pName The name of the ZIP, only available when Method.REMOTE is used
		 * @return The ByteArray ZIP when Method.LOCAL is used, otherwise the method returns null
		 * @example
		 * This example shows how to save the ZIP with a download dialog-box :
		 * <div class="listing">
		 * <pre>
		 * 
		 * myZIP.saveZIP ( Method.REMOTE, 'create.php', Download.ATTACHMENT, 'archive.zip' );
		 * </pre>
		 * </div>
		 */	
		public function saveZIP ( pMethod:String='local', pURL:String='', pDownload:String='inline', pName:String='archive.zip' ):ByteArray
			
		{
			compressedData.endian = Endian.LITTLE_ENDIAN;
			var cdlength:int = this.compressedData.length;
			compressedData.writeBytes ( this.centralDirectory );
			compressedData.writeUnsignedInt ( 0x06054b50 );
			compressedData.writeUnsignedInt ( 0x00000000 );
			compressedData.writeShort ( numEntries );
			compressedData.writeShort ( numEntries );
			compressedData.writeUnsignedInt ( this.centralDirectory.length );
			compressedData.writeUnsignedInt ( cdlength );
			compressedData.writeShort ( comment.length );
			var temp:ByteArray = compressedData;
			compressedData = new ByteArray();
			compressedData.endian = Endian.LITTLE_ENDIAN;
			centralDirectory = new ByteArray();
			return temp;
		}
		
		private function unixToDos():Number
		{
			var currentDate:Date = new Date();
			
			return ( (currentDate.getFullYear() - 1980) << 25) | ((currentDate.getMonth()+1) << 21) | (currentDate.getDate() << 16) | 
				(currentDate.getHours() << 11) | (currentDate.getMinutes() << 5) | (currentDate.getSeconds() >> 1);
			
		}
		public function numItems():int { return numEntries; }
		public function saveZip():ByteArray { return saveZIP(); }
		
	}
	
}