; =========================================================
; Game Engine Function: _ZN29CTaskComplexReactToGunAimedAtC2EP4CPed
; Address            : 0x546DF0 - 0x546E24
; =========================================================

546DF0:  PUSH            {R4,R5,R7,LR}
546DF2:  ADD             R7, SP, #8
546DF4:  MOV             R5, R1
546DF6:  MOV             R4, R0
546DF8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
546DFC:  LDR             R0, =(_ZTV29CTaskComplexReactToGunAimedAt_ptr - 0x546E08)
546DFE:  MOVS            R1, #0
546E00:  STRH            R1, [R4,#0x18]
546E02:  CMP             R5, #0
546E04:  ADD             R0, PC; _ZTV29CTaskComplexReactToGunAimedAt_ptr
546E06:  STRD.W          R1, R1, [R4,#0x10]
546E0A:  MOV             R1, R4
546E0C:  LDR             R0, [R0]; `vtable for'CTaskComplexReactToGunAimedAt ...
546E0E:  ADD.W           R0, R0, #8
546E12:  STR             R0, [R4]
546E14:  STR.W           R5, [R1,#0xC]!; CEntity **
546E18:  ITT NE
546E1A:  MOVNE           R0, R5; this
546E1C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
546E20:  MOV             R0, R4
546E22:  POP             {R4,R5,R7,PC}
