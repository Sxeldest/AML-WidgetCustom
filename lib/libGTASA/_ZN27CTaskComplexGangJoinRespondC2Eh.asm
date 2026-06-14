; =========================================================
; Game Engine Function: _ZN27CTaskComplexGangJoinRespondC2Eh
; Address            : 0x51B130 - 0x51B14C
; =========================================================

51B130:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexGangJoinRespond::CTaskComplexGangJoinRespond(unsigned char)'
51B132:  ADD             R7, SP, #8
51B134:  MOV             R4, R1
51B136:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51B13A:  LDR             R1, =(_ZTV27CTaskComplexGangJoinRespond_ptr - 0x51B144)
51B13C:  MOVS            R2, #0
51B13E:  STRB            R4, [R0,#0xC]
51B140:  ADD             R1, PC; _ZTV27CTaskComplexGangJoinRespond_ptr
51B142:  STRB            R2, [R0,#0xD]
51B144:  LDR             R1, [R1]; `vtable for'CTaskComplexGangJoinRespond ...
51B146:  ADDS            R1, #8
51B148:  STR             R1, [R0]
51B14A:  POP             {R4,R6,R7,PC}
