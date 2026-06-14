; =========================================================
; Game Engine Function: sub_47AD80
; Address            : 0x47AD80 - 0x47ADF4
; =========================================================

47AD80:  PUSH            {R4-R7,LR}
47AD82:  ADD             R7, SP, #0xC
47AD84:  PUSH.W          {R8,R9,R11}
47AD88:  SUB             SP, SP, #8
47AD8A:  MOV             R5, R0
47AD8C:  MOV             R4, R3
47AD8E:  LDR             R0, [R5,#0x1C]
47AD90:  MOV             R8, R1
47AD92:  LDR.W           R1, [R5,#0xDC]
47AD96:  MOVS            R3, #0; int
47AD98:  STRD.W          R1, R0, [SP,#0x20+var_20]; int
47AD9C:  MOV             R0, R2; unsigned __int8 **
47AD9E:  MOVS            R1, #0; int
47ADA0:  MOV             R2, R4; unsigned __int8 **
47ADA2:  BLX             j__Z17jcopy_sample_rowsPPhiS0_iij; jcopy_sample_rows(uchar **,int,uchar **,int,int,uint)
47ADA6:  LDR.W           R6, [R5,#0xDC]
47ADAA:  CMP             R6, #1
47ADAC:  ITTTT GE
47ADAE:  LDRGE.W         R9, [R5,#0x1C]
47ADB2:  LDRGE.W         R0, [R8,#0x1C]
47ADB6:  RSBGE.W         R1, R9, R0,LSL#3
47ADBA:  CMPGE           R1, #1
47ADBC:  BLT             loc_47ADEC
47ADBE:  LSLS            R0, R0, #3
47ADC0:  RSB.W           R1, R9, #2
47ADC4:  SUB.W           R2, R9, #1
47ADC8:  ADD             R1, R0
47ADCA:  SUBS            R0, R2, R0
47ADCC:  CMP.W           R0, #0xFFFFFFFF
47ADD0:  IT LT
47ADD2:  MOVLT           R0, #0xFFFFFFFE
47ADD6:  ADDS            R5, R1, R0
47ADD8:  LDR.W           R0, [R4],#4
47ADDC:  MOV             R1, R5
47ADDE:  ADD             R0, R9
47ADE0:  LDRB.W          R2, [R0,#-1]
47ADE4:  BLX             j___aeabi_memset8
47ADE8:  SUBS            R6, #1
47ADEA:  BNE             loc_47ADD8
47ADEC:  ADD             SP, SP, #8
47ADEE:  POP.W           {R8,R9,R11}
47ADF2:  POP             {R4-R7,PC}
