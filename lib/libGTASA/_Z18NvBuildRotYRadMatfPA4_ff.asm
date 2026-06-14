; =========================================================
; Game Engine Function: _Z18NvBuildRotYRadMatfPA4_ff
; Address            : 0x278660 - 0x2786C2
; =========================================================

278660:  PUSH            {R4-R7,LR}
278662:  ADD             R7, SP, #0xC
278664:  PUSH.W          {R11}
278668:  VPUSH           {D8-D12}
27866C:  MOV             R5, R0
27866E:  ADR             R0, dword_2786D0
278670:  VLD1.64         {D8-D9}, [R0@128]
278674:  MOVS            R0, #0
278676:  MOV             R4, R1
278678:  STR             R0, [R5,#4]
27867A:  STR             R0, [R5,#0x1C]
27867C:  STR             R0, [R5,#0x24]
27867E:  MOV.W           R0, #0x3F800000
278682:  STR             R0, [R5,#0x3C]
278684:  MOV             R0, R4; x
278686:  BLX             sinf
27868A:  MOV             R6, R0
27868C:  MOV             R0, R4; x
27868E:  VMOV.I32        Q5, #0
278692:  VMOV            S24, R6
278696:  BLX             cosf
27869A:  VNEG.F32        S0, S24
27869E:  STR             R0, [R5]
2786A0:  STR             R6, [R5,#0x20]
2786A2:  STR             R0, [R5,#0x28]
2786A4:  ADD.W           R0, R5, #0xC
2786A8:  VST1.32         {D8-D9}, [R0]
2786AC:  ADD.W           R0, R5, #0x2C ; ','
2786B0:  VST1.32         {D10-D11}, [R0]
2786B4:  VSTR            S0, [R5,#8]
2786B8:  VPOP            {D8-D12}
2786BC:  POP.W           {R11}
2786C0:  POP             {R4-R7,PC}
