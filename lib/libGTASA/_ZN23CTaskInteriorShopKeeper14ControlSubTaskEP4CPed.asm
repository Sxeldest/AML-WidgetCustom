; =========================================================
; Game Engine Function: _ZN23CTaskInteriorShopKeeper14ControlSubTaskEP4CPed
; Address            : 0x529478 - 0x5294A6
; =========================================================

529478:  LDRB            R1, [R0,#0xC]; unsigned int
52947A:  CMP             R1, #0
52947C:  ITT EQ
52947E:  LDREQ           R0, [R0,#8]
529480:  BXEQ            LR
529482:  PUSH            {R4,R6,R7,LR}
529484:  ADD             R7, SP, #0x10+var_8
529486:  SUB             SP, SP, #8
529488:  MOVS            R4, #0
52948A:  STRB            R4, [R0,#0xC]
52948C:  MOVS            R0, #dword_20; this
52948E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529492:  MOVS            R1, #0x56 ; 'V'
529494:  MOVW            R2, #0x147
529498:  MOV.W           R3, #0x40800000
52949C:  STR             R4, [SP,#0x18+var_18]
52949E:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
5294A2:  ADD             SP, SP, #8
5294A4:  POP             {R4,R6,R7,PC}
