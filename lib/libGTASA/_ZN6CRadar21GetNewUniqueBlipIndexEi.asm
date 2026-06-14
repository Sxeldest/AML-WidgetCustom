; =========================================================
; Game Engine Function: _ZN6CRadar21GetNewUniqueBlipIndexEi
; Address            : 0x43E0F8 - 0x43E120
; =========================================================

43E0F8:  LDR             R1, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43E104)
43E0FA:  ADD.W           R2, R0, R0,LSL#2
43E0FE:  MOVS            R3, #1
43E100:  ADD             R1, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43E102:  LDR             R1, [R1]; CRadar::ms_RadarTrace ...
43E104:  ADD.W           R12, R1, R2,LSL#3
43E108:  MOVW            R1, #0xFFFE
43E10C:  LDRH.W          R2, [R12,#0x14]
43E110:  CMP             R2, R1
43E112:  IT CC
43E114:  ADDCC           R3, R2, #1
43E116:  ORR.W           R0, R0, R3,LSL#16
43E11A:  STRH.W          R3, [R12,#0x14]
43E11E:  BX              LR
