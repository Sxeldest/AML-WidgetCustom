; =========================================================
; Game Engine Function: _ZN6CRadar26SetBlipAlwaysDisplayInZoomEih
; Address            : 0x442BF0 - 0x442C44
; =========================================================

442BF0:  PUSH            {R7,LR}
442BF2:  MOV             R7, SP
442BF4:  ADDS            R2, R0, #1
442BF6:  BEQ             locret_442C42
442BF8:  LDR.W           R12, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442C08)
442BFC:  UXTH.W          LR, R0
442C00:  MOV.W           R3, LR,LSL#2
442C04:  ADD             R12, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442C06:  UXTAH.W         R3, R3, R0
442C0A:  LDR.W           R2, [R12]; CRadar::ms_RadarTrace ...
442C0E:  ADD.W           R2, R2, R3,LSL#3
442C12:  LDRH            R2, [R2,#0x14]
442C14:  CMP.W           R2, R0,LSR#16
442C18:  BNE             locret_442C42
442C1A:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442C24)
442C1C:  ADD.W           R2, LR, LR,LSL#2
442C20:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442C22:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
442C24:  ADD.W           R0, R0, R2,LSL#3
442C28:  LDRH.W          R2, [R0,#0x25]!
442C2C:  TST.W           R2, #2
442C30:  IT EQ
442C32:  POPEQ           {R7,PC}
442C34:  MOVS            R3, #0x10
442C36:  AND.W           R1, R3, R1,LSL#4
442C3A:  BIC.W           R2, R2, #0x10
442C3E:  ORRS            R1, R2
442C40:  STRH            R1, [R0]
442C42:  POP             {R7,PC}
