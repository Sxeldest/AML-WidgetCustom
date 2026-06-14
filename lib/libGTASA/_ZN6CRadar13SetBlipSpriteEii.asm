; =========================================================
; Game Engine Function: _ZN6CRadar13SetBlipSpriteEii
; Address            : 0x442B90 - 0x442BE2
; =========================================================

442B90:  PUSH            {R7,LR}
442B92:  MOV             R7, SP
442B94:  ADDS            R2, R0, #1
442B96:  BEQ             locret_442BE0
442B98:  LDR.W           R12, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442BA8)
442B9C:  UXTH.W          LR, R0
442BA0:  MOV.W           R3, LR,LSL#2
442BA4:  ADD             R12, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442BA6:  UXTAH.W         R3, R3, R0
442BAA:  LDR.W           R2, [R12]; CRadar::ms_RadarTrace ...
442BAE:  ADD.W           R2, R2, R3,LSL#3
442BB2:  LDRH            R2, [R2,#0x14]
442BB4:  CMP.W           R2, R0,LSR#16
442BB8:  BNE             locret_442BE0
442BBA:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442BC0)
442BBC:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442BBE:  LDR             R2, [R0]; CRadar::ms_RadarTrace ...
442BC0:  ADD.W           R0, LR, LR,LSL#2
442BC4:  ADD.W           R2, R2, R0,LSL#3
442BC8:  LDRB.W          R2, [R2,#0x25]
442BCC:  LSLS            R2, R2, #0x1E
442BCE:  IT PL
442BD0:  POPPL           {R7,PC}
442BD2:  LDR             R2, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442BD8)
442BD4:  ADD             R2, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442BD6:  LDR             R2, [R2]; CRadar::ms_RadarTrace ...
442BD8:  ADD.W           R0, R2, R0,LSL#3
442BDC:  STRB.W          R1, [R0,#0x24]
442BE0:  POP             {R7,PC}
