; =========================================================
; Game Engine Function: _ZN13cTransmission25CalculateGearForSimpleCarEfRh
; Address            : 0x5815D0 - 0x581618
; =========================================================

5815D0:  STR             R1, [R0,#0x64]
5815D2:  VMOV            S0, R1
5815D6:  LDRB            R3, [R2]
5815D8:  ADD.W           R1, R3, R3,LSL#1
5815DC:  ADD.W           R1, R0, R1,LSL#2
5815E0:  VLDR            S2, [R1,#4]
5815E4:  VCMPE.F32       S2, S0
5815E8:  VMRS            APSR_nzcv, FPSCR
5815EC:  BGE             loc_5815FC
5815EE:  LDRB.W          R0, [R0,#0x4A]
5815F2:  CMP             R3, R0
5815F4:  IT CC
5815F6:  ADDCC           R0, R3, #1
5815F8:  STRB            R0, [R2]
5815FA:  BX              LR
5815FC:  VLDR            S2, [R1,#8]
581600:  VCMPE.F32       S2, S0
581604:  VMRS            APSR_nzcv, FPSCR
581608:  IT LE
58160A:  BXLE            LR
58160C:  CMP             R3, #0
58160E:  IT NE
581610:  ADDNE           R3, #0xFF
581612:  MOV             R0, R3
581614:  STRB            R0, [R2]
581616:  BX              LR
