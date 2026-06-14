; =========================================================
; Game Engine Function: mpg123_replace_reader
; Address            : 0x22FD6C - 0x22FE54
; =========================================================

22FD6C:  PUSH            {R4-R7,LR}
22FD6E:  ADD             R7, SP, #0xC
22FD70:  PUSH.W          {R8,R9,R11}
22FD74:  MOV             R5, R0
22FD76:  MOV             R9, R2
22FD78:  MOV             R8, R1
22FD7A:  CMP             R5, #0
22FD7C:  BEQ             loc_22FE4A
22FD7E:  MOVW            R1, #0xB2E0
22FD82:  ADDS            R6, R5, R1
22FD84:  LDR             R0, [R5,R1]
22FD86:  CBZ             R0, loc_22FD92
22FD88:  LDR             R1, [R0,#4]
22FD8A:  CMP             R1, #0
22FD8C:  ITT NE
22FD8E:  MOVNE           R0, R5
22FD90:  BLXNE           R1
22FD92:  MOVS            R4, #0
22FD94:  STR             R4, [R6]
22FD96:  LDR             R0, [R5,#4]
22FD98:  CBZ             R0, loc_22FDAE
22FD9A:  MOVW            R0, #0xB2B8
22FD9E:  STR             R4, [R5,R0]
22FDA0:  MOVW            R0, #0xB2BC
22FDA4:  STR             R4, [R5,R0]
22FDA6:  MOVW            R0, #0xB2B0
22FDAA:  STR             R4, [R5,R0]
22FDAC:  STR             R4, [R5,#4]
22FDAE:  MOVW            R0, #0xB290
22FDB2:  MOVW            R1, #0xB288
22FDB6:  STR             R4, [R5,R0]
22FDB8:  MOVW            R0, #0xB2A8
22FDBC:  MOVW            R2, #0xB28C
22FDC0:  STR             R4, [R5,R0]
22FDC2:  MOVW            R0, #0xA308
22FDC6:  ADD             R0, R5
22FDC8:  STR             R0, [R5,R1]
22FDCA:  MOVW            R1, #0x4834
22FDCE:  LDR             R1, [R5,R1]
22FDD0:  STR             R0, [R5,R2]
22FDD2:  MOVW            R0, #0x4830
22FDD6:  LDR             R0, [R5,R0]
22FDD8:  MOVW            R2, #0x9384
22FDDC:  STR             R4, [R5,R2]
22FDDE:  BLX             j___aeabi_memclr8_1
22FDE2:  MOVW            R0, #0x9388
22FDE6:  MOV.W           R1, #0x1F00
22FDEA:  ADD             R0, R5
22FDEC:  BLX             j___aeabi_memclr8
22FDF0:  MOVW            R0, #0x4A70
22FDF4:  VMOV.I32        Q8, #0
22FDF8:  STRH            R4, [R5,R0]
22FDFA:  MOVW            R0, #0x4A60
22FDFE:  ADD             R0, R5
22FE00:  MOVW            R1, #0x4808
22FE04:  VST1.64         {D16-D17}, [R0]
22FE08:  MOVW            R0, #0x4A50
22FE0C:  ADD             R0, R5
22FE0E:  VST1.64         {D16-D17}, [R0]
22FE12:  ADD.W           R0, R5, #8
22FE16:  BLX             j___aeabi_memclr8
22FE1A:  MOV             R0, R5
22FE1C:  BL              sub_225790
22FE20:  MOVW            R1, #0x9324
22FE24:  LDR             R0, [R5,R1]; p
22FE26:  CBZ             R0, loc_22FE32
22FE28:  ADDS            R4, R5, R1
22FE2A:  BLX             free
22FE2E:  MOVS            R0, #0
22FE30:  STR             R0, [R4]
22FE32:  MOVW            R0, #0xB304
22FE36:  STR.W           R9, [R5,R0]
22FE3A:  MOV.W           R0, #0xB300
22FE3E:  STR.W           R8, [R5,R0]
22FE42:  MOVS            R0, #0
22FE44:  POP.W           {R8,R9,R11}
22FE48:  POP             {R4-R7,PC}
22FE4A:  MOV.W           R0, #0xFFFFFFFF
22FE4E:  POP.W           {R8,R9,R11}
22FE52:  POP             {R4-R7,PC}
