; =========================================================
; Game Engine Function: sub_148F20
; Address            : 0x148F20 - 0x148F4A
; =========================================================

148F20:  MOV.W           R3, #0x13A0
148F24:  LDRH            R3, [R0,R3]
148F26:  CMP             R3, R1
148F28:  BNE             loc_148F32
148F2A:  ADD.W           R0, R0, #0x13A0
148F2E:  ADDS            R0, #0x24 ; '$'
148F30:  B               loc_148F46
148F32:  LSRS            R3, R1, #2
148F34:  CMP             R3, #0xFA
148F36:  BHI             locret_148F48
148F38:  ADD.W           R0, R0, R1,LSL#2
148F3C:  LDR             R0, [R0,#4]
148F3E:  CMP             R0, #0
148F40:  IT EQ
148F42:  BXEQ            LR
148F44:  ADDS            R0, #0x20 ; ' '
148F46:  STR             R2, [R0]
148F48:  BX              LR
