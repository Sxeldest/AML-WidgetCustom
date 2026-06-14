; =========================================================
; Game Engine Function: _ZN11CTheScripts29MoveSearchLightToPointAndStopEiffff
; Address            : 0x358110 - 0x35817C
; =========================================================

358110:  PUSH            {R4-R7,LR}
358112:  ADD             R7, SP, #0xC
358114:  PUSH.W          {R11}
358118:  MOV             R4, R1
35811A:  MOVS            R1, #2; int
35811C:  MOV             R6, R3
35811E:  MOV             R5, R2
358120:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
358124:  CMP             R0, #0
358126:  BLT             loc_358176
358128:  LDR             R1, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x35813A)
35812A:  RSB.W           R0, R0, R0,LSL#5
35812E:  VMOV            S6, R4
358132:  VLDR            S0, [R7,#arg_0]
358136:  ADD             R1, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
358138:  VMOV            S4, R5
35813C:  VMOV            S2, R6
358140:  MOVS            R5, #0
358142:  LDR             R1, [R1]; CTheScripts::ScriptSearchLightArray ...
358144:  ADD.W           R4, R1, R0,LSL#2
358148:  MOVS            R1, #0x84
35814A:  LDR.W           R0, [R4,#0x48]!; this
35814E:  CMP             R0, #0
358150:  VSTR            S6, [R4,#-0x20]
358154:  VSTR            S4, [R4,#-0x1C]
358158:  VSTR            S2, [R4,#-0x18]
35815C:  STRD.W          R5, R5, [R4,#-0x14]
358160:  STR.W           R5, [R4,#-0xC]
358164:  VSTR            S0, [R4,#-8]
358168:  STRB.W          R1, [R4,#-0x45]
35816C:  ITT NE
35816E:  MOVNE           R1, R4; CEntity **
358170:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
358174:  STR             R5, [R4]
358176:  POP.W           {R11}
35817A:  POP             {R4-R7,PC}
