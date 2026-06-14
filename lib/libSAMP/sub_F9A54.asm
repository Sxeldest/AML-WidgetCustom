; =========================================================
; Game Engine Function: sub_F9A54
; Address            : 0xF9A54 - 0xF9AA8
; =========================================================

F9A54:  PUSH            {R4,R5,R7,LR}
F9A56:  ADD             R7, SP, #8
F9A58:  LDR             R1, =(unk_247288 - 0xF9A64)
F9A5A:  VMOV.I32        Q8, #0
F9A5E:  MOVS            R0, #2
F9A60:  ADD             R1, PC; unk_247288
F9A62:  ADDS            R2, R1, R0
F9A64:  ADDS            R0, #0x10
F9A66:  VLD1.8          {D18-D19}, [R2]
F9A6A:  CMP             R0, #0xD2
F9A6C:  VADD.I8         Q8, Q9, Q8
F9A70:  BNE             loc_F9A62
F9A72:  VADD.I8         D16, D16, D17
F9A76:  VMOV.U8         R12, D16[1]
F9A7A:  VMOV.U8         R1, D16[0]
F9A7E:  VMOV.U8         R2, D16[2]
F9A82:  VMOV.U8         R3, D16[3]
F9A86:  VMOV.U8         R0, D16[4]
F9A8A:  VMOV.U8         LR, D16[5]
F9A8E:  VMOV.U8         R4, D16[6]
F9A92:  VMOV.U8         R5, D16[7]
F9A96:  ADD             R1, R12
F9A98:  ADD             R1, R2
F9A9A:  ADD             R1, R3
F9A9C:  ADD             R0, R1
F9A9E:  ADD             R0, LR
F9AA0:  ADD             R0, R4
F9AA2:  ADD             R0, R5
F9AA4:  UXTB            R0, R0
F9AA6:  POP             {R4,R5,R7,PC}
