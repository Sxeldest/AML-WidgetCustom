; =========================================================
; Game Engine Function: _ZN6CRadar20ChangeBlipBrightnessEii
; Address            : 0x442A64 - 0x442AB8
; =========================================================

442A64:  PUSH            {R7,LR}
442A66:  MOV             R7, SP
442A68:  ADDS            R2, R0, #1
442A6A:  BEQ             locret_442AB6
442A6C:  LDR.W           R12, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442A7C)
442A70:  UXTH.W          LR, R0
442A74:  MOV.W           R3, LR,LSL#2
442A78:  ADD             R12, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442A7A:  UXTAH.W         R3, R3, R0
442A7E:  LDR.W           R2, [R12]; CRadar::ms_RadarTrace ...
442A82:  ADD.W           R2, R2, R3,LSL#3
442A86:  LDRH            R2, [R2,#0x14]
442A88:  CMP.W           R2, R0,LSR#16
442A8C:  BNE             locret_442AB6
442A8E:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442A98)
442A90:  ADD.W           R2, LR, LR,LSL#2
442A94:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442A96:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
442A98:  ADD.W           R0, R0, R2,LSL#3
442A9C:  LDRH.W          R2, [R0,#0x25]!
442AA0:  TST.W           R2, #2
442AA4:  IT EQ
442AA6:  POPEQ           {R7,PC}
442AA8:  ORR.W           R3, R2, #1
442AAC:  CMP             R1, #1
442AAE:  IT EQ
442AB0:  BICEQ.W         R3, R2, #1
442AB4:  STRH            R3, [R0]
442AB6:  POP             {R7,PC}
