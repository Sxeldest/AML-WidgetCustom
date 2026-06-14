; =========================================================
; Game Engine Function: _ZN13CEventHandler30ComputeReallyLowHealthResponseEP6CEventP5CTaskS3_
; Address            : 0x3827D0 - 0x382818
; =========================================================

3827D0:  PUSH            {R4,R6,R7,LR}
3827D2:  ADD             R7, SP, #8
3827D4:  SUB             SP, SP, #0x10
3827D6:  MOV             R4, R0
3827D8:  LDRSH.W         R0, [R1,#0xA]
3827DC:  CMP             R0, #0xC8
3827DE:  BEQ             loc_382810
3827E0:  MOVW            R1, #0x201; unsigned int
3827E4:  CMP             R0, R1
3827E6:  BNE             loc_382814
3827E8:  MOVS            R0, #dword_24; this
3827EA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3827EE:  MOVS            R1, #0
3827F0:  ADD             R3, SP, #0x18+var_14; CVector *
3827F2:  STRD.W          R1, R1, [SP,#0x18+var_14]
3827F6:  MOVS            R2, #0; int
3827F8:  STR             R1, [SP,#0x18+var_C]
3827FA:  MOVS            R1, #1
3827FC:  STR             R1, [SP,#0x18+var_18]; bool
3827FE:  MOVS            R1, #0; CVehicle *
382800:  BLX             j__ZN31CTaskComplexEvasiveDiveAndGetUpC2EP8CVehicleiRK7CVectorb_0; CTaskComplexEvasiveDiveAndGetUp::CTaskComplexEvasiveDiveAndGetUp(CVehicle *,int,CVector const&,bool)
382804:  LDR             R1, =(_ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr - 0x38280A)
382806:  ADD             R1, PC; _ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr
382808:  LDR             R1, [R1]; `vtable for'CTaskComplexDiveFromAttachedEntityAndGetUp ...
38280A:  ADDS            R1, #8
38280C:  STR             R1, [R0]
38280E:  B               loc_382812
382810:  MOVS            R0, #0
382812:  STR             R0, [R4,#0x24]
382814:  ADD             SP, SP, #0x10
382816:  POP             {R4,R6,R7,PC}
