; =========================================================
; Game Engine Function: _ZNK18CTaskSimpleJetPack5CloneEv
; Address            : 0x533530 - 0x5335C8
; =========================================================

533530:  PUSH            {R4-R7,LR}
533532:  ADD             R7, SP, #0xC
533534:  PUSH.W          {R8-R10}
533538:  MOV             R6, R0
53353A:  MOVS            R0, #dword_70; this
53353C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
533540:  LDRD.W          R5, R10, [R6,#0x54]
533544:  MOV             R4, R0
533546:  LDR.W           R8, [R6,#0x60]
53354A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
53354E:  VMOV.I32        Q8, #0
533552:  ADD.W           R1, R4, #0x40 ; '@'
533556:  LDR             R0, =(_ZTV18CTaskSimpleJetPack_ptr - 0x53356C)
533558:  MOV.W           R9, #0
53355C:  CMP.W           R8, #0
533560:  VST1.32         {D16-D17}, [R1]
533564:  ADD.W           R1, R4, #0x30 ; '0'
533568:  ADD             R0, PC; _ZTV18CTaskSimpleJetPack_ptr
53356A:  VST1.32         {D16-D17}, [R1]
53356E:  ADD.W           R1, R4, #0x20 ; ' '
533572:  VST1.32         {D16-D17}, [R1]
533576:  ADD.W           R1, R4, #0x10
53357A:  LDR             R0, [R0]; `vtable for'CTaskSimpleJetPack ...
53357C:  VST1.32         {D16-D17}, [R1]
533580:  MOV             R1, R4
533582:  ADD.W           R0, R0, #8
533586:  STRB.W          R9, [R4,#0xC]
53358A:  STR.W           R9, [R4,#8]
53358E:  STRD.W          R9, R5, [R4,#0x50]
533592:  ADD.W           R5, R6, #0x48 ; 'H'
533596:  STRD.W          R10, R9, [R4,#0x58]
53359A:  ADD.W           R6, R4, #0x48 ; 'H'
53359E:  STRH.W          R9, [R4,#0xD]
5335A2:  STR             R0, [R4]
5335A4:  STR.W           R8, [R1,#0x60]!; CEntity **
5335A8:  ITT NE
5335AA:  MOVNE           R0, R8; this
5335AC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5335B0:  VLDR            D16, [R5]
5335B4:  LDR             R0, [R5,#8]
5335B6:  STR             R0, [R6,#8]
5335B8:  MOV             R0, R4
5335BA:  VSTR            D16, [R6]
5335BE:  STRD.W          R9, R9, [R4,#0x64]
5335C2:  POP.W           {R8-R10}
5335C6:  POP             {R4-R7,PC}
