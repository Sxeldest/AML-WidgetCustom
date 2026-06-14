; =========================================================
; Game Engine Function: _ZN6CRadar11SetBlipFadeEih
; Address            : 0x442C4C - 0x442CA0
; =========================================================

442C4C:  PUSH            {R7,LR}
442C4E:  MOV             R7, SP
442C50:  ADDS            R2, R0, #1
442C52:  BEQ             locret_442C9E
442C54:  LDR.W           R12, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442C64)
442C58:  UXTH.W          LR, R0
442C5C:  MOV.W           R3, LR,LSL#2
442C60:  ADD             R12, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442C62:  UXTAH.W         R3, R3, R0
442C66:  LDR.W           R2, [R12]; CRadar::ms_RadarTrace ...
442C6A:  ADD.W           R2, R2, R3,LSL#3
442C6E:  LDRH            R2, [R2,#0x14]
442C70:  CMP.W           R2, R0,LSR#16
442C74:  BNE             locret_442C9E
442C76:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442C80)
442C78:  ADD.W           R2, LR, LR,LSL#2
442C7C:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442C7E:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
442C80:  ADD.W           R0, R0, R2,LSL#3
442C84:  LDRH.W          R2, [R0,#0x25]!
442C88:  TST.W           R2, #2
442C8C:  IT EQ
442C8E:  POPEQ           {R7,PC}
442C90:  MOVS            R3, #0x20 ; ' '
442C92:  AND.W           R1, R3, R1,LSL#5
442C96:  BIC.W           R2, R2, #0x20 ; ' '
442C9A:  ORRS            R1, R2
442C9C:  STRH            R1, [R0]
442C9E:  POP             {R7,PC}
