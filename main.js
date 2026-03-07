const path = require('path');
require('icloud-windows-base').run({
  appName: 'iCloud Numbers',
  protocol: 'icloud-numbers',
  icloudUrl: 'https://www.icloud.com/numbers',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});
