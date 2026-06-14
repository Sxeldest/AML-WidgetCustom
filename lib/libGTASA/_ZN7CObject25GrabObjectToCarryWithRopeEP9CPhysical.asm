; =========================================================
; Game Engine Function: _ZN7CObject25GrabObjectToCarryWithRopeEP9CPhysical
; Address            : 0x455DBC - 0x455E48
; =========================================================

455DBC:  PUSH            {R4-R7,LR}
455DBE:  ADD             R7, SP, #0xC
455DC0:  PUSH.W          {R8}
455DC4:  SUB             SP, SP, #0x18
455DC6:  MOV             R5, R1
455DC8:  BLX             j__ZN6CRopes8FindRopeEj; CRopes::FindRope(uint)
455DCC:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x455DD6)
455DCE:  MOV.W           R2, #0x328
455DD2:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
455DD4:  LDR             R1, [R1]; CRopes::aRopes ...
455DD6:  MLA.W           R4, R0, R2, R1
455DDA:  MOV             R0, R4; this
455DDC:  BLX             j__ZN5CRope21ReleasePickedUpObjectEv; CRope::ReleasePickedUpObject(void)
455DE0:  ADD.W           R1, R4, #0x318; CEntity **
455DE4:  MOV             R0, R5; this
455DE6:  STR.W           R5, [R4,#0x318]
455DEA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
455DEE:  LDRD.W          R6, R0, [R4,#0x314]
455DF2:  LDR.W           R8, [R0,#0x14]
455DF6:  MOV             R0, R5; this
455DF8:  BLX             j__ZN6CRopes16FindPickUpHeightEP7CEntity; CRopes::FindPickUpHeight(CEntity *)
455DFC:  MOVS            R1, #0
455DFE:  MOV             R2, SP
455E00:  STRD.W          R1, R1, [SP,#0x28+var_28]
455E04:  MOV             R1, R8
455E06:  STR             R0, [SP,#0x28+var_20]
455E08:  ADD             R0, SP, #0x28+var_1C
455E0A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
455E0E:  LDRD.W          R3, R2, [SP,#0x28+var_1C]
455E12:  ADD.W           R1, R4, #0x314
455E16:  LDR             R5, [R6,#0x14]
455E18:  LDR             R0, [SP,#0x28+var_14]
455E1A:  CBZ             R5, loc_455E28
455E1C:  STR             R3, [R5,#0x30]
455E1E:  LDR             R3, [R6,#0x14]
455E20:  STR             R2, [R3,#0x34]
455E22:  LDR             R2, [R6,#0x14]
455E24:  ADDS            R2, #0x38 ; '8'
455E26:  B               loc_455E30
455E28:  STRD.W          R3, R2, [R6,#4]
455E2C:  ADD.W           R2, R6, #0xC
455E30:  STR             R0, [R2]
455E32:  LDR             R0, [R1]
455E34:  LDRD.W          R1, R2, [R0,#0x1C]
455E38:  BIC.W           R1, R1, #1
455E3C:  STRD.W          R1, R2, [R0,#0x1C]
455E40:  ADD             SP, SP, #0x18
455E42:  POP.W           {R8}
455E46:  POP             {R4-R7,PC}
