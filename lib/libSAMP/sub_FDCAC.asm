; =========================================================
; Game Engine Function: sub_FDCAC
; Address            : 0xFDCAC - 0xFDCD2
; =========================================================

FDCAC:  PUSH            {R4,R6,R7,LR}
FDCAE:  ADD             R7, SP, #8
FDCB0:  MOV             R4, R1
FDCB2:  BL              sub_1082E4
FDCB6:  CMP             R0, R4
FDCB8:  BNE             loc_FDCCE
FDCBA:  LDR             R0, =(off_234970 - 0xFDCC0)
FDCBC:  ADD             R0, PC; off_234970
FDCBE:  LDR             R0, [R0]; dword_23DEF0
FDCC0:  LDR             R0, [R0]
FDCC2:  CBZ             R0, loc_FDCCE
FDCC4:  BL              sub_E35A0
FDCC8:  CBZ             R0, loc_FDCCE
FDCCA:  BL              sub_105A58
FDCCE:  MOVS            R0, #1
FDCD0:  POP             {R4,R6,R7,PC}
