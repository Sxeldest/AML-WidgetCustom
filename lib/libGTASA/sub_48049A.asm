; =========================================================
; Game Engine Function: sub_48049A
; Address            : 0x48049A - 0x48055C
; =========================================================

48049A:  PUSH            {R4-R7,LR}
48049C:  ADD             R7, SP, #0xC
48049E:  PUSH.W          {R8-R11}
4804A2:  SUB             SP, SP, #0x24
4804A4:  STR             R2, [SP,#0x40+var_30]
4804A6:  MOV             R8, R0
4804A8:  LDR.W           R0, [R8,#0x114]
4804AC:  CMP             R0, #1
4804AE:  BLT             loc_480554
4804B0:  LDR.W           R0, [R8,#0x1A0]
4804B4:  MOV.W           R11, #0
4804B8:  LDR             R1, [R1,#4]
4804BA:  LDR             R2, [R3]
4804BC:  ADD             R0, R1
4804BE:  STR             R2, [SP,#0x40+var_24]
4804C0:  LDRB.W          R6, [R0,#0x44]
4804C4:  LDRB.W          R5, [R0,#0x48]
4804C8:  MOV             R0, #0xFFFFFFFE
4804CC:  CMP             R6, #0
4804CE:  ADD.W           R9, R6, #1
4804D2:  IT EQ
4804D4:  MVNEQ           R0, R6
4804D6:  ADD             R0, R6
4804D8:  ADDS            R4, R0, #2
4804DA:  SUBS            R0, R5, #1
4804DC:  STR             R0, [SP,#0x40+var_34]
4804DE:  MOVS            R0, #0
4804E0:  STR             R0, [SP,#0x40+var_20]
4804E2:  STRD.W          R5, R8, [SP,#0x40+var_2C]
4804E6:  LDR.W           R0, [R8,#0x5C]
4804EA:  CMP             R0, #1
4804EC:  BLT             loc_480520
4804EE:  LDR             R1, [SP,#0x40+var_24]
4804F0:  LDR.W           R5, [R1,R11,LSL#2]
4804F4:  LDR             R1, [SP,#0x40+var_20]
4804F6:  ADD.W           R10, R5, R0
4804FA:  LDR             R0, [SP,#0x40+var_30]
4804FC:  LDR.W           R8, [R0,R1,LSL#2]
480500:  MOV             R0, R8
480502:  ADD.W           R8, R0, #1
480506:  CBZ             R6, loc_48051C
480508:  LDRB            R2, [R0]
48050A:  MOV             R0, R5
48050C:  MOV             R1, R4
48050E:  BLX             j___aeabi_memset8
480512:  MOV             R0, R9
480514:  SUBS            R0, #1
480516:  ADDS            R5, #1
480518:  CMP             R0, #1
48051A:  BGT             loc_480514
48051C:  CMP             R5, R10
48051E:  BCC             loc_480500
480520:  LDR             R5, [SP,#0x40+var_2C]
480522:  LDR.W           R8, [SP,#0x40+var_28]
480526:  CMP             R5, #2
480528:  BCC             loc_480542
48052A:  LDR.W           R0, [R8,#0x5C]
48052E:  ADD.W           R3, R11, #1; int
480532:  LDR             R1, [SP,#0x40+var_34]
480534:  STRD.W          R1, R0, [SP,#0x40+var_40]; int
480538:  MOV             R1, R11; int
48053A:  LDR             R0, [SP,#0x40+var_24]; unsigned __int8 **
48053C:  MOV             R2, R0; unsigned __int8 **
48053E:  BLX             j__Z17jcopy_sample_rowsPPhiS0_iij; jcopy_sample_rows(uchar **,int,uchar **,int,int,uint)
480542:  LDR.W           R0, [R8,#0x114]
480546:  ADD             R11, R5
480548:  LDR             R1, [SP,#0x40+var_20]
48054A:  CMP             R11, R0
48054C:  ADD.W           R1, R1, #1
480550:  STR             R1, [SP,#0x40+var_20]
480552:  BLT             loc_4804E6
480554:  ADD             SP, SP, #0x24 ; '$'
480556:  POP.W           {R8-R11}
48055A:  POP             {R4-R7,PC}
