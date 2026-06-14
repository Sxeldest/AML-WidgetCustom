; =========================================================
; Game Engine Function: _ZN26CTaskSimpleFightingControlC2EP7CEntityff
; Address            : 0x4DB488 - 0x4DB4F0
; =========================================================

4DB488:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleFightingControl::CTaskSimpleFightingControl(CEntity *, float, float)'
4DB48A:  ADD             R7, SP, #0xC
4DB48C:  PUSH.W          {R8,R9,R11}
4DB490:  VPUSH           {D8-D9}
4DB494:  MOV             R6, R3
4DB496:  MOV             R8, R2
4DB498:  MOV             R5, R1
4DB49A:  MOV             R4, R0
4DB49C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4DB4A0:  LDR             R0, =(_ZTV26CTaskSimpleFightingControl_ptr - 0x4DB4B0)
4DB4A2:  MOV.W           R9, #0
4DB4A6:  MOV             R1, R4
4DB4A8:  STRB.W          R9, [R4,#8]
4DB4AC:  ADD             R0, PC; _ZTV26CTaskSimpleFightingControl_ptr
4DB4AE:  STRH.W          R9, [R4,#0xA]
4DB4B2:  CMP             R5, #0
4DB4B4:  VMOV            S16, R6
4DB4B8:  LDR             R0, [R0]; `vtable for'CTaskSimpleFightingControl ...
4DB4BA:  VMOV            S18, R8
4DB4BE:  ADD.W           R0, R0, #8
4DB4C2:  STR             R0, [R4]
4DB4C4:  STR.W           R5, [R1,#0xC]!; CEntity **
4DB4C8:  ITT NE
4DB4CA:  MOVNE           R0, R5; this
4DB4CC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DB4D0:  MOV.W           R0, #0x3F800000
4DB4D4:  VSTR            S18, [R4,#0x10]
4DB4D8:  VSTR            S16, [R4,#0x14]
4DB4DC:  STRD.W          R0, R9, [R4,#0x18]
4DB4E0:  MOV             R0, R4
4DB4E2:  STR.W           R9, [R4,#0x20]
4DB4E6:  VPOP            {D8-D9}
4DB4EA:  POP.W           {R8,R9,R11}
4DB4EE:  POP             {R4-R7,PC}
