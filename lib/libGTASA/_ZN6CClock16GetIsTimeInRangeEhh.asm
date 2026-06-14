; =========================================================
; Game Engine Function: _ZN6CClock16GetIsTimeInRangeEhh
; Address            : 0x3E3344 - 0x3E3372
; =========================================================

3E3344:  MOV             R2, R0
3E3346:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x3E334E)
3E3348:  CMP             R2, R1
3E334A:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
3E334C:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
3E334E:  LDRB            R3, [R0]; CClock::ms_nGameClockHours
3E3350:  BLS             loc_3E3362
3E3352:  MOVS            R0, #1
3E3354:  CMP             R3, R2
3E3356:  IT CS
3E3358:  BXCS            LR
3E335A:  CMP             R3, R1
3E335C:  IT CS
3E335E:  MOVCS           R0, #0
3E3360:  BX              LR
3E3362:  CMP             R3, R2
3E3364:  BCC             loc_3E336E
3E3366:  CMP             R3, R1
3E3368:  ITT CC
3E336A:  MOVCC           R0, #1
3E336C:  BXCC            LR
3E336E:  MOVS            R0, #0
3E3370:  BX              LR
