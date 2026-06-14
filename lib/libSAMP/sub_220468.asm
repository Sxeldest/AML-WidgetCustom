; =========================================================
; Game Engine Function: sub_220468
; Address            : 0x220468 - 0x22057A
; =========================================================

220468:  PUSH            {R4-R7,LR}
22046A:  ADD             R7, SP, #0xC
22046C:  PUSH.W          {R8-R10}
220470:  VPUSH           {D4-D9}
220474:  MOV             R5, R0
220476:  LDR             R0, =(__stack_chk_guard_ptr - 0x22047E)
220478:  MOV             R9, R1
22047A:  ADD             R0, PC; __stack_chk_guard_ptr
22047C:  LDR             R0, [R0]; __stack_chk_guard
22047E:  LDR             R0, [R0]
220480:  STR             R0, [SP,#0x48+var_2C]
220482:  MOVS            R0, #0
220484:  STR             R0, [SP,#0x48+var_30]
220486:  CBZ             R1, loc_22048C
220488:  STR.W           R5, [R9]
22048C:  MOV             R0, R5; s
22048E:  BLX             wcslen
220492:  LSLS            R0, R0, #2
220494:  ADDS            R4, R0, #1
220496:  MOV             R0, R4; unsigned int
220498:  BLX             j__Znaj; operator new[](uint)
22049C:  STRD.W          R5, R0, [SP,#0x48+var_38]
2204A0:  ADD             R1, SP, #0x48+var_38
2204A2:  ADD             R3, SP, #0x48+var_30
2204A4:  MOV             R2, R4
2204A6:  MOV             R6, R0
2204A8:  BL              sub_2200EC
2204AC:  ADDS            R0, #1
2204AE:  BEQ             loc_22054C
2204B0:  ADD             R1, SP, #0x48+endptr; endptr
2204B2:  MOV             R0, R6; nptr
2204B4:  BLX             strtod
2204B8:  MOV             R2, R1
2204BA:  VLDR            D9, =+Inf
2204BE:  BFC.W           R2, #0x1F, #1
2204C2:  VMOV            D8, R0, R1
2204C6:  VMOV            D16, R0, R2
2204CA:  VCMP.F64        D16, D9
2204CE:  VMRS            APSR_nzcv, FPSCR
2204D2:  BEQ             loc_2204FA
2204D4:  BVS             loc_2204FA
2204D6:  B               loc_2204D8
2204D8:  VLDR            D17, =3.40282347e38
2204DC:  VCMP.F64        D16, D17
2204E0:  VMRS            APSR_nzcv, FPSCR
2204E4:  BLE             loc_2204FA
2204E6:  BLX             __errno
2204EA:  VMOV.I32        D16, #0x80000000
2204EE:  MOVS            R1, #0x22 ; '"'
2204F0:  STR             R1, [R0]
2204F2:  VSHL.I64        D16, D16, #0x20 ; ' '
2204F6:  VBIF            D8, D9, D16
2204FA:  CMP.W           R9, #0
2204FE:  BEQ             loc_220546
220500:  BLX             __errno
220504:  MOV             R8, R0
220506:  LDR             R0, [SP,#0x48+endptr]
220508:  LDR.W           R10, [R8]
22050C:  SUBS            R4, R0, R6
22050E:  ADDS            R0, R4, #1; unsigned int
220510:  BLX             j__Znaj; operator new[](uint)
220514:  MOV             R1, R6; src
220516:  MOV             R2, R4; n
220518:  STR             R0, [SP,#0x48+var_40]
22051A:  BLX             strncpy
22051E:  MOVS            R1, #0
220520:  STR             R0, [SP,#0x48+var_44]
220522:  STRB            R1, [R0,R4]
220524:  ADD             R1, SP, #0x48+var_44
220526:  ADD             R3, SP, #0x48+var_30
220528:  MOVS            R0, #0
22052A:  MOVS            R2, #0
22052C:  BL              sub_21FF8C
220530:  ADDS            R1, R0, #1
220532:  BEQ             loc_220576
220534:  ADD.W           R0, R5, R0,LSL#2
220538:  STR.W           R10, [R8]
22053C:  STR.W           R0, [R9]
220540:  ADD             R0, SP, #0x48+var_40
220542:  BL              sub_220A28
220546:  VCVT.F32.F64    S16, D8
22054A:  B               loc_220550
22054C:  VLDR            S16, =0.0
220550:  ADD             R0, SP, #0x48+var_34
220552:  BL              sub_220A28
220556:  LDR             R0, [SP,#0x48+var_2C]
220558:  LDR             R1, =(__stack_chk_guard_ptr - 0x22055E)
22055A:  ADD             R1, PC; __stack_chk_guard_ptr
22055C:  LDR             R1, [R1]; __stack_chk_guard
22055E:  LDR             R1, [R1]
220560:  CMP             R1, R0
220562:  ITTTT EQ
220564:  VMOVEQ          R0, S16
220568:  VPOPEQ          {D4-D9}
22056C:  POPEQ.W         {R8-R10}
220570:  POPEQ           {R4-R7,PC}
220572:  BLX             __stack_chk_fail
220576:  BLX             abort
