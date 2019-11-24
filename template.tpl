___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "ID Auto - Debug or Live",
  "description": "Select the identifier of the main account or debug based on host conditions and preview\nYou sould active Debug Mode variable and create constants ID to select",
  "categories": ["UTILITY"],
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "id_principal",
    "displayName": "Primary ID of the destination account",
    "simpleValueType": true,
    "canBeEmptyString": false,
    "help": "Select the primary ID of your account destination",
    "alwaysInSummary": true
  },
  {
    "type": "TEXT",
    "name": "id_debug",
    "displayName": "Debug ID of the destination account",
    "simpleValueType": true,
    "valueValidators": [],
    "alwaysInSummary": true,
    "help": "Select the debug ID of your account destination"
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "listado_host",
    "displayName": "Host list of LIVE version",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Host",
        "name": "host",
        "type": "TEXT"
      }
    ],
    "help": "Add all the host in Live version wich should be use the Primary ID",
    "alwaysInSummary": true,
    "newRowButtonText": "Add Host"
  },
  {
    "type": "CHECKBOX",
    "name": "debug_activo",
    "checkboxText": "Active in Debug Mode?",
    "simpleValueType": true
  },
  {
    "type": "GROUP",
    "name": "configuracion_interna",
    "displayName": "Internal configuration",
    "subParams": [
      {
        "type": "TEXT",
        "name": "debug_mode",
        "displayName": "Debug Mode",
        "simpleValueType": true,
        "alwaysInSummary": true,
        "help": "Select Debug Mode",
        "defaultValue": "{{Debug Mode}}"
      },
      {
        "type": "TEXT",
        "name": "url_host",
        "displayName": "Select Page Host",
        "simpleValueType": true,
        "alwaysInSummary": true,
        "defaultValue": "{{Page Hostname}}"
      }
    ],
    "groupStyle": "ZIPPY_CLOSED",
    "help": "Acitve Debug Mode and Page Host"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Introduzca aquí su código de plantilla.
const log = require('logToConsole');
var res=data.id_principal;
if(data.listado_host){
 for(var i=0;i<data.listado_host.length ;i++){
   if(data.listado_host[i].host==data.url_host){
   	res=data.id_debug;
   }
 }
}
log(data.url_host);
if(data.debug_activo && data.debug_mode){ 
  res=data.id_debug;
}
return res;


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 24/11/2019 4:15:30


