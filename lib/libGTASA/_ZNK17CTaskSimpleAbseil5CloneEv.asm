; =========================================================
; Game Engine Function: _ZNK17CTaskSimpleAbseil5CloneEv
; Address            : 0x498278 - 0x4982AE
; =========================================================

498278:  PUSH            {R7,LR}
49827A:  MOV             R7, SP
49827C:  SUB             SP, SP, #0x10
49827E:  MOVS            R0, #dword_20; this
498280:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
498284:  LDR             R1, =(aAbseil - 0x498290); "Abseil"
498286:  MOVS            R2, #0
498288:  MOVW            R3, #0x1A7
49828C:  ADD             R1, PC; "Abseil"
49828E:  STRD.W          R3, R1, [SP,#0x18+var_18]
498292:  MOVS            R1, #0
498294:  STR             R2, [SP,#0x18+var_10]
498296:  MOVS            R2, #0x98
498298:  MOV.W           R3, #0x40800000
49829C:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4982A0:  LDR             R1, =(_ZTV17CTaskSimpleAbseil_ptr - 0x4982A6)
4982A2:  ADD             R1, PC; _ZTV17CTaskSimpleAbseil_ptr
4982A4:  LDR             R1, [R1]; `vtable for'CTaskSimpleAbseil ...
4982A6:  ADDS            R1, #8
4982A8:  STR             R1, [R0]
4982AA:  ADD             SP, SP, #0x10
4982AC:  POP             {R7,PC}
