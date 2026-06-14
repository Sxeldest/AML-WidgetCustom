; =========================================================
; Game Engine Function: _ZN16CEventGunAimedAtC2EP4CPed
; Address            : 0x3760FC - 0x376138
; =========================================================

3760FC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventGunAimedAt::CEventGunAimedAt(CPed *)'
3760FE:  ADD             R7, SP, #8
376100:  MOV             R4, R0
376102:  LDR             R0, =(_ZTV16CEventGunAimedAt_ptr - 0x37610C)
376104:  MOVS            R2, #0
376106:  CMP             R1, #0
376108:  ADD             R0, PC; _ZTV16CEventGunAimedAt_ptr
37610A:  STR             R2, [R4,#4]
37610C:  MOV             R2, #0xC80100
376114:  LDR             R0, [R0]; `vtable for'CEventGunAimedAt ...
376116:  STR             R2, [R4,#8]
376118:  MOVW            R2, #0xFFFF
37611C:  STRH            R2, [R4,#0xC]
37611E:  MOV             R2, R4
376120:  ADD.W           R0, R0, #8
376124:  STR             R0, [R4]
376126:  STR.W           R1, [R2,#0x10]!
37612A:  ITTT NE
37612C:  MOVNE           R0, R1; this
37612E:  MOVNE           R1, R2; CEntity **
376130:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
376134:  MOV             R0, R4
376136:  POP             {R4,R6,R7,PC}
