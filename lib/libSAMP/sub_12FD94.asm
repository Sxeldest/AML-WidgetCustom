; =========================================================
; Game Engine Function: sub_12FD94
; Address            : 0x12FD94 - 0x12FE02
; =========================================================

12FD94:  PUSH            {R4,R5,R7,LR}
12FD96:  ADD             R7, SP, #8
12FD98:  SUB             SP, SP, #0x10
12FD9A:  MOV             R4, R0
12FD9C:  LDRB.W          R2, [R0,#0x64]!
12FDA0:  LDR             R5, [R0,#4]
12FDA2:  ANDS.W          R3, R2, #1
12FDA6:  MOV             R1, R5
12FDA8:  IT EQ
12FDAA:  LSREQ           R1, R2, #1
12FDAC:  CBZ             R1, loc_12FDFE
12FDAE:  CBNZ            R3, loc_12FDBE
12FDB0:  LSRS            R1, R2, #1
12FDB2:  SUBS            R1, #1
12FDB4:  LSLS            R2, R1, #1
12FDB6:  ADD             R1, R0
12FDB8:  ADDS            R1, #1
12FDBA:  STRB            R2, [R0]
12FDBC:  B               loc_12FDC6
12FDBE:  LDR             R1, [R4,#0x6C]
12FDC0:  SUBS            R2, R5, #1
12FDC2:  STR             R2, [R4,#0x68]
12FDC4:  ADD             R1, R2
12FDC6:  MOVS            R2, #0
12FDC8:  STRB            R2, [R1]
12FDCA:  LDRB.W          R3, [R4,#0x64]
12FDCE:  LDRD.W          R2, R1, [R4,#0x68]
12FDD2:  ANDS.W          R5, R3, #1
12FDD6:  ITT EQ
12FDD8:  ADDEQ           R1, R0, #1
12FDDA:  LSREQ           R2, R3, #1
12FDDC:  MOV             R0, SP
12FDDE:  BL              sub_164D04
12FDE2:  MOV             R5, R4
12FDE4:  LDRB.W          R0, [R5,#0x58]!
12FDE8:  LSLS            R0, R0, #0x1F
12FDEA:  ITT NE
12FDEC:  LDRNE           R0, [R4,#0x60]; void *
12FDEE:  BLXNE           j__ZdlPv; operator delete(void *)
12FDF2:  VLDR            D16, [SP,#0x18+var_18]
12FDF6:  LDR             R0, [SP,#0x18+var_10]
12FDF8:  STR             R0, [R5,#8]
12FDFA:  VSTR            D16, [R5]
12FDFE:  ADD             SP, SP, #0x10
12FE00:  POP             {R4,R5,R7,PC}
