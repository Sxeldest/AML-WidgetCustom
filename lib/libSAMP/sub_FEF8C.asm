; =========================================================
; Game Engine Function: sub_FEF8C
; Address            : 0xFEF8C - 0xFEFF4
; =========================================================

FEF8C:  PUSH            {R4-R7,LR}
FEF8E:  ADD             R7, SP, #0xC
FEF90:  PUSH.W          {R11}
FEF94:  LDR             R1, =(off_25B13C - 0xFEF9A)
FEF96:  ADD             R1, PC; off_25B13C
FEF98:  LDR             R1, [R1]
FEF9A:  BLX             R1
FEF9C:  LDR             R0, =(off_23496C - 0xFEFA2)
FEF9E:  ADD             R0, PC; off_23496C
FEFA0:  LDR             R0, [R0]; dword_23DEF4
FEFA2:  LDR             R0, [R0]
FEFA4:  CBZ             R0, loc_FEFEE
FEFA6:  LDR.W           R0, [R0,#0x3B0]
FEFAA:  LDR             R4, [R0]
FEFAC:  CBZ             R4, loc_FEFEE
FEFAE:  MOVW            R0, #0x13BC
FEFB2:  LDR             R0, [R4,R0]
FEFB4:  CBZ             R0, loc_FEFBA
FEFB6:  BL              sub_140F8C
FEFBA:  MOVW            R6, #0xF050
FEFBE:  ADDW            R4, R4, #0xFB4
FEFC2:  MOVS            R5, #0
FEFC4:  MOVT            R6, #0xFFFF
FEFC8:  LDRB            R0, [R4,R5]
FEFCA:  CBZ             R0, loc_FEFE6
FEFCC:  ADD.W           R0, R4, R5,LSL#2
FEFD0:  LDR             R0, [R0,R6]
FEFD2:  CBZ             R0, loc_FEFE6
FEFD4:  LDR             R0, [R0]
FEFD6:  CBZ             R0, loc_FEFE6
FEFD8:  LDR.W           R1, [R0,#0x128]
FEFDC:  CBZ             R1, loc_FEFE6
FEFDE:  LDRB            R1, [R0,#0x19]
FEFE0:  CBZ             R1, loc_FEFE6
FEFE2:  BL              sub_14A280
FEFE6:  ADDS            R5, #1
FEFE8:  CMP.W           R5, #0x3EC
FEFEC:  BNE             loc_FEFC8
FEFEE:  POP.W           {R11}
FEFF2:  POP             {R4-R7,PC}
