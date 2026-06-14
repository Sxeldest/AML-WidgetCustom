; =========================================================
; Game Engine Function: sub_1166A8
; Address            : 0x1166A8 - 0x116812
; =========================================================

1166A8:  PUSH            {R4-R7,LR}
1166AA:  ADD             R7, SP, #0xC
1166AC:  PUSH.W          {R8-R10}
1166B0:  VPUSH           {D8-D9}
1166B4:  SUB             SP, SP, #0x40
1166B6:  VMOV.I32        Q8, #0
1166BA:  ADD.W           R8, SP, #0x68+var_58
1166BE:  MOV             R5, R0
1166C0:  ADD.W           R10, SP, #0x68+var_38
1166C4:  MOV             R0, R8
1166C6:  MOV             R9, R3
1166C8:  VST1.64         {D16-D17}, [R0]!
1166CC:  VST1.64         {D16-D17}, [R0]
1166D0:  MOVS            R0, #2
1166D2:  VST1.64         {D16-D17}, [R10]
1166D6:  BL              sub_163CA4
1166DA:  LDR             R4, =(aD_0 - 0x1166E4); "%d" ...
1166DC:  MOV             R0, R10
1166DE:  LDR             R3, [R7,#arg_0]
1166E0:  ADD             R4, PC; "%d"
1166E2:  MOV             R2, R4
1166E4:  BL              sub_116828
1166E8:  MOV             R0, R10
1166EA:  MOV             R1, R8
1166EC:  BL              sub_163C40
1166F0:  LDR             R0, [R5]
1166F2:  MOV             R1, #0x3F819653
1166FA:  LDR             R2, [R0,#0x60]
1166FC:  MOV             R0, R5
1166FE:  BLX             R2
116700:  MOV             R6, R0
116702:  LDR             R0, [R5]
116704:  MOV             R1, #0x40066666
11670C:  LDR             R2, [R0,#0x60]
11670E:  MOV             R0, R5
116710:  BLX             R2
116712:  MOV             R1, R0
116714:  MOV             R0, R6
116716:  BL              sub_163C58
11671A:  LDR             R0, [R5]
11671C:  MOV             R1, R5
11671E:  LDR             R2, [R0,#0x5C]
116720:  ADD             R0, SP, #0x68+var_60
116722:  BLX             R2
116724:  LDR             R0, [R5]
116726:  VLDR            S16, [SP,#0x68+var_60]
11672A:  LDR             R1, [R0,#0x18]
11672C:  MOV             R0, R5
11672E:  BLX             R1
116730:  MOV             R6, R0
116732:  LDR             R0, [R5]
116734:  MOV             R1, R5
116736:  LDR             R2, [R0,#0x5C]
116738:  MOV             R0, SP
11673A:  BLX             R2
11673C:  LDR             R0, [R5]
11673E:  VLDR            S18, [SP,#0x68+var_64]
116742:  LDR             R1, [R0,#0x18]
116744:  MOV             R0, R5
116746:  BLX             R1
116748:  VLDR            S0, =320.0
11674C:  VMOV            S2, R6
116750:  VLDR            S4, =168.0
116754:  VMOV            S6, R0
116758:  VMLA.F32        S16, S2, S0
11675C:  MOV             R2, R8
11675E:  VMLA.F32        S18, S6, S4
116762:  VMOV            R0, S16
116766:  VMOV            R1, S18
11676A:  BL              sub_163D64
11676E:  MOVS            R0, #1
116770:  BL              sub_163CA4
116774:  MOV             R0, R10
116776:  MOV             R2, R4
116778:  MOV             R3, R9
11677A:  BL              sub_116828
11677E:  MOV             R0, R10
116780:  MOV             R1, R8
116782:  BL              sub_163C40
116786:  LDR             R0, [R5]
116788:  MOV             R1, #0x3F00A287
116790:  LDR             R2, [R0,#0x60]
116792:  MOV             R0, R5
116794:  BLX             R2
116796:  MOV             R4, R0
116798:  LDR             R0, [R5]
11679A:  MOV             R1, #0x3F8CCCCD
1167A2:  LDR             R2, [R0,#0x60]
1167A4:  MOV             R0, R5
1167A6:  BLX             R2
1167A8:  MOV             R1, R0
1167AA:  MOV             R0, R4
1167AC:  BL              sub_163C58
1167B0:  LDR             R0, [R5]
1167B2:  MOV             R1, R5
1167B4:  LDR             R2, [R0,#0x5C]
1167B6:  ADD             R0, SP, #0x68+var_60
1167B8:  BLX             R2
1167BA:  LDR             R0, [R5]
1167BC:  VLDR            S16, [SP,#0x68+var_60]
1167C0:  LDR             R1, [R0,#0x18]
1167C2:  MOV             R0, R5
1167C4:  BLX             R1
1167C6:  MOV             R4, R0
1167C8:  LDR             R0, [R5]
1167CA:  MOV             R1, R5
1167CC:  LDR             R2, [R0,#0x5C]
1167CE:  MOV             R0, SP
1167D0:  BLX             R2
1167D2:  LDR             R0, [R5]
1167D4:  VLDR            S18, [SP,#0x68+var_64]
1167D8:  LDR             R1, [R0,#0x18]
1167DA:  MOV             R0, R5
1167DC:  BLX             R1
1167DE:  VLDR            S0, =340.0
1167E2:  VMOV            S2, R4
1167E6:  VLDR            S4, =155.0
1167EA:  VMOV            S6, R0
1167EE:  VMLA.F32        S16, S2, S0
1167F2:  MOV             R2, R8
1167F4:  VMLA.F32        S18, S6, S4
1167F8:  VMOV            R0, S16
1167FC:  VMOV            R1, S18
116800:  BL              sub_163D64
116804:  MOVS            R0, #1
116806:  ADD             SP, SP, #0x40 ; '@'
116808:  VPOP            {D8-D9}
11680C:  POP.W           {R8-R10}
116810:  POP             {R4-R7,PC}
