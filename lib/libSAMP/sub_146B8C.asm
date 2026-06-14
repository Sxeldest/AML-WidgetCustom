; =========================================================
; Game Engine Function: sub_146B8C
; Address            : 0x146B8C - 0x146BE0
; =========================================================

146B8C:  PUSH            {R7,LR}
146B8E:  MOV             R7, SP
146B90:  SUB             SP, SP, #0x130
146B92:  LDRD.W          R1, R0, [R0]; src
146B96:  MOVS            R3, #0
146B98:  ASRS            R2, R0, #0x1F
146B9A:  ADD.W           R0, R0, R2,LSR#29
146B9E:  MOVS            R2, #1
146BA0:  ADD.W           R2, R2, R0,ASR#3; size
146BA4:  ADD             R0, SP, #0x138+var_134; int
146BA6:  BL              sub_17D4F2
146BAA:  ADD             R1, SP, #0x138+var_C; int
146BAC:  MOVS            R2, #0x20 ; ' '
146BAE:  MOVS            R3, #1
146BB0:  BL              sub_17D786
146BB4:  ADD             R0, SP, #0x138+var_134; int
146BB6:  ADD             R1, SP, #0x138+dest; dest
146BB8:  MOVS            R2, #0x14
146BBA:  BL              sub_17D744
146BBE:  LDR             R0, =(off_23496C - 0x146BC4)
146BC0:  ADD             R0, PC; off_23496C
146BC2:  LDR             R0, [R0]; dword_23DEF4
146BC4:  LDR             R0, [R0]
146BC6:  LDR.W           R0, [R0,#0x3B0]
146BCA:  LDR             R0, [R0,#0xC]
146BCC:  CBZ             R0, loc_146BD6
146BCE:  LDR             R2, [SP,#0x138+var_C]
146BD0:  ADD             R1, SP, #0x138+dest
146BD2:  BL              sub_148A3C
146BD6:  ADD             R0, SP, #0x138+var_134
146BD8:  BL              sub_17D542
146BDC:  ADD             SP, SP, #0x130
146BDE:  POP             {R7,PC}
