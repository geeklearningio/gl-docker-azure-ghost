var nconf = require('nconf');
var fs = require('fs');

nconf.overrides({
    'database': {
        'connection' : {
            'ssl' : {
                'ca' : fs.readFileSync('./BaltimoreCyberTrustRoot.crt')
            }
        }
    }
});

require('./index.core.js');