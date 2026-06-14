; =========================================================
; Game Engine Function: _ZN11CPopulation27IsCorrectTimeOfDayForEffectEPK9C2dEffect
; Address            : 0x4D1310 - 0x4D1340
; =========================================================

4D1310:  MOV             R1, R0
4D1312:  MOVS            R0, #1
4D1314:  LDRB.W          R1, [R1,#0x34]
4D1318:  CMP             R1, #8
4D131A:  BHI             locret_4D133E
4D131C:  LSL.W           R1, R0, R1
4D1320:  MOVW            R2, #0x107
4D1324:  TST             R1, R2
4D1326:  IT EQ
4D1328:  BXEQ            LR
4D132A:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x4D1330)
4D132C:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
4D132E:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
4D1330:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
4D1332:  SUBS            R0, #9
4D1334:  UXTB            R1, R0
4D1336:  MOVS            R0, #0
4D1338:  CMP             R1, #0xB
4D133A:  IT CC
4D133C:  MOVCC           R0, #1
4D133E:  BX              LR
