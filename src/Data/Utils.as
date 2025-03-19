package Data
{
	import CONTROL.pLoading;
	
	import flash.display.Sprite;
	
	import mx.controls.Alert;
	import mx.core.Application;
	import mx.events.CloseEvent;
	import mx.managers.CursorManager;
	import mx.managers.PopUpManager;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.soap.WebService;
	
	public class Utils
	{
		public var strWsdl:String;
		public var strWsAdmin:String;
		public var strWsCat:String;
		public var strWsMS:String;
		public var strWsMail:String;
		public var strWsRep:String;
		public var xmlResult:XML = new XML();
		public var loading:pLoading;
		
		[Embed(source='assets/Error.png')]
		public var iError:Class;
		
		[Embed(source='assets/Info.png')]
		public var iInfo:Class;
		
		[Embed(source="assets/Alerta.png")]
		public var iAlert:Class;  
		
		[Embed(source="assets/Pregunta.png")]
		public var iQuest:Class;  
	
		public var iExito:Class;

		public function Utils(){
			var xmlAdmin:XMLList = new XMLList();
			var xmlCat:XMLList = new XMLList();
			var xmlMail:XMLList = new XMLList();
			var xmlMS:XMLList = new XMLList();
			var xmlRep:XMLList = new XMLList();
			var xmlWs:XMLList = new XMLList();
			
			xmlResult = Application.application.wsStr;
			xmlAdmin = xmlResult.child("wsdlAdmin");
			xmlCat = xmlResult.child("wsdlCat");
			xmlMail = xmlResult.child("wsdlMail");
			xmlMS = xmlResult.child("wsdlServ");
			xmlRep = xmlResult.child("wsdlRep");
			xmlWs = xmlResult.child("wsdl");
			strWsAdmin = xmlAdmin.toString();
			strWsCat = xmlCat.toString();
			strWsMail = xmlMail.toString();
			strWsMS = xmlMS.toString();
			strWsRep = xmlRep.toString();
			strWsdl = xmlWs.toString();
		}
		
		public function initWs(ws:WebService):WebService{			
			ws.wsdl = this.strWsdl;
			ws.loadWSDL();	
			ws.addEventListener(FaultEvent.FAULT, wsFault);						
			return ws;		
		}
		
		public function initWsAdmin(ws:WebService):WebService{			
			ws.wsdl = this.strWsAdmin;
			ws.loadWSDL();
			ws.addEventListener(FaultEvent.FAULT, wsFault);						
			return ws;		
		}
		
		public function initWsCat(ws:WebService):WebService{			
			ws.wsdl = this.strWsCat;
			ws.loadWSDL();	
			ws.addEventListener(FaultEvent.FAULT, wsFault);						
			return ws;	
		}
		
		public function initWsMail(ws:WebService):WebService{
			ws.wsdl = this.strWsMail;
			ws.loadWSDL();	
			ws.addEventListener(FaultEvent.FAULT, wsFault);						
			return ws;		
		} 
		
		public function initWsMS(ws:WebService):WebService{			
			ws.wsdl = this.strWsMS;
			ws.loadWSDL();	
			ws.addEventListener(FaultEvent.FAULT, wsFault);							
			return ws;
		}
		
		public function initWsRep(ws:WebService):WebService{			
			ws.wsdl = this.strWsRep;
			ws.loadWSDL();	
			ws.addEventListener(FaultEvent.FAULT, wsFault);						
			return ws;		
		}
		
		public function ejecutaWsMethod(ws:WebService, callback:Function):WebService{												
			var listener:Function = function(event:ResultEvent):void{								
				ws.removeEventListener(ResultEvent.RESULT, listener);
				try{
					xmlResult = new XML(event.result.toString());
				}catch(err:Error){
					Alert.okLabel = "Aceptar";
					Alert.show(err.toString());
				}					
					
				callback(event);
				ws.removeEventListener(ResultEvent.RESULT, listener);		
			};
			ws.addEventListener(ResultEvent.RESULT, listener);															
			return ws;						
		}
		
		public function mostrarMensaje(texto:String, titulo:String, flag:uint, parent:Sprite, callback:Function, iconClass:Class, defaultButton:uint = 4):void{
			var ind:int;
			var cadena:String;
			var mensaje:String;
			var arr:Array = texto.split("\n\n");
			var maxLong:int = 0;
			
			/*for (var i:int = 0; i < arr.length; i++){
				ind = 0;
				mensaje = "";
				
				while(ind < arr[i].toString().length){					
					cadena = "";	
					cadena += arr[i].toString().substr(ind, 50)
					
					if(cadena.length > maxLong)
			        	maxLong = cadena.length;
			        	
			        mensaje += cadena;
			        
			        ind += 50;
				}
			}*/
			
			for (var i:int = 0; i < arr.length; i++){
				if(arr[i].toString().length > maxLong)
		        	maxLong = arr[i].toString().length;
			}
			
			if(maxLong > 80)
				maxLong = 10;			
			else{
				if(titulo.length > maxLong){
					if((titulo.length - maxLong) > 10)
						maxLong = 0;
					else
						maxLong = 10;
				}
				else
					maxLong = (maxLong - titulo.length) + 10;
			}
							
			for (var j:int = 0; j < maxLong; j++){
			    titulo += " ";
			}

			var listener:Function = function(event:CloseEvent):void{
				callback(event);
			};
			Alert.show(texto, titulo, flag, parent, listener, iconClass, defaultButton);
		}
		
		public function closeWs(ws:WebService):WebService{
			ws.logout();
			ws.disconnect();
			ws.removeEventListener(FaultEvent.FAULT, wsFault);
			PopUpManager.removePopUp(loading);
			return ws;			
		}
		
		public function wsFault(event:FaultEvent):void{			
			CursorManager.removeAllCursors();	
			PopUpManager.removePopUp(loading);									
			showMsg("Ocurrio un error de comunicación con el Webservice");						
		}
		
		public function showMsg(key:String):void{				
			Alert.okLabel = "Aceptar";
			Alert.show(key,"Error",4,null,null,iError,1);						
		}
		
		public function showQuest(key:String):Alert{
			var msg:String
			var al:Alert;				
			Alert.okLabel = "Aceptar";					
			al = Alert.show(key,'Atención',3,null,null,iQuest,1);			
			return al;			
		}
		
		public function showExito(key:String):void{		
			Alert.okLabel = "Aceptar";			
			Alert.show(key,"Mensaje",4,null,null,iExito,1);
		}
		
		public function showInfo(key:String):void{			
			Alert.okLabel = "Aceptar";
			Alert.show(key,"Información",4,null,null,iInfo,1);
		}
		
		public function sCursor():void{
			CursorManager.removeAllCursors();
			CursorManager.setBusyCursor();
		}	
		
		public function rCursor():void{
			CursorManager.removeAllCursors();
			CursorManager.removeBusyCursor();
		}
	}
}