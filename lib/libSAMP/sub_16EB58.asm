; =========================================================
; Game Engine Function: sub_16EB58
; Address            : 0x16EB58 - 0x16EB80
; =========================================================

16EB58:  LDR             R0, =(dword_381B58 - 0x16EB5E)
16EB5A:  ADD             R0, PC; dword_381B58
16EB5C:  LDR             R1, [R0]
16EB5E:  MOVW            R0, #0x19D0
16EB62:  LDR             R0, [R1,R0]
16EB64:  CBZ             R0, loc_16EB7C
16EB66:  MOVW            R2, #0x19AC
16EB6A:  ADD             R1, R2
16EB6C:  LDR             R1, [R1]
16EB6E:  LDR.W           R1, [R1,#0x108]
16EB72:  SUBS            R0, R0, R1
16EB74:  CLZ.W           R0, R0
16EB78:  LSRS            R0, R0, #5
16EB7A:  BX              LR
16EB7C:  MOVS            R0, #0
16EB7E:  BX              LR
