; =========================================================
; Game Engine Function: _Z37WarGameService_notifyLeaderboardQueryP7_JNIEnvP8_jobjectiP12_jfloatArrayP13_jobjectArray
; Address            : 0x27C0E8 - 0x27C23E
; =========================================================

27C0E8:  PUSH            {R4-R7,LR}
27C0EA:  ADD             R7, SP, #0xC
27C0EC:  PUSH.W          {R8-R11}
27C0F0:  SUB             SP, SP, #0xC
27C0F2:  STR             R2, [SP,#0x28+var_20]
27C0F4:  MOV             R4, R0
27C0F6:  LDR             R0, [R4]
27C0F8:  MOV             R1, R3
27C0FA:  MOVS            R2, #0
27C0FC:  LDR.W           R6, [R0,#0x2F4]
27C100:  MOV             R0, R4
27C102:  BLX             R6
27C104:  MOV             R10, R0
27C106:  LDR             R0, [R4]
27C108:  LDR             R6, [R7,#arg_0]
27C10A:  LDR.W           R2, [R0,#0x2AC]
27C10E:  MOV             R0, R4
27C110:  MOV             R1, R6
27C112:  BLX             R2
27C114:  MOV             R8, R0
27C116:  MOVS            R0, #4
27C118:  UMULL.W         R9, R0, R8, R0
27C11C:  CMP             R0, #0
27C11E:  IT NE
27C120:  MOVNE           R0, #1
27C122:  CMP             R0, #0
27C124:  IT NE
27C126:  MOVNE.W         R9, #0xFFFFFFFF
27C12A:  MOV             R0, R9; unsigned int
27C12C:  BLX             _Znaj; operator new[](uint)
27C130:  MOV             R5, R0
27C132:  MOV             R0, R9; unsigned int
27C134:  BLX             _Znaj; operator new[](uint)
27C138:  MOV             R11, R0
27C13A:  CMP.W           R8, #1
27C13E:  BLT             loc_27C1C6
27C140:  MOV.W           R9, #0
27C144:  STR.W           R10, [SP,#0x28+var_24]
27C148:  LDR             R0, [R4]
27C14A:  MOV             R1, R6
27C14C:  MOV             R2, R9
27C14E:  LDR.W           R3, [R0,#0x2B4]
27C152:  MOV             R0, R4
27C154:  BLX             R3
27C156:  MOV             R10, R0
27C158:  LDR             R0, [R4]
27C15A:  MOV             R1, R10
27C15C:  MOVS            R2, #0
27C15E:  LDR.W           R3, [R0,#0x2A4]
27C162:  MOV             R0, R4
27C164:  BLX             R3
27C166:  STR.W           R0, [R5,R9,LSL#2]
27C16A:  MOV             R1, R10
27C16C:  LDR             R0, [R4]
27C16E:  LDR             R2, [R0,#0x54]
27C170:  MOV             R0, R4
27C172:  BLX             R2
27C174:  STR.W           R0, [R11,R9,LSL#2]
27C178:  MOV             R1, R10
27C17A:  LDR             R0, [R4]
27C17C:  LDR             R2, [R0,#0x5C]
27C17E:  MOV             R0, R4
27C180:  BLX             R2
27C182:  ADD.W           R9, R9, #1
27C186:  CMP             R8, R9
27C188:  BNE             loc_27C148
27C18A:  LDR             R0, [SP,#0x28+var_20]; int
27C18C:  MOV             R1, R8; int
27C18E:  LDR             R2, [SP,#0x28+var_24]; float *
27C190:  MOV             R3, R5; char **
27C192:  MOV             R9, R5
27C194:  BLX             j__Z22AND_OnLeaderboardQueryiiPfPPKc; AND_OnLeaderboardQuery(int,int,float *,char const**)
27C198:  CMP.W           R8, #1
27C19C:  BLT             loc_27C1D4
27C19E:  MOV             R6, R9
27C1A0:  MOV             R5, R11
27C1A2:  LDR             R0, [R4]
27C1A4:  LDR.W           R2, [R6],#4
27C1A8:  LDR             R1, [R5]
27C1AA:  LDR.W           R3, [R0,#0x2A8]
27C1AE:  MOV             R0, R4
27C1B0:  BLX             R3
27C1B2:  LDR             R0, [R4]
27C1B4:  LDR.W           R1, [R5],#4
27C1B8:  LDR             R2, [R0,#0x58]
27C1BA:  MOV             R0, R4
27C1BC:  BLX             R2
27C1BE:  SUBS.W          R8, R8, #1
27C1C2:  BNE             loc_27C1A2
27C1C4:  B               loc_27C1D4
27C1C6:  LDR             R0, [SP,#0x28+var_20]; int
27C1C8:  MOV             R1, R8; int
27C1CA:  MOV             R2, R10; float *
27C1CC:  MOV             R3, R5; char **
27C1CE:  MOV             R9, R5
27C1D0:  BLX             j__Z22AND_OnLeaderboardQueryiiPfPPKc; AND_OnLeaderboardQuery(int,int,float *,char const**)
27C1D4:  MOV             R0, R11; void *
27C1D6:  BLX             _ZdaPv; operator delete[](void *)
27C1DA:  MOV             R0, R9; void *
27C1DC:  BLX             _ZdaPv; operator delete[](void *)
27C1E0:  LDR             R0, [R4]
27C1E2:  LDR.W           R1, [R0,#0x390]
27C1E6:  MOV             R0, R4
27C1E8:  BLX             R1
27C1EA:  CBZ             R0, loc_27C206
27C1EC:  LDR             R1, =(aOswrapper - 0x27C1FA); "OSWrapper"
27C1EE:  MOVS            R0, #3; prio
27C1F0:  LDR             R2, =(aJniExceptionLi - 0x27C1FC); "JNI Exception (line %d):"
27C1F2:  MOV.W           R3, #0x2B8
27C1F6:  ADD             R1, PC; "OSWrapper"
27C1F8:  ADD             R2, PC; "JNI Exception (line %d):"
27C1FA:  BLX             __android_log_print
27C1FE:  LDR             R0, [R4]
27C200:  LDR             R1, [R0,#0x40]
27C202:  MOV             R0, R4
27C204:  BLX             R1
27C206:  LDR             R0, [R4]
27C208:  LDR.W           R1, [R0,#0x390]
27C20C:  MOV             R0, R4
27C20E:  BLX             R1
27C210:  CBZ             R0, loc_27C236
27C212:  LDR             R1, =(aOswrapper - 0x27C220); "OSWrapper"
27C214:  MOVS            R0, #3; prio
27C216:  LDR             R2, =(aJniExceptionLi - 0x27C222); "JNI Exception (line %d):"
27C218:  MOV.W           R3, #0x2BC
27C21C:  ADD             R1, PC; "OSWrapper"
27C21E:  ADD             R2, PC; "JNI Exception (line %d):"
27C220:  BLX             __android_log_print
27C224:  LDR             R0, [R4]
27C226:  LDR             R1, [R0,#0x40]
27C228:  MOV             R0, R4
27C22A:  ADD             SP, SP, #0xC
27C22C:  POP.W           {R8-R11}
27C230:  POP.W           {R4-R7,LR}
27C234:  BX              R1
27C236:  ADD             SP, SP, #0xC
27C238:  POP.W           {R8-R11}
27C23C:  POP             {R4-R7,PC}
