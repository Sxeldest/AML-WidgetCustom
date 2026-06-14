; =========================================================
; Game Engine Function: _ZN17CWidgetPlayerInfo10IsHeldDownEv
; Address            : 0x2BE31C - 0x2BE340
; =========================================================

2BE31C:  PUSH            {R4,R6,R7,LR}
2BE31E:  ADD             R7, SP, #8
2BE320:  MOV             R4, R0
2BE322:  MOVS            R0, #0xE
2BE324:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2BE328:  VLDR            S0, [R4,#0x44]
2BE32C:  MOVS            R0, #0
2BE32E:  VLDR            S2, [R4,#0x8C]
2BE332:  VCMPE.F32       S0, S2
2BE336:  VMRS            APSR_nzcv, FPSCR
2BE33A:  IT GE
2BE33C:  MOVGE           R0, #1
2BE33E:  POP             {R4,R6,R7,PC}
