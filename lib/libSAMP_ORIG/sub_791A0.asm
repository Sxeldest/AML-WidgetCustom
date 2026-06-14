; =========================================================
; Game Engine Function: sub_791A0
; Address            : 0x791A0 - 0x7928C
; =========================================================

791A0:  PUSH            {R4,R5,R7,LR}
791A2:  ADD             R7, SP, #8
791A4:  SUB             SP, SP, #0x120
791A6:  LDR             R1, =(__stack_chk_guard_ptr - 0x791B0)
791A8:  MOVS            R3, #0
791AA:  MOVS            R4, #0
791AC:  ADD             R1, PC; __stack_chk_guard_ptr
791AE:  LDR             R1, [R1]; __stack_chk_guard
791B0:  LDR             R1, [R1]
791B2:  STR             R1, [SP,#0x128+var_C]
791B4:  LDRD.W          R1, R0, [R0]; src
791B8:  ASRS            R2, R0, #0x1F
791BA:  ADD.W           R0, R0, R2,LSR#29
791BE:  MOVS            R2, #1
791C0:  ADD.W           R2, R2, R0,ASR#3; size
791C4:  ADD             R0, SP, #0x128+var_120; int
791C6:  BL              sub_86BA8
791CA:  LDR             R1, [SP,#0x128+var_120]
791CC:  LDR             R0, [SP,#0x128+var_118]
791CE:  CMP             R0, R1
791D0:  BGE             loc_791E8
791D2:  LDR             R1, [SP,#0x128+var_114]
791D4:  ASRS            R2, R0, #3
791D6:  LDRB            R1, [R1,R2]
791D8:  ADDS            R2, R0, #1
791DA:  AND.W           R0, R0, #7
791DE:  STR             R2, [SP,#0x128+var_118]
791E0:  LSL.W           R0, R1, R0
791E4:  UXTB            R0, R0
791E6:  LSRS            R4, R0, #7
791E8:  ADD             R0, SP, #0x128+var_120; int
791EA:  ADD.W           R1, SP, #0x128+var_122; int
791EE:  MOVS            R2, #0x10
791F0:  MOVS            R3, #1
791F2:  BL              sub_86E30
791F6:  LDRH.W          R0, [SP,#0x128+var_122]
791FA:  LDR             R1, =(aSampOrig - 0x79202); "SAMP_ORIG" ...
791FC:  LDR             R2, =(aPlayerObjDObje - 0x79204); "Player Obj: %d | Object ID: %d" ...
791FE:  ADD             R1, PC; "SAMP_ORIG"
79200:  ADD             R2, PC; "Player Obj: %d | Object ID: %d"
79202:  STR             R0, [SP,#0x128+var_128]
79204:  MOVS            R0, #4; prio
79206:  MOV             R3, R4
79208:  BLX             __android_log_print
7920C:  LDRH.W          R1, [SP,#0x128+var_122]
79210:  CMP.W           R1, #0x3E8
79214:  BHI             loc_79268
79216:  LDR             R0, =(off_114AD8 - 0x7921C)
79218:  ADD             R0, PC; off_114AD8
7921A:  LDR             R0, [R0]; dword_1A4434
7921C:  LDR             R0, [R0]
7921E:  LDR.W           R0, [R0,#0x3B0]
79222:  LDR             R0, [R0,#0x10]
79224:  ADD.W           R0, R0, R1,LSL#2
79228:  LDR.W           R0, [R0,#0x3EC]
7922C:  CBZ             R0, loc_79268
7922E:  LDR             R0, =(dword_1A4548 - 0x79238)
79230:  MOVS            R3, #2
79232:  LDR             R2, =(dword_116D38 - 0x7923A)
79234:  ADD             R0, PC; dword_1A4548
79236:  ADD             R2, PC; dword_116D38
79238:  STR             R3, [R0]
7923A:  STR             R1, [R2]
7923C:  BL              sub_68858
79240:  LDR             R1, =(off_114B10 - 0x79246)
79242:  ADD             R1, PC; off_114B10
79244:  LDR             R1, [R1]; dword_1A442C
79246:  LDR             R1, [R1]
79248:  LDR             R2, =(byte_1A44AD - 0x79254)
7924A:  ADD.W           R12, R1, #0x94
7924E:  MOVS            R1, #1
79250:  ADD             R2, PC; byte_1A44AD
79252:  LDM.W           R12, {R3,R4,R12}
79256:  LDR             R5, =(dword_1A454C - 0x7925E)
79258:  STRB            R1, [R4,#8]
7925A:  ADD             R5, PC; dword_1A454C
7925C:  STRB            R1, [R3,#8]
7925E:  STRB            R1, [R2]
79260:  STR             R0, [R5]
79262:  STRB.W          R1, [R12,#8]
79266:  B               loc_79270
79268:  LDR             R0, =(aInvalidObjectI - 0x7926E); "Invalid object id %d" ...
7926A:  ADD             R0, PC; "Invalid object id %d"
7926C:  BL              sub_6C73C
79270:  ADD             R0, SP, #0x128+var_120
79272:  BL              sub_86BF8
79276:  LDR             R0, [SP,#0x128+var_C]
79278:  LDR             R1, =(__stack_chk_guard_ptr - 0x7927E)
7927A:  ADD             R1, PC; __stack_chk_guard_ptr
7927C:  LDR             R1, [R1]; __stack_chk_guard
7927E:  LDR             R1, [R1]
79280:  CMP             R1, R0
79282:  ITT EQ
79284:  ADDEQ           SP, SP, #0x120
79286:  POPEQ           {R4,R5,R7,PC}
79288:  BLX             __stack_chk_fail
