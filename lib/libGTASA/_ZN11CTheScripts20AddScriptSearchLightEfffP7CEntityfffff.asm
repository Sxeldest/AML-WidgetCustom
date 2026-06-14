; =========================================================
; Game Engine Function: _ZN11CTheScripts20AddScriptSearchLightEfffP7CEntityfffff
; Address            : 0x357AF8 - 0x357C00
; =========================================================

357AF8:  PUSH            {R4-R7,LR}
357AFA:  ADD             R7, SP, #0xC
357AFC:  PUSH.W          {R11}
357B00:  MOV             R5, R3
357B02:  LDR             R3, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x357B10)
357B04:  VMOV            S12, R1
357B08:  VLDR            S0, [R7,#arg_10]
357B0C:  ADD             R3, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
357B0E:  VLDR            S2, [R7,#arg_C]
357B12:  VLDR            S4, [R7,#arg_8]
357B16:  VMOV            S10, R2
357B1A:  LDR             R1, [R3]; CTheScripts::ScriptSearchLightArray ...
357B1C:  VMOV            S14, R0
357B20:  VLDR            S6, [R7,#arg_4]
357B24:  SUB.W           R0, R1, #0x38 ; '8'
357B28:  VLDR            S8, [R7,#arg_0]
357B2C:  MOVS            R1, #0
357B2E:  ADD.W           R4, R0, #0x7C ; '|'
357B32:  ADDS            R6, R1, #1
357B34:  CMP             R1, #7
357B36:  BHI             loc_357B44
357B38:  LDRB.W          R0, [R0,#0x38]; CTheScripts::ScriptSearchLightArray
357B3C:  MOV             R1, R6
357B3E:  CMP             R0, #0
357B40:  MOV             R0, R4
357B42:  BNE             loc_357B2E
357B44:  MOV             R1, R4
357B46:  MOVS            R2, #1
357B48:  LDR.W           R0, [R1,#4]!; CEntity **
357B4C:  MOVT            R2, #0x8001
357B50:  VMOV.I32        Q8, #0
357B54:  STR.W           R2, [R1,#-0x48]
357B58:  SUB.W           R2, R1, #0x14
357B5C:  VSTR            S14, [R1,#-0x40]
357B60:  CMP             R0, #0
357B62:  VSTR            S12, [R1,#-0x3C]
357B66:  VSTR            S10, [R1,#-0x38]
357B6A:  VSTR            S8, [R1,#-0x34]
357B6E:  VSTR            S6, [R1,#-0x30]
357B72:  VSTR            S4, [R1,#-0x2C]
357B76:  VSTR            S2, [R1,#-0x28]
357B7A:  VSTR            S0, [R1,#-0x24]
357B7E:  VST1.32         {D16-D17}, [R2]
357B82:  SUB.W           R2, R1, #0x20 ; ' '
357B86:  VST1.32         {D16-D17}, [R2]
357B8A:  IT NE
357B8C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
357B90:  LDR             R0, [R4]; this
357B92:  MOVS            R1, #0
357B94:  STR             R1, [R4,#4]
357B96:  CMP             R0, #0
357B98:  ITT NE
357B9A:  MOVNE           R1, R4; CEntity **
357B9C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
357BA0:  CMP             R5, #0
357BA2:  STR             R5, [R4]
357BA4:  ITTT NE
357BA6:  MOVNE           R0, R5; this
357BA8:  MOVNE           R1, R4; CEntity **
357BAA:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
357BAE:  LDR             R0, [R4,#8]; this
357BB0:  CMP             R0, #0
357BB2:  ITT NE
357BB4:  ADDNE.W         R1, R4, #8; CEntity **
357BB8:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
357BBC:  LDR             R0, [R4,#0xC]; this
357BBE:  SUBS            R5, R6, #1
357BC0:  MOVS            R6, #0
357BC2:  CMP             R0, #0
357BC4:  STR             R6, [R4,#8]
357BC6:  ITT NE
357BC8:  ADDNE.W         R1, R4, #0xC; CEntity **
357BCC:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
357BD0:  LDR             R0, [R4,#0x10]; this
357BD2:  STR             R6, [R4,#0xC]
357BD4:  CMP             R0, #0
357BD6:  ITT NE
357BD8:  ADDNE.W         R1, R4, #0x10; CEntity **
357BDC:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
357BE0:  LDR             R0, =(_ZN11CTheScripts26NumberOfScriptSearchLightsE_ptr - 0x357BEA)
357BE2:  MOVS            R1, #0
357BE4:  STR             R1, [R4,#0x10]
357BE6:  ADD             R0, PC; _ZN11CTheScripts26NumberOfScriptSearchLightsE_ptr
357BE8:  LDR             R0, [R0]; CTheScripts::NumberOfScriptSearchLights ...
357BEA:  LDRH            R1, [R0]; CTheScripts::NumberOfScriptSearchLights
357BEC:  ADDS            R1, #1
357BEE:  STRH            R1, [R0]; CTheScripts::NumberOfScriptSearchLights
357BF0:  MOV             R0, R5; this
357BF2:  MOVS            R1, #2; int
357BF4:  POP.W           {R11}
357BF8:  POP.W           {R4-R7,LR}
357BFC:  B.W             j_j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; j_CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
