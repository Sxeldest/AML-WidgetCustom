; =========================================================
; Game Engine Function: _ZN13CEventHandler24ComputeLowHealthResponseEP6CEventP5CTaskS3_
; Address            : 0x382784 - 0x3827CC
; =========================================================

382784:  PUSH            {R4,R6,R7,LR}
382786:  ADD             R7, SP, #8
382788:  SUB             SP, SP, #0x10
38278A:  MOV             R4, R0
38278C:  LDRSH.W         R0, [R1,#0xA]
382790:  CMP             R0, #0xC8
382792:  BEQ             loc_3827C4
382794:  MOVW            R1, #0x201; unsigned int
382798:  CMP             R0, R1
38279A:  BNE             loc_3827C8
38279C:  MOVS            R0, #dword_24; this
38279E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3827A2:  MOVS            R1, #0
3827A4:  ADD             R3, SP, #0x18+var_14; CVector *
3827A6:  STRD.W          R1, R1, [SP,#0x18+var_14]
3827AA:  MOVS            R2, #0; int
3827AC:  STR             R1, [SP,#0x18+var_C]
3827AE:  MOVS            R1, #1
3827B0:  STR             R1, [SP,#0x18+var_18]; bool
3827B2:  MOVS            R1, #0; CVehicle *
3827B4:  BLX             j__ZN31CTaskComplexEvasiveDiveAndGetUpC2EP8CVehicleiRK7CVectorb_0; CTaskComplexEvasiveDiveAndGetUp::CTaskComplexEvasiveDiveAndGetUp(CVehicle *,int,CVector const&,bool)
3827B8:  LDR             R1, =(_ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr - 0x3827BE)
3827BA:  ADD             R1, PC; _ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr
3827BC:  LDR             R1, [R1]; `vtable for'CTaskComplexDiveFromAttachedEntityAndGetUp ...
3827BE:  ADDS            R1, #8
3827C0:  STR             R1, [R0]
3827C2:  B               loc_3827C6
3827C4:  MOVS            R0, #0
3827C6:  STR             R0, [R4,#0x24]
3827C8:  ADD             SP, SP, #0x10
3827CA:  POP             {R4,R6,R7,PC}
