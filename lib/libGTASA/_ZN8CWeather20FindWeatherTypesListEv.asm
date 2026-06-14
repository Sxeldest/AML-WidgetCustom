; =========================================================
; Game Engine Function: _ZN8CWeather20FindWeatherTypesListEv
; Address            : 0x5CD66C - 0x5CD68E
; =========================================================

5CD66C:  LDR             R0, =(_ZN8CWeather13WeatherRegionE_ptr - 0x5CD672)
5CD66E:  ADD             R0, PC; _ZN8CWeather13WeatherRegionE_ptr
5CD670:  LDR             R0, [R0]; CWeather::WeatherRegion ...
5CD672:  LDRSH.W         R0, [R0]; CWeather::WeatherRegion
5CD676:  SUBS            R0, #1
5CD678:  CMP             R0, #3
5CD67A:  BHI             loc_5CD686
5CD67C:  LDR             R1, =(off_66E390 - 0x5CD682)
5CD67E:  ADD             R1, PC; off_66E390
5CD680:  LDR.W           R0, [R1,R0,LSL#2]
5CD684:  BX              LR
5CD686:  LDR             R0, =(WeatherTypesListDefault_ptr - 0x5CD68C)
5CD688:  ADD             R0, PC; WeatherTypesListDefault_ptr
5CD68A:  LDR             R0, [R0]; WeatherTypesListDefault
5CD68C:  BX              LR
