resource_manifest_version {
	'44febabe-d386-4d18-afbe-5e627f4af937',
	'77731fab-63ca-442c-a67b-abc70f28dfa5'
}

ui_page 'html/ui.html'

files {
	'stream/sarabun.gfx',
	'html/ui.html',
	'html/js/materialize.js',
	'html/js/app.js',
	'html/js/config.js',
	'html/css/materialize.css',

}

-- Add a server script
server_script {
	"@mysql-async/lib/MySQL.lua",
	'@es_extended/locale.lua',
	"config.lua",
	'server/main.lua',
}




-- Add a client script 
client_script {
	'@es_extended/locale.lua',
	"config.lua",
	'client/main.lua',
	'client/npc.lua'
}

server_scripts { '@mysql-async/lib/MySQL.lua' }