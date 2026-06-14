; =========================================================
; Game Engine Function: _ZN6CRadar23GetActualBlipArrayIndexEi
; Address            : 0x43E124 - 0x43E166
; =========================================================

43E124:  MOV             R1, R0
43E126:  ADDS            R0, R1, #1
43E128:  BEQ             loc_43E160
43E12A:  LDR             R2, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43E134)
43E12C:  UXTH            R0, R1
43E12E:  LSLS            R3, R0, #2
43E130:  ADD             R2, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43E132:  UXTAH.W         R3, R3, R1
43E136:  LDR             R2, [R2]; CRadar::ms_RadarTrace ...
43E138:  ADD.W           R2, R2, R3,LSL#3
43E13C:  LDRH            R2, [R2,#0x14]
43E13E:  CMP.W           R2, R1,LSR#16
43E142:  BNE             loc_43E160
43E144:  LDR             R1, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43E14E)
43E146:  ADD.W           R2, R0, R0,LSL#2
43E14A:  ADD             R1, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43E14C:  LDR             R1, [R1]; CRadar::ms_RadarTrace ...
43E14E:  ADD.W           R1, R1, R2,LSL#3
43E152:  LDRB.W          R1, [R1,#0x25]
43E156:  LSLS            R1, R1, #0x1E
43E158:  IT PL
43E15A:  MOVPL.W         R0, #0xFFFFFFFF
43E15E:  BX              LR
43E160:  MOV.W           R0, #0xFFFFFFFF
43E164:  BX              LR
