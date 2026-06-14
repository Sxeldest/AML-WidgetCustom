; =========================================================
; Game Engine Function: _ZNK27CTaskSimpleCarSetTempAction5CloneEv
; Address            : 0x4FF844 - 0x4FF8DA
; =========================================================

4FF844:  PUSH            {R4-R7,LR}
4FF846:  ADD             R7, SP, #0xC
4FF848:  PUSH.W          {R8,R9,R11}
4FF84C:  MOV             R6, R0
4FF84E:  MOVS            R0, #dword_68; this
4FF850:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FF854:  LDR             R5, [R6,#8]
4FF856:  MOV             R4, R0
4FF858:  LDRD.W          R8, R9, [R6,#0x60]
4FF85C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4FF860:  LDR             R0, =(_ZTV19CTaskSimpleCarDrive_ptr - 0x4FF86E)
4FF862:  VMOV.I32        Q8, #0
4FF866:  MOVS            R6, #0
4FF868:  CMP             R5, #0
4FF86A:  ADD             R0, PC; _ZTV19CTaskSimpleCarDrive_ptr
4FF86C:  LDR             R1, [R0]; `vtable for'CTaskSimpleCarDrive ...
4FF86E:  ADD.W           R0, R4, #0xC
4FF872:  VST1.32         {D16-D17}, [R0]
4FF876:  ADD.W           R1, R1, #8
4FF87A:  STRH            R6, [R4,#0x1C]
4FF87C:  STR.W           R6, [R4,#0x56]
4FF880:  STR.W           R6, [R4,#0x52]
4FF884:  STRD.W          R6, R6, [R4,#0x4C]
4FF888:  LDRB.W          R0, [R4,#0x5C]
4FF88C:  STR             R1, [R4]
4FF88E:  MOV.W           R1, #2
4FF892:  BFI.W           R0, R1, #2, #4
4FF896:  MOV             R1, R4
4FF898:  STRB.W          R0, [R4,#0x5C]
4FF89C:  STR.W           R5, [R1,#8]!; CEntity **
4FF8A0:  BEQ             loc_4FF8AC
4FF8A2:  MOV             R0, R5; this
4FF8A4:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FF8A8:  LDRB.W          R0, [R4,#0x5C]
4FF8AC:  LDR             R1, =(_ZTV27CTaskSimpleCarSetTempAction_ptr - 0x4FF8BC)
4FF8AE:  MOV.W           R2, #0xFFFFFFFF
4FF8B2:  AND.W           R0, R0, #0xFC
4FF8B6:  STR             R2, [R4,#0x20]
4FF8B8:  ADD             R1, PC; _ZTV27CTaskSimpleCarSetTempAction_ptr
4FF8BA:  STRB.W          R0, [R4,#0x5C]
4FF8BE:  STRD.W          R6, R6, [R4,#0x3C]
4FF8C2:  LDR             R0, [R1]; `vtable for'CTaskSimpleCarSetTempAction ...
4FF8C4:  STR             R6, [R4,#0x44]
4FF8C6:  ADDS            R0, #8
4FF8C8:  STR.W           R8, [R4,#0x60]
4FF8CC:  STR.W           R9, [R4,#0x64]
4FF8D0:  STR             R0, [R4]
4FF8D2:  MOV             R0, R4
4FF8D4:  POP.W           {R8,R9,R11}
4FF8D8:  POP             {R4-R7,PC}
