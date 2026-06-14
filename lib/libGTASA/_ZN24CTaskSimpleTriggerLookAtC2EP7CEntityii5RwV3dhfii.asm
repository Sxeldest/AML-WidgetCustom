; =========================================================
; Game Engine Function: _ZN24CTaskSimpleTriggerLookAtC2EP7CEntityii5RwV3dhfii
; Address            : 0x4F07A8 - 0x4F081C
; =========================================================

4F07A8:  PUSH            {R4-R7,LR}
4F07AA:  ADD             R7, SP, #0xC
4F07AC:  PUSH.W          {R8}
4F07B0:  MOV             R8, R3
4F07B2:  MOV             R6, R2
4F07B4:  MOV             R5, R1
4F07B6:  MOV             R4, R0
4F07B8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F07BC:  LDR             R0, =(_ZTV24CTaskSimpleTriggerLookAt_ptr - 0x4F07C8)
4F07BE:  CMP             R5, #0
4F07C0:  LDRD.W          R1, R2, [R7,#arg_0]
4F07C4:  ADD             R0, PC; _ZTV24CTaskSimpleTriggerLookAt_ptr
4F07C6:  STR             R6, [R4,#0xC]
4F07C8:  STR.W           R8, [R4,#0x10]
4F07CC:  ADD.W           R8, R4, #0x14
4F07D0:  LDR             R0, [R0]; `vtable for'CTaskSimpleTriggerLookAt ...
4F07D2:  VLDR            S0, [R7,#arg_10]
4F07D6:  LDR.W           LR, [R7,#arg_8]
4F07DA:  ADD.W           R0, R0, #8
4F07DE:  STM.W           R8, {R1,R2,LR}
4F07E2:  MOV             R1, R4
4F07E4:  LDR             R3, [R7,#arg_C]
4F07E6:  LDR.W           R12, [R7,#arg_14]
4F07EA:  LDR             R6, [R7,#arg_18]
4F07EC:  VSTR            S0, [R4,#0x24]
4F07F0:  STRB.W          R3, [R4,#0x20]
4F07F4:  STR.W           R12, [R4,#0x28]
4F07F8:  STRB.W          R6, [R4,#0x2D]
4F07FC:  STR             R0, [R4]
4F07FE:  STR.W           R5, [R1,#8]!; CEntity **
4F0802:  BEQ             loc_4F080E
4F0804:  MOV             R0, R5; this
4F0806:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F080A:  MOVS            R0, #1
4F080C:  B               loc_4F0810
4F080E:  MOVS            R0, #0
4F0810:  STRB.W          R0, [R4,#0x2C]
4F0814:  MOV             R0, R4
4F0816:  POP.W           {R8}
4F081A:  POP             {R4-R7,PC}
