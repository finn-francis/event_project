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

Geocoder::Lookup::Test.add_stub(
  "United Kingdom, Hoddesdon", [
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

Geocoder::Lookup::Test.add_stub(
  "United Kingdom, Presteigne, LD8 2HE", [
    {
      'latitude'     => 52.2742497,
      'longitude'    => -3.0051526,
      'address'      => 'Presteign, LD8 2HE, UK',
      'state'        => 'Wales',
      'state_code'   => '',
      'country'      => 'United Kingdom',
      'country_code' => ''
    }
  ]
)

