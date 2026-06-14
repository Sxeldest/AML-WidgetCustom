; =========================================================
; Game Engine Function: _ZN8CWeather19UpdateWeatherRegionEP7CVector
; Address            : 0x5CD548 - 0x5CD63C
; =========================================================

5CD548:  LDR             R1, =(TheCamera_ptr - 0x5CD552)
5CD54A:  VLDR            S6, =1000.0
5CD54E:  ADD             R1, PC; TheCamera_ptr
5CD550:  LDR             R1, [R1]; TheCamera
5CD552:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
5CD554:  ADD.W           R3, R2, #0x30 ; '0'
5CD558:  CMP             R2, #0
5CD55A:  IT EQ
5CD55C:  ADDEQ           R3, R1, #4
5CD55E:  CMP             R0, #0
5CD560:  IT NE
5CD562:  MOVNE           R3, R0
5CD564:  VLDR            S2, [R3]
5CD568:  VLDR            S0, [R3,#4]
5CD56C:  VCMPE.F32       S2, S6
5CD570:  VMRS            APSR_nzcv, FPSCR
5CD574:  ITTT GT
5CD576:  VLDRGT          S4, =910.0
5CD57A:  VCMPEGT.F32     S0, S4
5CD57E:  VMRSGT          APSR_nzcv, FPSCR
5CD582:  BLE             loc_5CD588
5CD584:  MOVS            R0, #3
5CD586:  B               loc_5CD632
5CD588:  VLDR            S4, =-850.0
5CD58C:  VCMPE.F32       S2, S4
5CD590:  VMRS            APSR_nzcv, FPSCR
5CD594:  BLE             loc_5CD5B2
5CD596:  VCMPE.F32       S2, S6
5CD59A:  VMRS            APSR_nzcv, FPSCR
5CD59E:  BGE             loc_5CD5B2
5CD5A0:  VLDR            S6, =1280.0
5CD5A4:  VCMPE.F32       S0, S6
5CD5A8:  VMRS            APSR_nzcv, FPSCR
5CD5AC:  BLE             loc_5CD5B2
5CD5AE:  MOVS            R0, #4
5CD5B0:  B               loc_5CD632
5CD5B2:  VLDR            S6, =1430.0
5CD5B6:  VCMPE.F32       S0, S6
5CD5BA:  VMRS            APSR_nzcv, FPSCR
5CD5BE:  ITTT LT
5CD5C0:  VLDRLT          S6, =-1430.0
5CD5C4:  VCMPELT.F32     S2, S6
5CD5C8:  VMRSLT          APSR_nzcv, FPSCR
5CD5CC:  BGE             loc_5CD5E0
5CD5CE:  VLDR            S6, =-580.0
5CD5D2:  VCMPE.F32       S0, S6
5CD5D6:  VMRS            APSR_nzcv, FPSCR
5CD5DA:  BLE             loc_5CD5E0
5CD5DC:  MOVS            R0, #2
5CD5DE:  B               loc_5CD632
5CD5E0:  VLDR            S6, =3000.0
5CD5E4:  MOVS            R1, #0
5CD5E6:  VLDR            S8, =250.0
5CD5EA:  MOVS            R2, #0
5CD5EC:  VCMPE.F32       S2, S6
5CD5F0:  VLDR            S10, =-3000.0
5CD5F4:  VMRS            APSR_nzcv, FPSCR
5CD5F8:  VCMPE.F32       S2, S8
5CD5FC:  MOV.W           R0, #0
5CD600:  IT LT
5CD602:  MOVLT           R1, #1
5CD604:  VMRS            APSR_nzcv, FPSCR
5CD608:  VCMPE.F32       S0, S10
5CD60C:  IT GT
5CD60E:  MOVGT           R2, #1
5CD610:  VMRS            APSR_nzcv, FPSCR
5CD614:  AND.W           R1, R1, R2
5CD618:  MOV.W           R2, #0
5CD61C:  VCMPE.F32       S0, S4
5CD620:  IT GT
5CD622:  MOVGT           R2, #1
5CD624:  VMRS            APSR_nzcv, FPSCR
5CD628:  AND.W           R1, R1, R2
5CD62C:  IT LT
5CD62E:  MOVLT           R0, #1
5CD630:  ANDS            R0, R1
5CD632:  LDR             R1, =(_ZN8CWeather13WeatherRegionE_ptr - 0x5CD638)
5CD634:  ADD             R1, PC; _ZN8CWeather13WeatherRegionE_ptr
5CD636:  LDR             R1, [R1]; CWeather::WeatherRegion ...
5CD638:  STRH            R0, [R1]; CWeather::WeatherRegion
5CD63A:  BX              LR
