; =========================================================
; Game Engine Function: _ZN30CTaskComplexUsePairedAttractor14SetPartnershipEP4CPedbPK19CScriptedEffectPair
; Address            : 0x4EEFBC - 0x4EEFE0
; =========================================================

4EEFBC:  PUSH            {R4-R7,LR}
4EEFBE:  ADD             R7, SP, #0xC
4EEFC0:  PUSH.W          {R11}
4EEFC4:  MOV             R6, R0
4EEFC6:  MOV             R0, R1; this
4EEFC8:  STR.W           R1, [R6,#0x10]!
4EEFCC:  MOV             R4, R3
4EEFCE:  MOV             R5, R2
4EEFD0:  MOV             R1, R6; CEntity **
4EEFD2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4EEFD6:  STR             R4, [R6,#8]
4EEFD8:  STRB            R5, [R6,#4]
4EEFDA:  POP.W           {R11}
4EEFDE:  POP             {R4-R7,PC}
