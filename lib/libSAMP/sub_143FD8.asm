; =========================================================
; Game Engine Function: sub_143FD8
; Address            : 0x143FD8 - 0x144006
; =========================================================

143FD8:  LDR             R2, [R1]
143FDA:  LDR             R0, [R1,#8]
143FDC:  CMP             R0, R2
143FDE:  BGE             loc_143FF8
143FE0:  LDR             R2, [R1,#0xC]
143FE2:  ASRS            R3, R0, #3
143FE4:  LDRB            R2, [R2,R3]
143FE6:  ADDS            R3, R0, #1
143FE8:  AND.W           R0, R0, #7
143FEC:  STR             R3, [R1,#8]
143FEE:  LSL.W           R0, R2, R0
143FF2:  UXTB            R0, R0
143FF4:  LSRS            R1, R0, #7
143FF6:  B               loc_143FFA
143FF8:  MOVS            R1, #0
143FFA:  LDR             R0, =(off_234970 - 0x144000)
143FFC:  ADD             R0, PC; off_234970
143FFE:  LDR             R0, [R0]; dword_23DEF0
144000:  LDR             R0, [R0]
144002:  B.W             loc_FA394
