; =========================================================
; Game Engine Function: _ZN16CEventGunAimedAtD0Ev
; Address            : 0x376164 - 0x3761AE
; =========================================================

376164:  PUSH            {R4,R6,R7,LR}
376166:  ADD             R7, SP, #8
376168:  MOV             R4, R0
37616A:  LDR             R0, =(_ZTV16CEventGunAimedAt_ptr - 0x376172)
37616C:  MOV             R1, R4
37616E:  ADD             R0, PC; _ZTV16CEventGunAimedAt_ptr
376170:  LDR             R2, [R0]; `vtable for'CEventGunAimedAt ...
376172:  LDR.W           R0, [R1,#0x10]!; CEntity **
376176:  ADDS            R2, #8
376178:  STR             R2, [R4]
37617A:  CMP             R0, #0
37617C:  IT NE
37617E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
376182:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x376190)
376184:  MOV             R3, #0xF0F0F0F1
37618C:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
37618E:  LDR             R0, [R0]; CPools::ms_pEventPool ...
376190:  LDR             R0, [R0]; CPools::ms_pEventPool
376192:  LDRD.W          R1, R2, [R0]
376196:  SUBS            R1, R4, R1
376198:  ASRS            R1, R1, #2
37619A:  MULS            R1, R3
37619C:  LDRB            R3, [R2,R1]
37619E:  ORR.W           R3, R3, #0x80
3761A2:  STRB            R3, [R2,R1]
3761A4:  LDR             R2, [R0,#0xC]
3761A6:  CMP             R1, R2
3761A8:  IT LT
3761AA:  STRLT           R1, [R0,#0xC]
3761AC:  POP             {R4,R6,R7,PC}
