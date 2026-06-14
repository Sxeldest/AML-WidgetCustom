; =========================================================
; Game Engine Function: _ZN12CPatrolRoute7ReverseEv
; Address            : 0x526AB4 - 0x526BCE
; =========================================================

526AB4:  PUSH            {R4-R7,LR}
526AB6:  ADD             R7, SP, #0xC
526AB8:  PUSH.W          {R8-R11}
526ABC:  SUB             SP, SP, #0x5C
526ABE:  MOV             R9, R0
526AC0:  LDR             R0, =(__stack_chk_guard_ptr - 0x526AC6)
526AC2:  ADD             R0, PC; __stack_chk_guard_ptr
526AC4:  LDR             R0, [R0]; __stack_chk_guard
526AC6:  LDR             R0, [R0]
526AC8:  STR             R0, [SP,#0x78+var_20]
526ACA:  LDR.W           R0, [R9]
526ACE:  CMP             R0, #2
526AD0:  BLT             loc_526BB4
526AD2:  ADD.W           R1, R0, R0,LSL#2
526AD6:  MOV             R2, #0xFFFFFFDC
526ADA:  MOV.W           R6, #0x144
526ADE:  MOVS            R3, #0
526AE0:  ADD.W           R2, R2, R1,LSL#3
526AE4:  STR             R2, [SP,#0x78+var_5C]
526AE6:  MOV             R2, #0xFFFFFFF4
526AEA:  ADD.W           R1, R2, R1,LSL#3
526AEE:  STR             R1, [SP,#0x78+var_60]
526AF0:  ADD.W           R1, R0, R0,LSL#1
526AF4:  MOV.W           R2, #0x138
526AF8:  ADD.W           R2, R2, R1,LSL#2
526AFC:  ADD             R1, SP, #0x78+var_48
526AFE:  ADDS            R1, #0x18
526B00:  STR             R1, [SP,#0x78+var_78]
526B02:  LDR.W           R8, [SP,#0x78+var_78]
526B06:  SUBS            R1, R0, #1
526B08:  MOVS            R0, #1
526B0A:  ADD.W           R12, SP, #0x78+var_74
526B0E:  ADD.W           R4, R9, R3
526B12:  STM.W           R12, {R0,R3,R6}
526B16:  ADD.W           R0, R9, R6
526B1A:  ADDS            R5, R4, #4
526B1C:  STRD.W          R1, R2, [SP,#0x78+var_68]
526B20:  VLDR            D16, [R0]
526B24:  LDR             R1, [R0,#8]
526B26:  STR             R1, [SP,#0x78+var_50]
526B28:  ADD.W           R1, R9, R2
526B2C:  VSTR            D16, [SP,#0x78+var_58]
526B30:  VLDR            D16, [R1]
526B34:  LDR             R2, [R1,#8]
526B36:  STR             R2, [R0,#8]
526B38:  VSTR            D16, [R0]
526B3C:  VLDR            D16, [SP,#0x78+var_58]
526B40:  LDR             R0, [SP,#0x78+var_50]
526B42:  STR             R0, [R1,#8]
526B44:  ADD             R0, SP, #0x78+var_48; char *
526B46:  VSTR            D16, [R1]
526B4A:  MOV             R1, R5; char *
526B4C:  BLX             strcpy
526B50:  ADD.W           R6, R4, #0x1C
526B54:  MOV             R0, R8; char *
526B56:  MOV             R1, R6; char *
526B58:  BLX             strcpy
526B5C:  LDR.W           R10, [SP,#0x78+var_5C]
526B60:  MOV             R0, R5; char *
526B62:  ADD.W           R4, R9, R10
526B66:  MOV             R1, R4; char *
526B68:  BLX             strcpy
526B6C:  LDR.W           R11, [SP,#0x78+var_60]
526B70:  MOV             R0, R6; char *
526B72:  ADD.W           R5, R9, R11
526B76:  MOV             R1, R5; char *
526B78:  BLX             strcpy
526B7C:  ADD             R1, SP, #0x78+var_48; char *
526B7E:  MOV             R0, R4; char *
526B80:  BLX             strcpy
526B84:  MOV             R0, R5; char *
526B86:  MOV             R1, R8; char *
526B88:  BLX             strcpy
526B8C:  LDRD.W          R3, R6, [SP,#0x78+var_70]
526B90:  SUB.W           R10, R10, #0x28 ; '('
526B94:  LDRD.W          R1, R2, [SP,#0x78+var_68]
526B98:  ADDS            R6, #0xC
526B9A:  LDR             R5, [SP,#0x78+var_74]
526B9C:  ADDS            R3, #0x28 ; '('
526B9E:  SUBS            R1, #1
526BA0:  SUBS            R2, #0xC
526BA2:  ADDS            R0, R5, #1
526BA4:  CMP             R5, R1
526BA6:  SUB.W           R11, R11, #0x28 ; '('
526BAA:  STR.W           R10, [SP,#0x78+var_5C]
526BAE:  STR.W           R11, [SP,#0x78+var_60]
526BB2:  BLT             loc_526B0A
526BB4:  LDR             R0, =(__stack_chk_guard_ptr - 0x526BBC)
526BB6:  LDR             R1, [SP,#0x78+var_20]
526BB8:  ADD             R0, PC; __stack_chk_guard_ptr
526BBA:  LDR             R0, [R0]; __stack_chk_guard
526BBC:  LDR             R0, [R0]
526BBE:  SUBS            R0, R0, R1
526BC0:  ITTT EQ
526BC2:  ADDEQ           SP, SP, #0x5C ; '\'
526BC4:  POPEQ.W         {R8-R11}
526BC8:  POPEQ           {R4-R7,PC}
526BCA:  BLX             __stack_chk_fail
