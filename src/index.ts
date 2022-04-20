import { registerPlugin } from '@capacitor/core';
import type { CapacitorQRScannerPlugin } from './definitions';

const CapacitorQRScanner = registerPlugin<CapacitorQRScannerPlugin>('CapacitorQRScanner', {
});

export * from './definitions';
export { CapacitorQRScanner };
