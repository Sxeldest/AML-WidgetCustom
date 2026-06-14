; =========================================================
; Game Engine Function: _ZN13CEventHandler28ComputeCarUpsideDownResponseEP6CEventP5CTaskS3_
; Address            : 0x383754 - 0x3837CC
; =========================================================

383754:  PUSH            {R4-R7,LR}
383756:  ADD             R7, SP, #0xC
383758:  PUSH.W          {R11}
38375C:  SUB             SP, SP, #8
38375E:  MOV             R4, R0
383760:  LDR             R0, [R4]
383762:  LDRB.W          R2, [R0,#0x485]
383766:  LSLS            R2, R2, #0x1F
383768:  ITT NE
38376A:  LDRNE.W         R0, [R0,#0x590]
38376E:  CMPNE           R0, #0
383770:  BEQ             loc_3837C4
383772:  LDR             R1, [R1,#0xC]; unsigned int
383774:  CMP             R0, R1
383776:  BNE             loc_3837C4
383778:  MOVS            R0, #dword_34; this
38377A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38377E:  MOV             R5, R0
383780:  LDR             R0, [R4]
383782:  LDR.W           R6, [R0,#0x590]
383786:  BLX             rand
38378A:  UXTH            R0, R0
38378C:  VLDR            S2, =0.000015259
383790:  VMOV            S0, R0
383794:  MOVS            R0, #0
383796:  MOV             R1, R6; CVehicle *
383798:  MOVS            R2, #0; int
38379A:  VCVT.F32.S32    S0, S0
38379E:  STR             R0, [SP,#0x18+var_14]; bool
3837A0:  MOVS            R0, #1
3837A2:  VMUL.F32        S0, S0, S2
3837A6:  VLDR            S2, =300.0
3837AA:  VMUL.F32        S0, S0, S2
3837AE:  VCVT.S32.F32    S0, S0
3837B2:  STR             R0, [SP,#0x18+var_18]; bool
3837B4:  VMOV            R0, S0
3837B8:  ADD.W           R3, R0, #0x64 ; 'd'; int
3837BC:  MOV             R0, R5; this
3837BE:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
3837C2:  STR             R5, [R4,#0x24]
3837C4:  ADD             SP, SP, #8
3837C6:  POP.W           {R11}
3837CA:  POP             {R4-R7,PC}
