; =========================================================
; Game Engine Function: _ZNK16CEventGroupEvent5CloneEv
; Address            : 0x379A9C - 0x379B22
; =========================================================

379A9C:  PUSH            {R4,R5,R7,LR}
379A9E:  ADD             R7, SP, #8
379AA0:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x379AA8)
379AA2:  MOVS            R3, #0
379AA4:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
379AA6:  LDR             R1, [R1]; CPools::ms_pEventPool ...
379AA8:  LDR             R1, [R1]; CPools::ms_pEventPool
379AAA:  LDRD.W          R12, R4, [R1,#8]
379AAE:  ADDS            R4, #1
379AB0:  STR             R4, [R1,#0xC]
379AB2:  CMP             R4, R12
379AB4:  BNE             loc_379AC0
379AB6:  MOVS            R4, #0
379AB8:  LSLS            R2, R3, #0x1F
379ABA:  STR             R4, [R1,#0xC]
379ABC:  BNE             loc_379AF0
379ABE:  MOVS            R3, #1
379AC0:  LDR             R5, [R1,#4]
379AC2:  LDRSB           R2, [R5,R4]
379AC4:  CMP.W           R2, #0xFFFFFFFF
379AC8:  BGT             loc_379AAE
379ACA:  AND.W           R2, R2, #0x7F
379ACE:  STRB            R2, [R5,R4]
379AD0:  LDR             R2, [R1,#4]
379AD2:  LDR             R3, [R1,#0xC]
379AD4:  LDRB            R5, [R2,R3]
379AD6:  AND.W           R4, R5, #0x80
379ADA:  ADDS            R5, #1
379ADC:  AND.W           R5, R5, #0x7F
379AE0:  ORRS            R5, R4
379AE2:  STRB            R5, [R2,R3]
379AE4:  LDR             R2, [R1]
379AE6:  LDR             R1, [R1,#0xC]
379AE8:  ADD.W           R1, R1, R1,LSL#4
379AEC:  ADD.W           R4, R2, R1,LSL#2
379AF0:  LDRD.W          R5, R0, [R0,#0xC]
379AF4:  LDR             R1, [R0]
379AF6:  LDR             R1, [R1,#0x14]
379AF8:  BLX             R1
379AFA:  LDR             R1, =(_ZTV16CEventGroupEvent_ptr - 0x379B06)
379AFC:  MOVS            R2, #0
379AFE:  STRB            R2, [R4,#8]
379B00:  CMP             R5, #0
379B02:  ADD             R1, PC; _ZTV16CEventGroupEvent_ptr
379B04:  LDR             R1, [R1]; `vtable for'CEventGroupEvent ...
379B06:  ADD.W           R1, R1, #8
379B0A:  STRD.W          R1, R2, [R4]
379B0E:  MOV             R1, R4
379B10:  STR             R0, [R4,#0x10]
379B12:  STR.W           R5, [R1,#0xC]!; CEntity **
379B16:  ITT NE
379B18:  MOVNE           R0, R5; this
379B1A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
379B1E:  MOV             R0, R4
379B20:  POP             {R4,R5,R7,PC}
