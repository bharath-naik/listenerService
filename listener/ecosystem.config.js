module.exports = {
  apps : [{
    script: './backend.js',
    name     : 'edgeBackend',
    autorestart: true,
    watch: true
  }, {
    script: './edgePushinReceiver.js',
    name :'EdgePushpin',
    autorestart: true,
    watch: true
  }]

};
