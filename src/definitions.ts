declare global {
  interface PluginRegistry {
    CapacitorQRScanner: CapacitorQRScannerPlugin;
  }
}

export interface CapacitorQRScannerPlugin {
  scan(): Promise<any>;
}
