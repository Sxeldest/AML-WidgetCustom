; =========================================================
; Game Engine Function: _ZN6CRadar16ChangeBlipColourEij
; Address            : 0x442A08 - 0x442A56
; =========================================================

442A08:  PUSH            {R7,LR}
442A0A:  MOV             R7, SP
442A0C:  ADDS            R2, R0, #1
442A0E:  BEQ             locret_442A54
442A10:  LDR.W           R12, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442A20)
442A14:  UXTH.W          LR, R0
442A18:  MOV.W           R3, LR,LSL#2
442A1C:  ADD             R12, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442A1E:  UXTAH.W         R3, R3, R0
442A22:  LDR.W           R2, [R12]; CRadar::ms_RadarTrace ...
442A26:  ADD.W           R2, R2, R3,LSL#3
442A2A:  LDRH            R2, [R2,#0x14]
442A2C:  CMP.W           R2, R0,LSR#16
442A30:  BNE             locret_442A54
442A32:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442A38)
442A34:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442A36:  LDR             R2, [R0]; CRadar::ms_RadarTrace ...
442A38:  ADD.W           R0, LR, LR,LSL#2
442A3C:  ADD.W           R2, R2, R0,LSL#3
442A40:  LDRB.W          R2, [R2,#0x25]
442A44:  LSLS            R2, R2, #0x1E
442A46:  IT PL
442A48:  POPPL           {R7,PC}
442A4A:  LDR             R2, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442A50)
442A4C:  ADD             R2, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442A4E:  LDR             R2, [R2]; CRadar::ms_RadarTrace ...
442A50:  STR.W           R1, [R2,R0,LSL#3]
442A54:  POP             {R7,PC}
