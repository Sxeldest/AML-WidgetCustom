; =========================================================
; Game Engine Function: _ZN6CRadar17ChangeBlipDisplayEi12eBlipDisplay
; Address            : 0x442B30 - 0x442B86
; =========================================================

442B30:  PUSH            {R7,LR}
442B32:  MOV             R7, SP
442B34:  ADDS            R2, R0, #1
442B36:  BEQ             locret_442B84
442B38:  LDR.W           R12, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442B48)
442B3C:  UXTH.W          LR, R0
442B40:  MOV.W           R3, LR,LSL#2
442B44:  ADD             R12, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442B46:  UXTAH.W         R3, R3, R0
442B4A:  LDR.W           R2, [R12]; CRadar::ms_RadarTrace ...
442B4E:  ADD.W           R2, R2, R3,LSL#3
442B52:  LDRH            R2, [R2,#0x14]
442B54:  CMP.W           R2, R0,LSR#16
442B58:  BNE             locret_442B84
442B5A:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442B64)
442B5C:  ADD.W           R2, LR, LR,LSL#2
442B60:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442B62:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
442B64:  ADD.W           R0, R0, R2,LSL#3
442B68:  LDRH.W          R2, [R0,#0x25]!
442B6C:  TST.W           R2, #2
442B70:  IT EQ
442B72:  POPEQ           {R7,PC}
442B74:  MOV.W           R3, #0x300
442B78:  AND.W           R1, R3, R1,LSL#8
442B7C:  BIC.W           R2, R2, #0x300
442B80:  ORRS            R1, R2
442B82:  STRH            R1, [R0]
442B84:  POP             {R7,PC}
