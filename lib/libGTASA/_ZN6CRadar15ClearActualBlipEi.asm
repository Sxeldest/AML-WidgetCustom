; =========================================================
; Game Engine Function: _ZN6CRadar15ClearActualBlipEi
; Address            : 0x43DCF8 - 0x43DD30
; =========================================================

43DCF8:  CMP             R0, #0xF9
43DCFA:  IT HI
43DCFC:  BXHI            LR
43DCFE:  LDR             R1, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43DD0A)
43DD00:  ADD.W           R0, R0, R0,LSL#2
43DD04:  MOVS            R2, #0
43DD06:  ADD             R1, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43DD08:  LDR             R1, [R1]; CRadar::ms_RadarTrace ...
43DD0A:  ADD.W           R0, R1, R0,LSL#3
43DD0E:  MOVS            R1, #1
43DD10:  STRH            R1, [R0,#0x1C]
43DD12:  MOV.W           R1, #0x3F800000
43DD16:  STR             R1, [R0,#0x18]
43DD18:  LDRH.W          R1, [R0,#0x25]
43DD1C:  STR             R2, [R0,#0x20]
43DD1E:  AND.W           R1, R1, #0xC000
43DD22:  STRB.W          R2, [R0,#0x24]
43DD26:  ORR.W           R1, R1, #1
43DD2A:  STRH.W          R1, [R0,#0x25]
43DD2E:  BX              LR
