; =========================================================
; Game Engine Function: sub_1726F8
; Address            : 0x1726F8 - 0x172780
; =========================================================

1726F8:  PUSH            {R4-R7,LR}
1726FA:  ADD             R7, SP, #0xC
1726FC:  PUSH.W          {R8,R9,R11}
172700:  VPUSH           {D8-D9}
172704:  SUB             SP, SP, #8
172706:  MOV             R8, R0
172708:  ADDS            R0, #0x28 ; '('; int
17270A:  MOVS            R1, #0x60 ; '`'; n
17270C:  BLX             sub_22178C
172710:  VMOV.I32        Q8, #0
172714:  ADR             R0, dword_172780
172716:  VMOV.F32        S18, #12.0
17271A:  VLD1.64         {D18-D19}, [R0]
17271E:  MOV             R0, R8
172720:  MOVS            R4, #0
172722:  VST1.32         {D16-D17}, [R0]!
172726:  ADD.W           R5, R8, #0x2C ; ','
17272A:  ADD.W           R9, SP, #0x30+var_2C
17272E:  MOV             R6, SP
172730:  STR             R4, [R0]
172732:  ADD.W           R0, R8, #0x14
172736:  VST1.32         {D18-D19}, [R0]!
17273A:  VLDR            S16, =3.1416
17273E:  STR             R4, [R0]
172740:  VMOV            S0, R4
172744:  MOV             R1, R9
172746:  MOV             R2, R6
172748:  VCVT.F32.S32    S0, S0
17274C:  VADD.F32        S0, S0, S0
172750:  VMUL.F32        S0, S0, S16
172754:  VDIV.F32        S0, S0, S18
172758:  VMOV            R0, S0
17275C:  BLX             sincosf
172760:  LDRD.W          R0, R1, [SP,#0x30+var_30]
172764:  ADDS            R4, #1
172766:  STR.W           R0, [R5,#-4]
17276A:  CMP             R4, #0xC
17276C:  STR.W           R1, [R5],#8
172770:  BNE             loc_172740
172772:  MOV             R0, R8
172774:  ADD             SP, SP, #8
172776:  VPOP            {D8-D9}
17277A:  POP.W           {R8,R9,R11}
17277E:  POP             {R4-R7,PC}
