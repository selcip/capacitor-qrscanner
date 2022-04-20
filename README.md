## General

Current version works with iOS and Android
There are no styling options or camera settings now.

## Installation

```
npm i @fabricadeaplicativos/capacitor-qrscanner
```

In your specific view:

For Capacitor v2 (version before v1.1.0)

```
import { Plugins } from '@capacitor/core';
const { CapacitorQRScanner } = Plugins;
```

For Capacitor v3 (version >= v1.1.7)

```
const { CapacitorQRScanner } = '@fabricadeaplicativos/capacitor-qrscanner';
```

Then just call the method:

```
let result = await CapacitorQRScanner.scan();
```

Access the found code `result.code`

## Bugs / Feedback

If you have problems or questions:  
https://bitbucket.org/golbros/capacitor-qrscanner/issues

## Support

If you like the plugin and want to support me:
https://buymeacoffee.com/johnbraum
