; =========================================================
; Game Engine Function: sub_148F4A
; Address            : 0x148F4A - 0x148F74
; =========================================================

148F4A:  MOV.W           R3, #0x13A0
148F4E:  LDRH            R3, [R0,R3]
148F50:  CMP             R3, R1
148F52:  BNE             loc_148F5C
148F54:  ADD.W           R0, R0, #0x13A0
148F58:  ADDS            R0, #0x20 ; ' '
148F5A:  B               loc_148F70
148F5C:  LSRS            R3, R1, #2
148F5E:  CMP             R3, #0xFA
148F60:  BHI             locret_148F72
148F62:  ADD.W           R0, R0, R1,LSL#2
148F66:  LDR             R0, [R0,#4]
148F68:  CMP             R0, #0
148F6A:  IT EQ
148F6C:  BXEQ            LR
148F6E:  ADDS            R0, #0x24 ; '$'
148F70:  STR             R2, [R0]
148F72:  BX              LR
