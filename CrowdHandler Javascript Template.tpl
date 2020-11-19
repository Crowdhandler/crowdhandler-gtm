___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "CrowdHandler Javascript Template",
  "categories": ["SALES"],
  "brand": {
    "id": "brand_dummy",
    "displayName": "Javascript Include",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAACXBIWXMAAAbAAAAGwAFXKpbWAAADWElEQVRYhdWZT0hUQRzHvy2LIKiFXgoXdEGDNFE75B7CNtBAO0gpVBREbtap1UPQTRZvUQd3O2Wtp6A6WHhIoYSe0WHpULv98WKwCiueFHWFoIvxG+e93ps3b923+3xuX1jYN/Nm5rO/mfn9fjN7aGdnB3blD8frAQT5pw1Aq0UXKQBJAAp90rHQkt2xbAH6w3ECGgHQZ/tX7WoawHg6FlIcBeRgEQBnCwQTNU/95QOaE9Afjh/hYMMOgYmKctAN24AcTsmxvpwSrdOgFaTHAo4W/pILcOBjLPExTTJZkFuO4A67AKfXJoB60ZIGC+qm1W048DEVzqBJnOKIS9NqpVbOoEmbYu5KPhwgnF7nVBekt2Bkz2buSWNhFtzLelXlZQg0HkNTbY2hPPFrFYnFVUMZvWd4R6hX5auugK+mUnvOrGWRWd82WdHLH0aswAaDJzEYbEZleZmpfhjtWFnfxtjrBN59W2ZlL+72Gt7xh+NSwIGO4xjuadeeo7NfMT77Rf8KMSkeHvhNsZWs9TJ8gXUig1NVW12BJ7e6MNDRaPlOgeojNi/PSAwiy00MdbHBRWV//2Elemgq2+LlDisoBRztD5jg3n9fxr3nHzUQWkMTQ93sO5UvrKztG6AhxNDA/aeN0yVZH2xBX4m9Zd/3yXqkNq/omMVdSJtgUvkhbZ0PmNifKl+NeflI1OoVy0RXQruzGAuJu9quTNlMk88ImFnPFjVAsZKmW6Uk0xQvZNbQ0XDU0qJ2dfXxjLQF+U1xM8pkBhTcxfmWOuYXC12HVqEu0CDfPKI8POW27JAc8qPrndLGZIXRS4GCwPNUysPPrZrIv019XjQ0726pw8z9i8xlkDVpp4/0nMLDa524GWxmdVU5wmERSnp5Bn1D38fYVIJNgT6anKittnQZVPcpchlnIq+cBlQ8HNAgWm+3n84xJ52vJpWf+xFRFA+/jpgWa2iz9D54w8JcNsfAVHfn2ZwpFDqgaWIrKmGlH6HmgaqcTlj1ZxLFwauNYjWfjoVYllXyZxINkJ+iogeG9E9R/aWS7FycsmjohlKW52JVJX31gd2p3uDHgE2X4aQ3XNJ0Kx0LUfird2m6U9xySVnlgV9gpmMh6Zlc1f99BSyqZC/RJaDu/A0B4C8q6HFpoftk2wAAAABJRU5ErkJggg\u003d\u003d"
  },
  "description": "During periods of heavy traffic, let our queue management solution help safeguard your website from crashing, look after your customers and protect your sales.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "apikey",
    "displayName": "Public API Key",
    "simpleValueType": true,
    "help": "Enter your public API key here. Be sure to copy it exactly.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "STRING_LENGTH",
        "args": [
          64,
          64
        ]
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const log = require('logToConsole');
const injectScript = require('injectScript');
const queryPermission = require('queryPermission');

const apikey=data.apikey;

const url = 'https://wait.crowdhandler.com/js/latest/main.js?id='+apikey;

const onSuccess = () => {
  data.gtmOnSuccess();
};

const onFailure = () => {
  data.gtmOnFailure();
};

if (queryPermission('inject_script', url)) {
  injectScript(url, onSuccess, onFailure);
} else {
  data.gtmOnFailure();
}


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
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://wait.crowdhandler.com/"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 19/11/2020, 14:56:53


