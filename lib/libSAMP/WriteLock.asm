; =========================================================
; Game Engine Function: WriteLock
; Address            : 0x1C0F68 - 0x1C1040
; =========================================================

1C0F68:  PUSH            {R4-R6,R10,R11,LR}
1C0F6C:  ADD             R11, SP, #0x10
1C0F70:  MOV             R4, R0
1C0F74:  ADD             R1, R4, #4
1C0F78:  DMB             ISH
1C0F7C:  LDREX           R0, [R1]
1C0F80:  ADD             R2, R0, #1
1C0F84:  STREX           R3, R2, [R1]
1C0F88:  CMP             R3, #0
1C0F8C:  BNE             loc_1C0F7C
1C0F90:  CMP             R0, #0
1C0F94:  DMB             ISH
1C0F98:  BNE             loc_1C0FEC
1C0F9C:  ADD             R5, R4, #8
1C0FA0:  MOV             R1, #1
1C0FA4:  DMB             ISH
1C0FA8:  LDREX           R0, [R5]
1C0FAC:  STREX           R2, R1, [R5]
1C0FB0:  CMP             R2, #0
1C0FB4:  BNE             loc_1C0FA8
1C0FB8:  CMP             R0, #1
1C0FBC:  DMB             ISH
1C0FC0:  BNE             loc_1C0FEC
1C0FC4:  MOV             R6, #1
1C0FC8:  BL              sched_yield
1C0FCC:  DMB             ISH
1C0FD0:  LDREX           R0, [R5]
1C0FD4:  STREX           R1, R6, [R5]
1C0FD8:  CMP             R1, #0
1C0FDC:  BNE             loc_1C0FD0
1C0FE0:  CMP             R0, #1
1C0FE4:  DMB             ISH
1C0FE8:  BEQ             loc_1C0FC8
1C0FEC:  ADD             R4, R4, #0x10
1C0FF0:  MOV             R1, #1
1C0FF4:  DMB             ISH
1C0FF8:  LDREX           R0, [R4]
1C0FFC:  STREX           R2, R1, [R4]
1C1000:  CMP             R2, #0
1C1004:  BNE             loc_1C0FF8
1C1008:  CMP             R0, #1
1C100C:  DMB             ISH
1C1010:  POPNE           {R4-R6,R10,R11,PC}
1C1014:  MOV             R5, #1
1C1018:  BL              sched_yield
1C101C:  DMB             ISH
1C1020:  LDREX           R0, [R4]
1C1024:  STREX           R1, R5, [R4]
1C1028:  CMP             R1, #0
1C102C:  BNE             loc_1C1020
1C1030:  CMP             R0, #1
1C1034:  DMB             ISH
1C1038:  BEQ             loc_1C1018
1C103C:  POP             {R4-R6,R10,R11,PC}
