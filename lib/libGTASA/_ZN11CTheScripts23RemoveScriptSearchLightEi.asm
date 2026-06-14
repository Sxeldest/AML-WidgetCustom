; =========================================================
; Game Engine Function: _ZN11CTheScripts23RemoveScriptSearchLightEi
; Address            : 0x357C08 - 0x357CE2
; =========================================================

357C08:  PUSH            {R4-R7,LR}
357C0A:  ADD             R7, SP, #0xC
357C0C:  PUSH.W          {R11}
357C10:  MOVS            R1, #2; int
357C12:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
357C16:  ADDS            R1, R0, #1
357C18:  BEQ             loc_357CDC
357C1A:  LDR             R1, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x357C28)
357C1C:  RSB.W           R5, R0, R0,LSL#5
357C20:  VMOV.I32        Q8, #0
357C24:  ADD             R1, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
357C26:  LDR             R1, [R1]; CTheScripts::ScriptSearchLightArray ...
357C28:  ADD.W           R1, R1, R5,LSL#2
357C2C:  ADD.W           R2, R1, #0x34 ; '4'
357C30:  MOV             R4, R1
357C32:  LDR.W           R0, [R4,#0x48]!; this
357C36:  VST1.32         {D16-D17}, [R2]
357C3A:  ADD.W           R2, R1, #0x28 ; '('
357C3E:  CMP             R0, #0
357C40:  VST1.32         {D16-D17}, [R2]
357C44:  ADD.W           R2, R1, #8
357C48:  VST1.32         {D16-D17}, [R2]
357C4C:  MOV.W           R2, #0x10000
357C50:  STR.W           R2, [R1],#0x18
357C54:  VST1.32         {D16-D17}, [R1]
357C58:  ITT NE
357C5A:  MOVNE           R1, R4; CEntity **
357C5C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
357C60:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x357C6A)
357C62:  MOVS            R6, #0
357C64:  STR             R6, [R4]
357C66:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
357C68:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
357C6A:  ADD.W           R4, R0, R5,LSL#2
357C6E:  LDR.W           R0, [R4,#0x44]!; this
357C72:  CMP             R0, #0
357C74:  ITT NE
357C76:  MOVNE           R1, R4; CEntity **
357C78:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
357C7C:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x357C84)
357C7E:  STR             R6, [R4]
357C80:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
357C82:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
357C84:  ADD.W           R4, R0, R5,LSL#2
357C88:  LDR.W           R0, [R4,#0x4C]!; this
357C8C:  CMP             R0, #0
357C8E:  ITT NE
357C90:  MOVNE           R1, R4; CEntity **
357C92:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
357C96:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x357CA0)
357C98:  MOVS            R6, #0
357C9A:  STR             R6, [R4]
357C9C:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
357C9E:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
357CA0:  ADD.W           R4, R0, R5,LSL#2
357CA4:  LDR.W           R0, [R4,#0x50]!; this
357CA8:  CMP             R0, #0
357CAA:  ITT NE
357CAC:  MOVNE           R1, R4; CEntity **
357CAE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
357CB2:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x357CBA)
357CB4:  STR             R6, [R4]
357CB6:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
357CB8:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
357CBA:  ADD.W           R4, R0, R5,LSL#2
357CBE:  LDR.W           R0, [R4,#0x54]!; this
357CC2:  CMP             R0, #0
357CC4:  ITT NE
357CC6:  MOVNE           R1, R4; CEntity **
357CC8:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
357CCC:  LDR             R0, =(_ZN11CTheScripts26NumberOfScriptSearchLightsE_ptr - 0x357CD6)
357CCE:  MOVS            R1, #0
357CD0:  STR             R1, [R4]
357CD2:  ADD             R0, PC; _ZN11CTheScripts26NumberOfScriptSearchLightsE_ptr
357CD4:  LDR             R0, [R0]; CTheScripts::NumberOfScriptSearchLights ...
357CD6:  LDRH            R1, [R0]; CTheScripts::NumberOfScriptSearchLights
357CD8:  SUBS            R1, #1
357CDA:  STRH            R1, [R0]; CTheScripts::NumberOfScriptSearchLights
357CDC:  POP.W           {R11}
357CE0:  POP             {R4-R7,PC}
