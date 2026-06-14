; =========================================================
; Game Engine Function: _ZNK22CTaskSimpleStealthKill5CloneEv
; Address            : 0x4EA66C - 0x4EA6BA
; =========================================================

4EA66C:  PUSH            {R4-R7,LR}
4EA66E:  ADD             R7, SP, #0xC
4EA670:  PUSH.W          {R8}
4EA674:  MOV             R6, R0
4EA676:  MOVS            R0, #dword_20; this
4EA678:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EA67C:  LDRD.W          R5, R8, [R6,#0xC]
4EA680:  MOV             R4, R0
4EA682:  LDRB            R6, [R6,#8]
4EA684:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EA688:  LDR             R0, =(_ZTV22CTaskSimpleStealthKill_ptr - 0x4EA694)
4EA68A:  MOVS            R1, #0
4EA68C:  STRB            R6, [R4,#8]
4EA68E:  CMP             R5, #0
4EA690:  ADD             R0, PC; _ZTV22CTaskSimpleStealthKill_ptr
4EA692:  STR.W           R8, [R4,#0x10]
4EA696:  STRH            R1, [R4,#0x14]
4EA698:  LDR             R0, [R0]; `vtable for'CTaskSimpleStealthKill ...
4EA69A:  STRD.W          R1, R1, [R4,#0x18]
4EA69E:  MOV             R1, R4
4EA6A0:  ADD.W           R0, R0, #8
4EA6A4:  STR             R0, [R4]
4EA6A6:  STR.W           R5, [R1,#0xC]!; CEntity **
4EA6AA:  ITT NE
4EA6AC:  MOVNE           R0, R5; this
4EA6AE:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4EA6B2:  MOV             R0, R4
4EA6B4:  POP.W           {R8}
4EA6B8:  POP             {R4-R7,PC}
