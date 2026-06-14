; =========================================================
; Game Engine Function: _ZNK22CEventGunShotWhizzedBy13CloneEditableEv
; Address            : 0x37AEC4 - 0x37AF82
; =========================================================

37AEC4:  PUSH            {R4,R6,R7,LR}
37AEC6:  ADD             R7, SP, #8
37AEC8:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37AED2)
37AECA:  MOV.W           LR, #0
37AECE:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37AED0:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37AED2:  LDR             R1, [R1]; CPools::ms_pEventPool
37AED4:  LDRD.W          R12, R4, [R1,#8]
37AED8:  ADDS            R4, #1
37AEDA:  STR             R4, [R1,#0xC]
37AEDC:  CMP             R4, R12
37AEDE:  BNE             loc_37AEEE
37AEE0:  MOVS            R4, #0
37AEE2:  MOVS.W          R2, LR,LSL#31
37AEE6:  STR             R4, [R1,#0xC]
37AEE8:  BNE             loc_37AF20
37AEEA:  MOV.W           LR, #1
37AEEE:  LDR             R2, [R1,#4]
37AEF0:  LDRSB           R3, [R2,R4]
37AEF2:  CMP.W           R3, #0xFFFFFFFF
37AEF6:  BGT             loc_37AED8
37AEF8:  AND.W           R3, R3, #0x7F
37AEFC:  STRB            R3, [R2,R4]
37AEFE:  LDR             R2, [R1,#4]
37AF00:  LDR             R3, [R1,#0xC]
37AF02:  LDRB            R4, [R2,R3]
37AF04:  AND.W           R12, R4, #0x80
37AF08:  ADDS            R4, #1
37AF0A:  AND.W           R4, R4, #0x7F
37AF0E:  ORR.W           R4, R4, R12
37AF12:  STRB            R4, [R2,R3]
37AF14:  LDR             R2, [R1]
37AF16:  LDR             R1, [R1,#0xC]
37AF18:  ADD.W           R1, R1, R1,LSL#4
37AF1C:  ADD.W           R4, R2, R1,LSL#2
37AF20:  LDR             R2, [R0,#0x10]
37AF22:  LDRD.W          R1, R3, [R0,#0x24]
37AF26:  LDRB.W          R12, [R0,#0x2C]
37AF2A:  ADDS            R0, #0x14
37AF2C:  VLD1.32         {D16-D17}, [R0]
37AF30:  MOVS            R0, #0
37AF32:  CMP             R2, #0
37AF34:  LDR.W           LR, =(_ZTV13CEventGunShot_ptr - 0x37AF46)
37AF38:  STR             R0, [R4,#4]
37AF3A:  MOV             R0, #0xC80100
37AF42:  ADD             LR, PC; _ZTV13CEventGunShot_ptr
37AF44:  STR             R0, [R4,#8]
37AF46:  MOVW            R0, #0xFFFF
37AF4A:  STRH            R0, [R4,#0xC]
37AF4C:  STRD.W          R1, R3, [R4,#0x24]
37AF50:  ADD.W           R1, R4, #0x14
37AF54:  LDR.W           R0, [LR]; `vtable for'CEventGunShot ...
37AF58:  VST1.32         {D16-D17}, [R1]
37AF5C:  MOV             R1, R4
37AF5E:  ADD.W           R0, R0, #8
37AF62:  STRB.W          R12, [R4,#0x2C]
37AF66:  STR             R0, [R4]
37AF68:  STR.W           R2, [R1,#0x10]!; CEntity **
37AF6C:  ITT NE
37AF6E:  MOVNE           R0, R2; this
37AF70:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37AF74:  LDR             R0, =(_ZTV22CEventGunShotWhizzedBy_ptr - 0x37AF7A)
37AF76:  ADD             R0, PC; _ZTV22CEventGunShotWhizzedBy_ptr
37AF78:  LDR             R0, [R0]; `vtable for'CEventGunShotWhizzedBy ...
37AF7A:  ADDS            R0, #8
37AF7C:  STR             R0, [R4]
37AF7E:  MOV             R0, R4
37AF80:  POP             {R4,R6,R7,PC}
