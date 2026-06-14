; =========================================================
; Game Engine Function: _ZN6CRadar15SetBlipFriendlyEih
; Address            : 0x442D14 - 0x442D68
; =========================================================

442D14:  PUSH            {R7,LR}
442D16:  MOV             R7, SP
442D18:  ADDS            R2, R0, #1
442D1A:  BEQ             locret_442D66
442D1C:  LDR.W           R12, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442D2C)
442D20:  UXTH.W          LR, R0
442D24:  MOV.W           R3, LR,LSL#2
442D28:  ADD             R12, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442D2A:  UXTAH.W         R3, R3, R0
442D2E:  LDR.W           R2, [R12]; CRadar::ms_RadarTrace ...
442D32:  ADD.W           R2, R2, R3,LSL#3
442D36:  LDRH            R2, [R2,#0x14]
442D38:  CMP.W           R2, R0,LSR#16
442D3C:  BNE             locret_442D66
442D3E:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442D48)
442D40:  ADD.W           R2, LR, LR,LSL#2
442D44:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442D46:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
442D48:  ADD.W           R0, R0, R2,LSL#3
442D4C:  LDRH.W          R2, [R0,#0x25]!
442D50:  TST.W           R2, #2
442D54:  IT EQ
442D56:  POPEQ           {R7,PC}
442D58:  MOVS            R3, #8
442D5A:  AND.W           R1, R3, R1,LSL#3
442D5E:  BIC.W           R2, R2, #8
442D62:  ORRS            R1, R2
442D64:  STRH            R1, [R0]
442D66:  POP             {R7,PC}
