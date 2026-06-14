; =========================================================
; Game Engine Function: _ZN8CAESound19GetRelativePositionEP7CVector
; Address            : 0x3A7F9E - 0x3A7FC0
; =========================================================

3A7F9E:  LDRB.W          R3, [R0,#0x56]
3A7FA2:  ADD.W           R2, R0, #0x24 ; '$'
3A7FA6:  LSLS            R0, R3, #0x1F
3A7FA8:  BNE             loc_3A7FB2
3A7FAA:  MOV             R0, R1
3A7FAC:  MOV             R1, R2
3A7FAE:  B.W             sub_18B8EC
3A7FB2:  VLDR            D16, [R2]
3A7FB6:  LDR             R0, [R2,#8]
3A7FB8:  STR             R0, [R1,#8]
3A7FBA:  VSTR            D16, [R1]
3A7FBE:  BX              LR
