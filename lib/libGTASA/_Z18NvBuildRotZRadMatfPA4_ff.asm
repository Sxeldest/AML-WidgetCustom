; =========================================================
; Game Engine Function: _Z18NvBuildRotZRadMatfPA4_ff
; Address            : 0x2786E0 - 0x278732
; =========================================================

2786E0:  PUSH            {R4,R5,R7,LR}
2786E2:  ADD             R7, SP, #8
2786E4:  VPUSH           {D8-D10}
2786E8:  MOV             R5, R0
2786EA:  MOVS            R0, #0
2786EC:  STRD.W          R0, R0, [R5,#8]
2786F0:  MOV.W           R0, #0x3F800000
2786F4:  MOV             R4, R1
2786F6:  STR             R0, [R5,#0x28]
2786F8:  STR             R0, [R5,#0x3C]
2786FA:  MOV             R0, R4; x
2786FC:  VMOV.I32        Q4, #0
278700:  BLX             sinf
278704:  STR             R0, [R5,#4]
278706:  VMOV            S20, R0
27870A:  MOV             R0, R4; x
27870C:  BLX             cosf
278710:  VNEG.F32        S0, S20
278714:  STR             R0, [R5]
278716:  STR             R0, [R5,#0x14]
278718:  ADD.W           R0, R5, #0x18
27871C:  VST1.32         {D8-D9}, [R0]
278720:  ADD.W           R0, R5, #0x2C ; ','
278724:  VST1.32         {D8-D9}, [R0]
278728:  VSTR            S0, [R5,#0x10]
27872C:  VPOP            {D8-D10}
278730:  POP             {R4,R5,R7,PC}
