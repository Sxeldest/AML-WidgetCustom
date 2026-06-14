; =========================================================
; Game Engine Function: _ZN6CRadar15ChangeBlipScaleEii
; Address            : 0x442AC0 - 0x442B20
; =========================================================

442AC0:  PUSH            {R7,LR}
442AC2:  MOV             R7, SP
442AC4:  ADDS            R2, R0, #1
442AC6:  BEQ             locret_442B1E
442AC8:  LDR.W           R12, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442AD8)
442ACC:  UXTH.W          LR, R0
442AD0:  MOV.W           R3, LR,LSL#2
442AD4:  ADD             R12, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442AD6:  UXTAH.W         R3, R3, R0
442ADA:  LDR.W           R2, [R12]; CRadar::ms_RadarTrace ...
442ADE:  ADD.W           R2, R2, R3,LSL#3
442AE2:  LDRH            R2, [R2,#0x14]
442AE4:  CMP.W           R2, R0,LSR#16
442AE8:  BNE             locret_442B1E
442AEA:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442AF0)
442AEC:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442AEE:  LDR             R2, [R0]; CRadar::ms_RadarTrace ...
442AF0:  ADD.W           R0, LR, LR,LSL#2
442AF4:  ADD.W           R2, R2, R0,LSL#3
442AF8:  LDRB.W          R2, [R2,#0x25]
442AFC:  LSLS            R2, R2, #0x1E
442AFE:  IT PL
442B00:  POPPL           {R7,PC}
442B02:  LDR             R2, =(gMobileMenu_ptr - 0x442B0A)
442B04:  LDR             R3, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442B0C)
442B06:  ADD             R2, PC; gMobileMenu_ptr
442B08:  ADD             R3, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442B0A:  LDR             R2, [R2]; gMobileMenu
442B0C:  LDR             R3, [R3]; CRadar::ms_RadarTrace ...
442B0E:  LDRB.W          R2, [R2,#(byte_6E00D8 - 0x6E006C)]
442B12:  ADD.W           R0, R3, R0,LSL#3
442B16:  CMP             R2, #0
442B18:  IT NE
442B1A:  MOVNE           R1, #1
442B1C:  STRH            R1, [R0,#0x1C]
442B1E:  POP             {R7,PC}
