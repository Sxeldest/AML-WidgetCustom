; =========================================================
; Game Engine Function: _ZN11CTheScripts36AttachSearchlightToSearchlightObjectEiP7CObjectS1_S1_fff
; Address            : 0x358180 - 0x358258
; =========================================================

358180:  PUSH            {R4-R7,LR}
358182:  ADD             R7, SP, #0xC
358184:  PUSH.W          {R8,R9,R11}
358188:  MOV             R6, R1
35818A:  MOVS            R1, #2; int
35818C:  MOV             R8, R3
35818E:  MOV             R9, R2
358190:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
358194:  CMP             R0, #0
358196:  BLT             loc_358252
358198:  LDR             R1, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3581A6)
35819A:  RSB.W           R5, R0, R0,LSL#5
35819E:  VLDR            S0, [R7,#arg_8]
3581A2:  ADD             R1, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3581A4:  VLDR            S2, [R7,#arg_4]
3581A8:  VLDR            S4, [R7,#arg_0]
3581AC:  LDR             R1, [R1]; CTheScripts::ScriptSearchLightArray ...
3581AE:  ADD.W           R4, R1, R5,LSL#2
3581B2:  LDR.W           R0, [R4,#0x44]!; this
3581B6:  CMP             R0, #0
3581B8:  VSTR            S4, [R4,#-0x3C]
3581BC:  VSTR            S2, [R4,#-0x38]
3581C0:  VSTR            S0, [R4,#-0x34]
3581C4:  ITT NE
3581C6:  MOVNE           R1, R4; CEntity **
3581C8:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3581CC:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3581D6)
3581CE:  MOVS            R1, #0
3581D0:  STR             R1, [R4]
3581D2:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3581D4:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
3581D6:  ADD.W           R4, R0, R5,LSL#2
3581DA:  LDR.W           R0, [R4,#0x4C]!; this
3581DE:  CMP             R0, #0
3581E0:  ITT NE
3581E2:  MOVNE           R1, R4; CEntity **
3581E4:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3581E8:  CMP             R6, #0
3581EA:  STR             R6, [R4]
3581EC:  ITTT NE
3581EE:  MOVNE           R0, R6; this
3581F0:  MOVNE           R1, R4; CEntity **
3581F2:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3581F6:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3581FC)
3581F8:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3581FA:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
3581FC:  ADD.W           R4, R0, R5,LSL#2
358200:  LDR.W           R0, [R4,#0x50]!; this
358204:  CMP             R0, #0
358206:  ITT NE
358208:  MOVNE           R1, R4; CEntity **
35820A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
35820E:  CMP.W           R9, #0
358212:  STR.W           R9, [R4]
358216:  ITTT NE
358218:  MOVNE           R0, R9; this
35821A:  MOVNE           R1, R4; CEntity **
35821C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
358220:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x358226)
358222:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
358224:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
358226:  ADD.W           R4, R0, R5,LSL#2
35822A:  LDR.W           R0, [R4,#0x54]!; this
35822E:  CMP             R0, #0
358230:  ITT NE
358232:  MOVNE           R1, R4; CEntity **
358234:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
358238:  CMP.W           R8, #0
35823C:  STR.W           R8, [R4]
358240:  BEQ             loc_358252
358242:  MOV             R0, R8; this
358244:  MOV             R1, R4; CEntity **
358246:  POP.W           {R8,R9,R11}
35824A:  POP.W           {R4-R7,LR}
35824E:  B.W             j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
358252:  POP.W           {R8,R9,R11}
358256:  POP             {R4-R7,PC}
