; =========================================================
; Game Engine Function: _ZN8CVehicle22GetVehicleLightsStatusEv
; Address            : 0x5901C0 - 0x59029C
; =========================================================

5901C0:  PUSH            {R4,R5,R7,LR}
5901C2:  ADD             R7, SP, #8
5901C4:  MOV             R4, R0
5901C6:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x5901CC)
5901C8:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
5901CA:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
5901CC:  LDRB            R0, [R0]; this
5901CE:  CMP             R0, #0x14
5901D0:  B               loc_590240
5901D2:  BNE             loc_5901E8
5901D4:  LDR             R0, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x5901DC)
5901D6:  LDRH            R1, [R4,#0x24]
5901D8:  ADD             R0, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
5901DA:  AND.W           R1, R1, #0x3F ; '?'
5901DE:  LDR             R0, [R0]; CClock::ms_nGameClockMinutes ...
5901E0:  LDRB            R0, [R0]; CClock::ms_nGameClockMinutes
5901E2:  CMP             R0, R1
5901E4:  BLS             loc_590202
5901E6:  B               loc_590240
5901E8:  CMP             R0, #6
5901EA:  BCC             loc_590240
5901EC:  BNE             loc_590202
5901EE:  LDR             R0, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x5901F4)
5901F0:  ADD             R0, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
5901F2:  LDR             R1, [R0]; CClock::ms_nGameClockMinutes ...
5901F4:  LDRH            R0, [R4,#0x24]
5901F6:  LDRB            R1, [R1]; CClock::ms_nGameClockMinutes
5901F8:  AND.W           R2, R0, #0x3F ; '?'
5901FC:  CMP             R1, R2
5901FE:  BCS             loc_590204
590200:  B               loc_590240
590202:  LDRH            R0, [R4,#0x24]
590204:  VMOV            S0, R0
590208:  VLDR            S2, =50000.0
59020C:  LDR             R0, =(_ZN8CWeather9FoggynessE_ptr - 0x590216)
59020E:  VCVT.F32.U32    S0, S0
590212:  ADD             R0, PC; _ZN8CWeather9FoggynessE_ptr
590214:  LDR             R0, [R0]; CWeather::Foggyness ...
590216:  VDIV.F32        S0, S0, S2
59021A:  VLDR            S2, [R0]
59021E:  VCMPE.F32       S2, S0
590222:  VMRS            APSR_nzcv, FPSCR
590226:  BGT             loc_590240
590228:  LDR             R0, =(_ZN8CWeather8WetRoadsE_ptr - 0x59022E)
59022A:  ADD             R0, PC; _ZN8CWeather8WetRoadsE_ptr
59022C:  LDR             R0, [R0]; CWeather::WetRoads ...
59022E:  VLDR            S2, [R0]
590232:  VCMPE.F32       S2, S0
590236:  VMRS            APSR_nzcv, FPSCR
59023A:  BGT             loc_590240
59023C:  MOVS            R5, #0
59023E:  B               loc_590242
590240:  MOVS            R5, #1
590242:  VLDR            S0, =0.05
590246:  VLDR            S2, [R4,#0x130]
59024A:  VCMPE.F32       S2, S0
59024E:  VMRS            APSR_nzcv, FPSCR
590252:  BGE             loc_590264
590254:  BLX             j__ZN10CCullZones9CamNoRainEv; CCullZones::CamNoRain(void)
590258:  CMP             R5, #0
59025A:  IT EQ
59025C:  CMPEQ           R0, #0
59025E:  BNE             loc_590266
590260:  MOVS            R0, #0
590262:  POP             {R4,R5,R7,PC}
590264:  CBZ             R5, loc_590298
590266:  LDR.W           R0, [R4,#0x464]
59026A:  CBZ             R0, loc_590294
59026C:  LDR.W           R1, [R0,#0x59C]
590270:  SUBS            R1, #7
590272:  CMP             R1, #9
590274:  BHI             loc_590294
590276:  LDR             R1, =(_ZN9CPopCycle24m_bCurrentZoneIsGangAreaE_ptr - 0x590282)
590278:  MOVS            R2, #0
59027A:  LDRB.W          R0, [R0,#0x24]
59027E:  ADD             R1, PC; _ZN9CPopCycle24m_bCurrentZoneIsGangAreaE_ptr
590280:  LDR             R1, [R1]; CPopCycle::m_bCurrentZoneIsGangArea ...
590282:  LDRB            R1, [R1]; CPopCycle::m_bCurrentZoneIsGangArea
590284:  CMP             R1, #0
590286:  IT EQ
590288:  MOVEQ           R2, #1
59028A:  ORN.W           R0, R2, R0
59028E:  AND.W           R0, R0, #1
590292:  POP             {R4,R5,R7,PC}
590294:  MOVS            R0, #1
590296:  POP             {R4,R5,R7,PC}
590298:  MOVS            R0, #0
59029A:  POP             {R4,R5,R7,PC}
