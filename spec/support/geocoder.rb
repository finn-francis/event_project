Geocoder.configure(:lookup => :test)

Geocoder::Lookup::Test.add_stub(
  "United Kingdom, Hoddesdon, EN11 8BX", [
    {
      'latitude'     => 51.7600069999999,
      'longitude'    => -0.015042,
      'address'      => 'United Kingdom, Hoddesdon, EN11 8BX',
      'state'        => 'Hoddesdon',
      'state_code'   => '',
      'country'      => 'United Kingdom',
      'country_code' => ''
    }
  ]
)

