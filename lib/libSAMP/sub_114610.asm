; =========================================================
; Game Engine Function: sub_114610
; Address            : 0x114610 - 0x1146F4
; =========================================================

114610:  PUSH            {R4-R7,LR}
114612:  ADD             R7, SP, #0xC
114614:  PUSH.W          {R8,R9,R11}
114618:  VPUSH           {D8-D9}
11461C:  SUB             SP, SP, #0x50
11461E:  LDR             R3, =(a09d - 0x11462C); "%09d" ...
114620:  ADD.W           R9, SP, #0x78+var_38
114624:  MOVS            R6, #0
114626:  MOV             R8, R2
114628:  ADD             R3, PC; "%09d"
11462A:  MOV             R5, R0
11462C:  STR             R1, [SP,#0x78+var_78]
11462E:  MOV             R0, R9
114630:  MOVS            R1, #0xC
114632:  MOVS            R2, #0xC
114634:  STRD.W          R6, R6, [SP,#0x78+var_38]
114638:  STR             R6, [SP,#0x78+var_30]
11463A:  BL              sub_113E38
11463E:  LDR.W           R0, [R5,#-0x18]!
114642:  MOV             R1, #0x3F333333
11464A:  LDR             R2, [R0,#0x18]
11464C:  MOV             R0, R5
11464E:  BLX             R2
114650:  MOV             R4, R0
114652:  LDR             R0, [R5]
114654:  MOV             R1, #0x3FA66666
11465C:  LDR             R2, [R0,#0x18]
11465E:  MOV             R0, R5
114660:  BLX             R2
114662:  MOV             R1, R0
114664:  MOV             R0, R4
114666:  BL              sub_163C58
11466A:  MOVS            R0, #0
11466C:  BL              sub_163CA4
114670:  MOVS            R0, #0
114672:  BL              sub_163D1C
114676:  MOVS            R0, #2
114678:  BL              sub_163D80
11467C:  MOV.W           R0, #0xFFFFFFFF
114680:  STR             R0, [SP,#0x78+var_3C]
114682:  ADD             R0, SP, #0x78+var_3C
114684:  BL              sub_163C74
114688:  ADD             R4, SP, #0x78+var_58
11468A:  VMOV.I32        Q8, #0
11468E:  STR             R6, [SP,#0x78+var_44]
114690:  MOV             R0, R4
114692:  MOV             R1, R4
114694:  VST1.64         {D16-D17}, [R0]!
114698:  STR             R6, [R0]
11469A:  MOV             R0, R9
11469C:  BL              sub_163C40
1146A0:  LDR             R0, [R5]
1146A2:  MOV             R1, R5
1146A4:  LDR             R2, [R0,#0x14]
1146A6:  ADD             R0, SP, #0x78+var_60
1146A8:  BLX             R2
1146AA:  LDR             R0, [R5]
1146AC:  MOV             R1, R5
1146AE:  VLDR            S16, [SP,#0x78+var_60]
1146B2:  LDR             R2, [R0,#0x14]
1146B4:  ADD             R0, SP, #0x78+var_68
1146B6:  BLX             R2
1146B8:  LDR             R0, [R5]
1146BA:  MOV             R1, R5
1146BC:  VLDR            S18, [SP,#0x78+var_64]
1146C0:  LDR             R2, [R0,#0x4C]
1146C2:  ADD             R0, SP, #0x78+var_70
1146C4:  BLX             R2
1146C6:  VMOV.F32        S0, #0.5
1146CA:  VLDR            S4, [SP,#0x78+var_6C]
1146CE:  VMOV            S2, R8
1146D2:  MOV             R2, R4
1146D4:  VMLS.F32        S18, S4, S2
1146D8:  VMOV            R1, S18
1146DC:  VMUL.F32        S0, S16, S0
1146E0:  VMOV            R0, S0
1146E4:  BL              sub_163D64
1146E8:  ADD             SP, SP, #0x50 ; 'P'
1146EA:  VPOP            {D8-D9}
1146EE:  POP.W           {R8,R9,R11}
1146F2:  POP             {R4-R7,PC}
