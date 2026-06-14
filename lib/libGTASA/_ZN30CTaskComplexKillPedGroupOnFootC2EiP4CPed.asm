; =========================================================
; Game Engine Function: _ZN30CTaskComplexKillPedGroupOnFootC2EiP4CPed
; Address            : 0x4E823C - 0x4E8274
; =========================================================

4E823C:  PUSH            {R4-R7,LR}
4E823E:  ADD             R7, SP, #0xC
4E8240:  PUSH.W          {R11}
4E8244:  MOV             R5, R2
4E8246:  MOV             R6, R1
4E8248:  MOV             R4, R0
4E824A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E824E:  LDR             R0, =(_ZTV30CTaskComplexKillPedGroupOnFoot_ptr - 0x4E825A)
4E8250:  MOV             R1, R4
4E8252:  STR             R6, [R4,#0xC]
4E8254:  CMP             R5, #0
4E8256:  ADD             R0, PC; _ZTV30CTaskComplexKillPedGroupOnFoot_ptr
4E8258:  LDR             R0, [R0]; `vtable for'CTaskComplexKillPedGroupOnFoot ...
4E825A:  ADD.W           R0, R0, #8
4E825E:  STR             R0, [R4]
4E8260:  STR.W           R5, [R1,#0x10]!; CEntity **
4E8264:  ITT NE
4E8266:  MOVNE           R0, R5; this
4E8268:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E826C:  MOV             R0, R4
4E826E:  POP.W           {R11}
4E8272:  POP             {R4-R7,PC}
