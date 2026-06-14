; =========================================================
; Game Engine Function: sub_1444EC
; Address            : 0x1444EC - 0x144556
; =========================================================

1444EC:  PUSH            {R4-R7,LR}
1444EE:  ADD             R7, SP, #0xC
1444F0:  PUSH.W          {R8-R10}
1444F4:  VPUSH           {D8}
1444F8:  SUB             SP, SP, #0x10; float
1444FA:  CMP             R1, #0x63 ; 'c'
1444FC:  ITT LS
1444FE:  LDRLS.W         R8, [R7,#arg_4]
144502:  CMPLS.W         R8, #0x7E ; '~'
144506:  BHI             loc_14454A
144508:  ADD.W           R0, R0, R1,LSL#2
14450C:  LDRD.W          R10, R9, [R7,#arg_8]
144510:  VLDR            S16, [R7,#arg_0]
144514:  ADD.W           R6, R0, #0x220
144518:  LDR.W           R1, [R0,#0x220]
14451C:  MOV             R4, R3
14451E:  MOV             R5, R2
144520:  CBZ             R1, loc_14452E
144522:  LDR             R0, =(unk_B9528 - 0x144528)
144524:  ADD             R0, PC; unk_B9528
144526:  BL              sub_107188
14452A:  MOVS            R0, #0
14452C:  STR             R0, [R6]
14452E:  LDR             R0, =(off_234970 - 0x14453A)
144530:  MOV             R1, R8; int
144532:  MOV             R2, R5; int
144534:  MOV             R3, R4; int
144536:  ADD             R0, PC; off_234970
144538:  STRD.W          R10, R9, [SP,#0x30+var_2C]; int
14453C:  VSTR            S16, [SP,#0x30+var_30]
144540:  LDR             R0, [R0]; dword_23DEF0
144542:  LDR             R0, [R0]; int
144544:  BL              sub_F9904
144548:  STR             R0, [R6]
14454A:  ADD             SP, SP, #0x10
14454C:  VPOP            {D8}
144550:  POP.W           {R8-R10}
144554:  POP             {R4-R7,PC}
