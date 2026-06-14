; =========================================================
; Game Engine Function: _ZNK15CTaskSimpleChat5CloneEv
; Address            : 0x497EBC - 0x497F02
; =========================================================

497EBC:  PUSH            {R4,R6,R7,LR}
497EBE:  ADD             R7, SP, #8
497EC0:  SUB             SP, SP, #0x18
497EC2:  MOV             R4, R0
497EC4:  MOVS            R0, #dword_34; this
497EC6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
497ECA:  LDR.W           R12, =(aChat - 0x497EDA); "Chat"
497ECE:  MOVS            R2, #0
497ED0:  LDR             R1, [R4,#0x20]
497ED2:  MOVT            R2, #0xC080
497ED6:  ADD             R12, PC; "Chat"
497ED8:  MOVS            R3, #0
497EDA:  MOV.W           R4, #0x1A0
497EDE:  STRD.W          R2, R1, [SP,#0x20+var_20]; float
497EE2:  MOVS            R1, #0; int
497EE4:  STRD.W          R4, R12, [SP,#0x20+var_18]; int
497EE8:  MOVS            R2, #0xC; int
497EEA:  STR             R3, [SP,#0x20+var_10]; int
497EEC:  MOV.W           R3, #0x40800000; int
497EF0:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
497EF4:  LDR             R1, =(_ZTV15CTaskSimpleChat_ptr - 0x497EFA)
497EF6:  ADD             R1, PC; _ZTV15CTaskSimpleChat_ptr
497EF8:  LDR             R1, [R1]; `vtable for'CTaskSimpleChat ...
497EFA:  ADDS            R1, #8
497EFC:  STR             R1, [R0]
497EFE:  ADD             SP, SP, #0x18
497F00:  POP             {R4,R6,R7,PC}
