var DATASTR = ['lorem','ipsum','dolor','sit', 'amet', 'consectetur','adipiscing','elit','labore','magna','aliqua','sed','ut','perspiciatis','unde','omnis','iste','natus','stract','sit','voluptatem','accusantium','doloremque','laudantium','totam','rem','aperiam','officia','deserunt','mollit','anim']


function genStr(chars){
    var text = "";
    var lastPos = -1;
    for( var i=0; i < chars; i++ ){
    	var random = Math.floor(Math.random() * DATASTR.length);
    	var pos    = random == lastPos ?  Math.floor(Math.random() * DATASTR.length) : random;
    	lastPos    = pos;
        
        text += DATASTR[pos]+' ';
    }
    return $.trim(capitalizeFirstLetter(text));
}

function genNum(limit){
    return Math.floor(Math.random() * limit);
}
var DATA = {
	get:function(p){
		
	//	console.log(p);

		var rtn = "";
		switch(p.type){
			case 'date':
				/*var date = '0'+(genNum(8)+1)+'-0'+(genNum(8)+1)+'-201'+genNum(5);
				var time = genNum(23)+':'+genNum(59);
				console.log(p.field.proprieties.format.value)
				if(p.field.proprieties.format){
					
					//if()

				}*/
				//console.log(p);
				rtn='';
				//rtn = '0'+(genNum(8)+1)+'-0'+(genNum(8)+1)+'-201'+genNum(5);
			break;

			case 'number':
				rtn = genNum(1000);
				//rtn = '123456789';
			break;

			case 'password':
				rtn = '******';
			break;

			case 'email':
				rtn = chance.email({domain: 'example.com'});
				//rtn = 'user@server.com';
			break;

			case 'link':
				rtn = chance.url();
				//rtn = 'http://www.nosi.cv';
			break;
			
			case 'textarea':
				rtn = genStr(15);
				//rtn = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";
			break;

			case 'checkbox':
				rtn = '1';
			break;

			case 'radio':
				rtn = '1';
			break;

			case 'color':
				rtn =""
				var format = p.field && p.field.parent.type != 'table' && p.field.GET.format ? p.field.GET.format() : p.format;
				if(format){
					switch(format){
						case 'hex':
							rtn = '#'+'0123456789abcdef'.split('').map(function(v,i,a){return i>5 ? null : a[Math.floor(Math.random()*16)] }).join('');
						break;
						
						case 'rgba':
							rtn = 'rgba(' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ',0.6)';
						break;

						case 'rgb':
							rtn = 'rgb(' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ')';
						break;
					}
				}else{
					rtn = Math.floor(Math.random() * 9 + 1);
				}
				//console.log(rtn)
			break;

			case 'upload':
				rtn = '';
			break;

			case 'texteditor':
				rtn = genStr(20);
			break;

			case 'text':
				rtn = genStr(5);
			break;

			case 'plaintext':
				var chars = 15;
				if(p && p.field ){
					var container = p.field.parent;
					switch(container.GET.type()){
						case 'formlist':
							chars = 5;
						break;
					}
				}
				rtn = genStr(chars);
			break;

			case 'hidden':
				rtn = 1;
			break;

			default:
				rtn = '';
			break;
		}
		return rtn;
	}
}