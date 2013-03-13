class nova::cinder() {
  nova_config { 'volume_api_class': value => 'nova.volume.cinder.API' } 
  # TODO: for nova::cinder to work, enabled_apis must be a: set and b: missing osapi_volume
  # TODO: but other things could potentially have settings for it so this setting here is not ideal 
  nova_config { 'enabled_apis': value => 'ec2,osapi_compute,metadata' }
}
