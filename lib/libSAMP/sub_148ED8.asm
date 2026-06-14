; =========================================================
; Game Engine Function: sub_148ED8
; Address            : 0x148ED8 - 0x148F0E
; =========================================================

148ED8:  ADR             R1, dword_148F10
148EDA:  ADDW            R0, R0, #0xFB4
148EDE:  VLD1.64         {D16-D17}, [R1]
148EE2:  MOVS            R1, #0
148EE4:  ADDS            R2, R0, R1
148EE6:  ADDS            R1, #4
148EE8:  CMP.W           R1, #0x3EC
148EEC:  VLD1.32         {D18[0]}, [R2@32]
148EF0:  VMOVL.U8        Q9, D18
148EF4:  VMOVL.U16       Q9, D18
148EF8:  VADD.I32        Q8, Q8, Q9
148EFC:  BNE             loc_148EE4
148EFE:  VADD.I32        D16, D16, D17
148F02:  VMOV.32         R0, D16[1]
148F06:  VMOV.32         R1, D16[0]
148F0A:  ADD             R0, R1
148F0C:  BX              LR
