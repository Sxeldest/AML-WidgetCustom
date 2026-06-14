; =========================================================
; Game Engine Function: _Z22_rwDataBlockMgrDestroyP14RwDataBlockMgr
; Address            : 0x1A9E70 - 0x1A9EB8
; =========================================================

1A9E70:  PUSH            {R4,R5,R7,LR}
1A9E72:  ADD             R7, SP, #8
1A9E74:  MOV             R4, R0
1A9E76:  LDR             R0, [R4]
1A9E78:  CBZ             R0, loc_1A9E8A
1A9E7A:  LDR             R1, =(dgGGlobals_ptr - 0x1A9E80)
1A9E7C:  ADD             R1, PC; dgGGlobals_ptr
1A9E7E:  LDR             R1, [R1]; dgGGlobals
1A9E80:  LDR             R1, [R1,#(dword_6B31F8 - 0x6B31F4)]
1A9E82:  LDR             R1, [R1,#4]
1A9E84:  BLX             R1
1A9E86:  MOVS            R0, #0
1A9E88:  STR             R0, [R4]
1A9E8A:  LDR             R0, [R4,#0xC]
1A9E8C:  MOVS            R5, #0
1A9E8E:  STRD.W          R5, R5, [R4,#4]
1A9E92:  CBZ             R0, loc_1A9EA2
1A9E94:  LDR             R1, =(dgGGlobals_ptr - 0x1A9E9A)
1A9E96:  ADD             R1, PC; dgGGlobals_ptr
1A9E98:  LDR             R1, [R1]; dgGGlobals
1A9E9A:  LDR             R1, [R1,#(dword_6B31F8 - 0x6B31F4)]
1A9E9C:  LDR             R1, [R1,#4]
1A9E9E:  BLX             R1
1A9EA0:  STR             R5, [R4,#0xC]
1A9EA2:  LDR             R0, =(dgGGlobals_ptr - 0x1A9EAC)
1A9EA4:  STRD.W          R5, R5, [R4,#0x10]
1A9EA8:  ADD             R0, PC; dgGGlobals_ptr
1A9EAA:  LDR             R0, [R0]; dgGGlobals
1A9EAC:  LDR             R0, [R0,#(dword_6B31F8 - 0x6B31F4)]
1A9EAE:  LDR             R1, [R0,#4]
1A9EB0:  MOV             R0, R4
1A9EB2:  BLX             R1
1A9EB4:  MOVS            R0, #1
1A9EB6:  POP             {R4,R5,R7,PC}
