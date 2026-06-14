; =========================================================
; Game Engine Function: _ZNK40CTaskSimpleWaitUntilLeaderAreaCodesMatch5CloneEv
; Address            : 0x4F2198 - 0x4F21FE
; =========================================================

4F2198:  PUSH            {R4-R7,LR}
4F219A:  ADD             R7, SP, #0xC
4F219C:  PUSH.W          {R11}
4F21A0:  MOV             R5, R0
4F21A2:  MOVS            R0, #dword_38; this
4F21A4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F21A8:  MOV             R4, R0
4F21AA:  LDR             R5, [R5,#0x20]
4F21AC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F21B0:  LDR             R0, =(_ZTV34CTaskSimpleWaitUntilAreaCodesMatch_ptr - 0x4F21BE)
4F21B2:  MOVS            R6, #0
4F21B4:  MOV.W           R2, #0x41000000
4F21B8:  STRH            R6, [R4,#0x14]
4F21BA:  ADD             R0, PC; _ZTV34CTaskSimpleWaitUntilAreaCodesMatch_ptr
4F21BC:  STR             R2, [R4,#0x1C]
4F21BE:  MOVS            R2, #1
4F21C0:  MOV.W           R1, #0x3E8
4F21C4:  LDR             R0, [R0]; `vtable for'CTaskSimpleWaitUntilAreaCodesMatch ...
4F21C6:  CMP             R5, #0
4F21C8:  STRH            R2, [R4,#0x18]
4F21CA:  STRD.W          R1, R6, [R4,#8]
4F21CE:  MOV             R1, R4
4F21D0:  STR             R6, [R4,#0x10]
4F21D2:  ADD.W           R0, R0, #8
4F21D6:  STR             R0, [R4]
4F21D8:  STR.W           R5, [R1,#0x20]!; CEntity **
4F21DC:  ITT NE
4F21DE:  MOVNE           R0, R5; this
4F21E0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F21E4:  LDR             R0, =(_ZTV40CTaskSimpleWaitUntilLeaderAreaCodesMatch_ptr - 0x4F21EE)
4F21E6:  STRB.W          R6, [R4,#0x24]
4F21EA:  ADD             R0, PC; _ZTV40CTaskSimpleWaitUntilLeaderAreaCodesMatch_ptr
4F21EC:  STRB.W          R6, [R4,#0x34]
4F21F0:  LDR             R0, [R0]; `vtable for'CTaskSimpleWaitUntilLeaderAreaCodesMatch ...
4F21F2:  ADDS            R0, #8
4F21F4:  STR             R0, [R4]
4F21F6:  MOV             R0, R4
4F21F8:  POP.W           {R11}
4F21FC:  POP             {R4-R7,PC}
