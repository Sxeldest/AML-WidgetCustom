; =========================================================
; Game Engine Function: _ZN11CTheScripts31MoveSearchLightBetweenTwoPointsEifffffff
; Address            : 0x357FEC - 0x3580A8
; =========================================================

357FEC:  PUSH            {R4-R7,LR}
357FEE:  ADD             R7, SP, #0xC
357FF0:  PUSH.W          {R11}
357FF4:  MOV             R4, R1
357FF6:  MOVS            R1, #2; int
357FF8:  MOV             R6, R3
357FFA:  MOV             R5, R2
357FFC:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
358000:  CMP             R0, #0
358002:  BLT             loc_3580A2
358004:  LDR             R1, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x358016)
358006:  RSB.W           R0, R0, R0,LSL#5
35800A:  VMOV            S12, R4
35800E:  VLDR            S4, [R7,#arg_4]
358012:  ADD             R1, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
358014:  VLDR            S6, [R7,#arg_0]
358018:  VMOV            S10, R5
35801C:  VLDR            S0, [R7,#arg_C]
358020:  LDR             R1, [R1]; CTheScripts::ScriptSearchLightArray ...
358022:  VMOV            S8, R6
358026:  VLDR            S2, [R7,#arg_8]
35802A:  ADD.W           R4, R1, R0,LSL#2
35802E:  MOV             R1, #0xFFFFFF82
358032:  LDR.W           R0, [R4,#0x48]!; this
358036:  VLDR            S14, [R4,#-0x34]
35803A:  VLDR            S1, [R4,#-0x30]
35803E:  VSUB.F32        S5, S14, S6
358042:  VSTR            S12, [R4,#-0x20]
358046:  VSUB.F32        S3, S1, S4
35804A:  VSTR            S10, [R4,#-0x1C]
35804E:  VSUB.F32        S1, S1, S10
358052:  VSTR            S8, [R4,#-0x18]
358056:  VSUB.F32        S14, S14, S12
35805A:  VSTR            S6, [R4,#-0x14]
35805E:  VSTR            S4, [R4,#-0x10]
358062:  VSTR            S2, [R4,#-0xC]
358066:  VSTR            S0, [R4,#-8]
35806A:  VMUL.F32        S5, S5, S5
35806E:  VMUL.F32        S3, S3, S3
358072:  VMUL.F32        S1, S1, S1
358076:  VMUL.F32        S14, S14, S14
35807A:  VADD.F32        S3, S5, S3
35807E:  VADD.F32        S14, S14, S1
358082:  VCMPE.F32       S14, S3
358086:  VMRS            APSR_nzcv, FPSCR
35808A:  IT LE
35808C:  MOVLE           R1, #0xFFFFFF81
358090:  CMP             R0, #0
358092:  STRB.W          R1, [R4,#-0x45]
358096:  ITT NE
358098:  MOVNE           R1, R4; CEntity **
35809A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
35809E:  MOVS            R0, #0
3580A0:  STR             R0, [R4]
3580A2:  POP.W           {R11}
3580A6:  POP             {R4-R7,PC}
