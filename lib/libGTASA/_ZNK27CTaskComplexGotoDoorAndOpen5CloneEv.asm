; =========================================================
; Game Engine Function: _ZNK27CTaskComplexGotoDoorAndOpen5CloneEv
; Address            : 0x525A8C - 0x525B2C
; =========================================================

525A8C:  PUSH            {R4-R7,LR}
525A8E:  ADD             R7, SP, #0xC
525A90:  PUSH.W          {R11}
525A94:  MOV             R5, R0
525A96:  MOVS            R0, #dword_38; this
525A98:  LDRB.W          R6, [R5,#0x34]
525A9C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
525AA0:  MOV             R4, R0
525AA2:  TST.W           R6, #1
525AA6:  BNE             loc_525AE8
525AA8:  MOV             R0, R4; this
525AAA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
525AAE:  LDR             R0, =(_ZTV27CTaskComplexGotoDoorAndOpen_ptr - 0x525AB8)
525AB0:  MOVS            R1, #0
525AB2:  STR             R1, [R4,#0xC]
525AB4:  ADD             R0, PC; _ZTV27CTaskComplexGotoDoorAndOpen_ptr
525AB6:  LDR             R0, [R0]; `vtable for'CTaskComplexGotoDoorAndOpen ...
525AB8:  ADDS            R0, #8
525ABA:  STR             R0, [R4]
525ABC:  VLDR            D16, [R5,#0x10]
525AC0:  LDR             R0, [R5,#0x18]
525AC2:  STR             R0, [R4,#0x18]
525AC4:  VSTR            D16, [R4,#0x10]
525AC8:  VLDR            D16, [R5,#0x1C]
525ACC:  LDR             R0, [R5,#0x24]
525ACE:  STR             R0, [R4,#0x24]
525AD0:  STRH            R1, [R4,#0x30]
525AD2:  VSTR            D16, [R4,#0x1C]
525AD6:  LDRB.W          R0, [R4,#0x34]
525ADA:  STRD.W          R1, R1, [R4,#0x28]
525ADE:  AND.W           R0, R0, #0xF4
525AE2:  STRB.W          R0, [R4,#0x34]
525AE6:  B               loc_525B24
525AE8:  MOV             R0, R4; this
525AEA:  LDR             R5, [R5,#0xC]
525AEC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
525AF0:  LDR             R0, =(_ZTV27CTaskComplexGotoDoorAndOpen_ptr - 0x525AFC)
525AF2:  MOVS            R1, #0
525AF4:  STRH            R1, [R4,#0x30]
525AF6:  CMP             R5, #0
525AF8:  ADD             R0, PC; _ZTV27CTaskComplexGotoDoorAndOpen_ptr
525AFA:  LDRB.W          R2, [R4,#0x34]
525AFE:  STRD.W          R1, R1, [R4,#0x28]
525B02:  MOV             R1, R4
525B04:  LDR             R0, [R0]; `vtable for'CTaskComplexGotoDoorAndOpen ...
525B06:  ADD.W           R0, R0, #8
525B0A:  STR             R0, [R4]
525B0C:  AND.W           R0, R2, #0xF0
525B10:  ORR.W           R0, R0, #1
525B14:  STRB.W          R0, [R4,#0x34]
525B18:  STR.W           R5, [R1,#0xC]!; CEntity **
525B1C:  BEQ             loc_525B24
525B1E:  MOV             R0, R5; this
525B20:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
525B24:  MOV             R0, R4
525B26:  POP.W           {R11}
525B2A:  POP             {R4-R7,PC}
