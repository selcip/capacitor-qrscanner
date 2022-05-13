
  Pod::Spec.new do |s|
    s.name = 'FabricadeaplicativosCapacitorQrscanner'
    s.version = '0.0.1'
    s.summary = 'QR Scanner for Capacitor'
    s.license = 'MIT'
    s.homepage = 'https://bitbucket.org/golbros/capacitor-qrscanner'
    s.author = 'Marcel Golob <marcel@golbros.de>'
    s.source = { :git => 'https://bitbucket.org/golbros/capacitor-qrscanner', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '12.0'
    s.dependency 'Capacitor'
  end
