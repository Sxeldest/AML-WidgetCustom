; =========================================================
; Game Engine Function: _ZNK19CTaskSimpleDetonate5CloneEv
; Address            : 0x498098 - 0x4980DE
; =========================================================

498098:  PUSH            {R4,R6,R7,LR}
49809A:  ADD             R7, SP, #8
49809C:  SUB             SP, SP, #0x18
49809E:  MOV             R4, R0
4980A0:  MOVS            R0, #dword_34; this
4980A2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4980A6:  LDR.W           R12, =(aDetonate - 0x4980B6); "Detonate"
4980AA:  MOVS            R2, #0
4980AC:  LDR             R1, [R4,#0x20]
4980AE:  MOVT            R2, #0xC080
4980B2:  ADD             R12, PC; "Detonate"
4980B4:  MOVS            R3, #0
4980B6:  MOVW            R4, #0x1A3
4980BA:  STRD.W          R2, R1, [SP,#0x20+var_20]; float
4980BE:  MOVS            R1, #0; int
4980C0:  STRD.W          R4, R12, [SP,#0x20+var_18]; int
4980C4:  MOVS            R2, #0x30 ; '0'; int
4980C6:  STR             R3, [SP,#0x20+var_10]; int
4980C8:  MOV.W           R3, #0x40800000; int
4980CC:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
4980D0:  LDR             R1, =(_ZTV19CTaskSimpleDetonate_ptr - 0x4980D6)
4980D2:  ADD             R1, PC; _ZTV19CTaskSimpleDetonate_ptr
4980D4:  LDR             R1, [R1]; `vtable for'CTaskSimpleDetonate ...
4980D6:  ADDS            R1, #8
4980D8:  STR             R1, [R0]
4980DA:  ADD             SP, SP, #0x18
4980DC:  POP             {R4,R6,R7,PC}
