; =========================================================
; Game Engine Function: _ZNK27CTaskSimpleHailTaxiAndPause5CloneEv
; Address            : 0x4970C0 - 0x497106
; =========================================================

4970C0:  PUSH            {R4,R6,R7,LR}
4970C2:  ADD             R7, SP, #8
4970C4:  SUB             SP, SP, #0x18
4970C6:  MOV             R4, R0
4970C8:  MOVS            R0, #dword_34; this
4970CA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4970CE:  LDR.W           R12, =(aHailtaxiandpau - 0x4970DE); "HailTaxiAndPause"
4970D2:  MOVS            R2, #0
4970D4:  LDR             R1, [R4,#0x20]
4970D6:  MOVT            R2, #0xC080
4970DA:  ADD             R12, PC; "HailTaxiAndPause"
4970DC:  MOVS            R3, #0
4970DE:  MOVW            R4, #0x117
4970E2:  STRD.W          R2, R1, [SP,#0x20+var_20]; float
4970E6:  MOVS            R1, #0; int
4970E8:  STRD.W          R4, R12, [SP,#0x20+var_18]; int
4970EC:  MOVS            R2, #0xD; int
4970EE:  STR             R3, [SP,#0x20+var_10]; int
4970F0:  MOV.W           R3, #0x40800000; int
4970F4:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
4970F8:  LDR             R1, =(_ZTV27CTaskSimpleHailTaxiAndPause_ptr - 0x4970FE)
4970FA:  ADD             R1, PC; _ZTV27CTaskSimpleHailTaxiAndPause_ptr
4970FC:  LDR             R1, [R1]; `vtable for'CTaskSimpleHailTaxiAndPause ...
4970FE:  ADDS            R1, #8
497100:  STR             R1, [R0]
497102:  ADD             SP, SP, #0x18
497104:  POP             {R4,R6,R7,PC}
