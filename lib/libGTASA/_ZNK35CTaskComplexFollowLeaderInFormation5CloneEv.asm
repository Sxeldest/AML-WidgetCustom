; =========================================================
; Game Engine Function: _ZNK35CTaskComplexFollowLeaderInFormation5CloneEv
; Address            : 0x5461BC - 0x546216
; =========================================================

5461BC:  PUSH            {R4-R7,LR}
5461BE:  ADD             R7, SP, #0xC
5461C0:  PUSH.W          {R8,R9,R11}
5461C4:  MOV             R6, R0
5461C6:  MOVS            R0, #word_28; this
5461C8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5461CC:  LDRD.W          R8, R5, [R6,#0xC]
5461D0:  MOV             R4, R0
5461D2:  LDR.W           R9, [R6,#0x24]
5461D6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5461DA:  LDR             R0, =(_ZTV35CTaskComplexFollowLeaderInFormation_ptr - 0x5461E8)
5461DC:  MOV             R1, R4
5461DE:  STR.W           R8, [R4,#0xC]
5461E2:  MOVS            R2, #4
5461E4:  ADD             R0, PC; _ZTV35CTaskComplexFollowLeaderInFormation_ptr
5461E6:  ADD.W           R3, R4, #0x1C
5461EA:  CMP             R5, #0
5461EC:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowLeaderInFormation ...
5461EE:  ADD.W           R0, R0, #8
5461F2:  STR             R0, [R4]
5461F4:  STR.W           R5, [R1,#0x10]!; CEntity **
5461F8:  VLDR            D16, [R6,#0x14]
5461FC:  LDR             R0, [R6,#0x1C]
5461FE:  STM.W           R3, {R0,R2,R9}
546202:  VSTR            D16, [R4,#0x14]
546206:  ITT NE
546208:  MOVNE           R0, R5; this
54620A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
54620E:  MOV             R0, R4
546210:  POP.W           {R8,R9,R11}
546214:  POP             {R4-R7,PC}
