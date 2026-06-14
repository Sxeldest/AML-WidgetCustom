; =========================================================
; Game Engine Function: _ZN27CTaskComplexGotoDoorAndOpenC2ERK7CVectorS2_
; Address            : 0x5259D0 - 0x525A16
; =========================================================

5259D0:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexGotoDoorAndOpen::CTaskComplexGotoDoorAndOpen(CVector const&, CVector const&)'
5259D2:  ADD             R7, SP, #8
5259D4:  MOV             R4, R2
5259D6:  MOV             R5, R1
5259D8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5259DC:  LDR             R1, =(_ZTV27CTaskComplexGotoDoorAndOpen_ptr - 0x5259E6)
5259DE:  MOVS            R2, #0
5259E0:  STR             R2, [R0,#0xC]
5259E2:  ADD             R1, PC; _ZTV27CTaskComplexGotoDoorAndOpen_ptr
5259E4:  LDR             R1, [R1]; `vtable for'CTaskComplexGotoDoorAndOpen ...
5259E6:  ADDS            R1, #8
5259E8:  STR             R1, [R0]
5259EA:  VLDR            D16, [R5]
5259EE:  LDR             R1, [R5,#8]
5259F0:  STR             R1, [R0,#0x18]
5259F2:  VSTR            D16, [R0,#0x10]
5259F6:  VLDR            D16, [R4]
5259FA:  LDR             R1, [R4,#8]
5259FC:  STR             R1, [R0,#0x24]
5259FE:  STRH            R2, [R0,#0x30]
525A00:  VSTR            D16, [R0,#0x1C]
525A04:  LDRB.W          R1, [R0,#0x34]
525A08:  STRD.W          R2, R2, [R0,#0x28]
525A0C:  AND.W           R1, R1, #0xF4
525A10:  STRB.W          R1, [R0,#0x34]
525A14:  POP             {R4,R5,R7,PC}
