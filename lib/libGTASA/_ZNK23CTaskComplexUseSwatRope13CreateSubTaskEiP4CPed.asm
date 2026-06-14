; =========================================================
; Game Engine Function: _ZNK23CTaskComplexUseSwatRope13CreateSubTaskEiP4CPed
; Address            : 0x511CBC - 0x511D56
; =========================================================

511CBC:  PUSH            {R4,R6,R7,LR}
511CBE:  ADD             R7, SP, #8
511CC0:  SUB             SP, SP, #0x10
511CC2:  MOVS            R0, #0
511CC4:  CMP.W           R1, #0x1A6
511CC8:  BGT             loc_511CF6
511CCA:  CMP             R1, #0xC8
511CCC:  BEQ             loc_511D2A
511CCE:  CMP             R1, #0xCA
511CD0:  BNE             loc_511D52
511CD2:  MOVS            R0, #off_18; this
511CD4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511CD8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
511CDC:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x511CEC)
511CDE:  MOVW            R3, #:lower16:(elf_hash_chain+0x8538)
511CE2:  MOVS            R2, #0
511CE4:  MOVT            R3, #:upper16:(elf_hash_chain+0x8538)
511CE8:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
511CEA:  STRH            R2, [R0,#0x10]
511CEC:  STR             R3, [R0,#0x14]
511CEE:  LDR             R1, [R1]; unsigned int
511CF0:  STRD.W          R2, R2, [R0,#8]
511CF4:  B               loc_511D3A
511CF6:  MOVW            R3, #0x516
511CFA:  CMP             R1, R3
511CFC:  BEQ             loc_511D42
511CFE:  MOVW            R4, #0x1A7
511D02:  CMP             R1, R4
511D04:  BNE             loc_511D52
511D06:  MOVS            R0, #dword_20; this
511D08:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511D0C:  LDR             R1, =(aAbseil - 0x511D18); "Abseil"
511D0E:  MOVS            R2, #0
511D10:  MOV.W           R3, #0x40800000
511D14:  ADD             R1, PC; "Abseil"
511D16:  STRD.W          R4, R1, [SP,#0x18+var_18]
511D1A:  MOVS            R1, #0
511D1C:  STR             R2, [SP,#0x18+var_10]
511D1E:  MOVS            R2, #0x98
511D20:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
511D24:  LDR             R1, =(_ZTV17CTaskSimpleAbseil_ptr - 0x511D2A)
511D26:  ADD             R1, PC; _ZTV17CTaskSimpleAbseil_ptr ; unsigned int
511D28:  B               loc_511D38
511D2A:  MOVS            R0, #byte_8; this
511D2C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511D30:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
511D34:  LDR             R1, =(_ZTV15CTaskSimpleNone_ptr - 0x511D3A)
511D36:  ADD             R1, PC; _ZTV15CTaskSimpleNone_ptr
511D38:  LDR             R1, [R1]; `vtable for'CTaskSimpleAbseil
511D3A:  ADDS            R1, #8
511D3C:  STR             R1, [R0]
511D3E:  ADD             SP, SP, #0x10
511D40:  POP             {R4,R6,R7,PC}
511D42:  LDR             R1, [R2,#0x1C]
511D44:  MOVS            R0, #0
511D46:  STRD.W          R0, R0, [R2,#0x48]
511D4A:  STR             R0, [R2,#0x50]
511D4C:  ORR.W           R1, R1, #1
511D50:  STR             R1, [R2,#0x1C]
511D52:  ADD             SP, SP, #0x10
511D54:  POP             {R4,R6,R7,PC}
