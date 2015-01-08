// index.js

var REST_DATA = 'api/todolist';
var REST_ENV = 'api/dbinfo';
var KEY_ENTER = 13;
var defaultItems = [
	{name: '1. SQLDB is an IBM DB2 Service'},
	{name: '2. Use com.ibm.db2.jcc.DB2Driver to access DB2'},
	{name: '3. Service credential is retrieved from VCAP_SERVICES environment variable'},
	{name: '4. Click the top-left Detail button to view service credential'},
	{name: '5. This sample defines some REST API to access SQLDB service'},
	{name: '6. Click the Add button to add a record'},
	{name: '7. Click the Delete button on each row to delete that record'},
	{name: '8. Click on a row to edit the record'},
	{name: '9. When focus is blurred the record will be updated'}
];

function loadItems(){
	xhrGet(REST_DATA, function(data){
		document.getElementById("loading").innerHTML = "";
		var receivedItems = data.body || [];
		var items = [];
		var i;
		// Make sure the received items have correct format
		for(i = 0; i < receivedItems.length; ++i){
			var item = receivedItems[i];
			if(item && 'id' in item && 'name' in item){
				items.push(item);
			}
		}
		var hasItems = items.length;
		if(!hasItems){
			items = defaultItems;
		}
		for(i = 0; i < items.length; ++i){
			addItem(items[i], !hasItems);
		}
		if(!hasItems){
			var table = document.getElementById('notes');
			var nodes = [];
			for(i = 0; i < table.rows.length; ++i){
				nodes.push(table.rows[i].firstChild.firstChild);
			}
			function save(){
				if(nodes.length){
					saveChange(nodes.shift(), save);
				}
			}
			save();
		}
	}, function(err){
		console.error(err);
		document.getElementById("loading").innerHTML = "ERROR";
	});
}

function addItem(item, isNew){
	var row = document.createElement('tr');
	var id = item && item.id;
	if(id){
		row.setAttribute('data-id', id);
	}
	row.innerHTML = "<td style='width:90%'><textarea onchange='saveChange(this)' onkeydown='onKey(event)'></textarea></td>" +
		"<td class='deleteBtn' onclick='deleteItem(this)' title='delete me'></td>";
	var table = document.getElementById('notes');
	console.log(table.lastChild);
	table.lastChild.appendChild(row);
	var textarea = row.firstChild.firstChild;
	if(item){
		textarea.value = item.name;
	}
	row.isNew = !item || isNew;
	textarea.focus();
}

function deleteItem(deleteBtnNode){
	var row = deleteBtnNode.parentNode;
	row.parentNode.removeChild(row);
	xhrDelete(REST_DATA + '?id=' + row.getAttribute('data-id'), function(){
	}, function(err){
		console.error(err);
	});
}

function onKey(evt){
	if(evt.keyCode == KEY_ENTER && !evt.shiftKey){
		evt.stopPropagation();
		evt.preventDefault();
		var row = evt.target.parentNode.parentNode;
		if(row.nextSibling){
			row.nextSibling.firstChild.firstChild.focus();
		}else{
			addItem();
		}
	}
}

function saveChange(contentNode, callback){
	var row = contentNode.parentNode.parentNode;
	var data = {
		name: contentNode.value
	};
	if(row.isNew){
		delete row.isNew;
		xhrPost(REST_DATA, data, function(item){
			row.setAttribute('data-id', item.id);
			callback && callback();
		}, function(err){
			console.error(err);
		});
	}else{
		data.id = row.getAttribute('data-id');
		xhrPut(REST_DATA, data, function(){
			console.log('updated: ', data);
		}, function(err){
			console.error(err);
		});
	}
}

function toggleServiceInfo(){
	var node = document.getElementById('dbserviceinfo');
	node.style.display = node.style.display == 'none' ? '' : 'none';
}

function updateServiceInfo(){
	xhrGet(REST_ENV, function(dbinfo){

				console.log(dbinfo);
				document.getElementById('envServiceName').innerHTML = dbinfo.name;
				document.getElementById('envDbName').innerHTML = dbinfo.db;
				document.getElementById('envHost').innerHTML = dbinfo.host;
				document.getElementById('envPort').innerHTML = dbinfo.port;
				document.getElementById('envUrl').innerHTML = dbinfo.jdbcurl;


	}, function(err){
		console.error(err);
	});
}

updateServiceInfo();
loadItems();

