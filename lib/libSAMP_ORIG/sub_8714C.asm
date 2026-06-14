; =========================================================
; Game Engine Function: sub_8714C
; Address            : 0x8714C - 0x87320
; =========================================================

8714C:  PUSH            {R4-R7,LR}
8714E:  ADD             R7, SP, #0xC
87150:  PUSH.W          {R8-R11}
87154:  SUB             SP, SP, #0xC
87156:  LDR             R4, [R0]
87158:  CMP             R4, #0
8715A:  BEQ.W           loc_87308
8715E:  STR             R0, [SP,#0x28+var_24]
87160:  MOVS            R0, #0x40 ; '@'; unsigned int
87162:  BLX             j__Znaj; operator new[](uint)
87166:  MOV             R11, R0
87168:  MOVS            R6, #0x10
8716A:  MOV.W           R8, #1
8716E:  MOV.W           R9, #0
87172:  STR             R4, [R0]
87174:  ADD.W           R0, R9, #1
87178:  SUBS.W          R9, R0, R6
8717C:  IT NE
8717E:  MOVNE           R9, R0
87180:  MOV             R0, R9
87182:  CMP.W           R9, #0
87186:  IT EQ
87188:  MOVEQ           R0, R6
8718A:  ADD.W           R0, R11, R0,LSL#2
8718E:  LDR.W           R4, [R0,#-4]
87192:  LDR             R0, [R4,#8]
87194:  CBZ             R0, loc_87206
87196:  CMP             R6, #0
87198:  BEQ             loc_87232
8719A:  STR.W           R0, [R11,R8,LSL#2]
8719E:  ADD.W           R0, R8, #1
871A2:  SUBS.W          R8, R0, R6
871A6:  IT NE
871A8:  MOVNE           R8, R0
871AA:  CMP             R8, R9
871AC:  BNE             loc_87206
871AE:  MOVW            R0, #0xFFFE
871B2:  STR             R4, [SP,#0x28+var_20]
871B4:  MOVT            R0, #0x3FFF
871B8:  AND.W           R0, R0, R6,LSL#1
871BC:  SUBS.W          R1, R0, R6,LSL#1
871C0:  MOV.W           R0, R6,LSL#3
871C4:  IT NE
871C6:  MOVNE           R1, #1
871C8:  CMP             R1, #0
871CA:  IT NE
871CC:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
871D0:  BLX             j__Znaj; operator new[](uint)
871D4:  MOV             R5, R0
871D6:  MOV.W           R10, R6,LSL#1
871DA:  MOVS            R4, #0
871DC:  ADD.W           R0, R9, R4
871E0:  MOV             R1, R6
871E2:  BLX             sub_109688
871E6:  LDR.W           R0, [R11,R1,LSL#2]
871EA:  STR.W           R0, [R5,R4,LSL#2]
871EE:  ADDS            R4, #1
871F0:  CMP             R6, R4
871F2:  BNE             loc_871DC
871F4:  MOV             R0, R11; void *
871F6:  BLX             j__ZdaPv; operator delete[](void *)
871FA:  LDR             R4, [SP,#0x28+var_20]
871FC:  MOV.W           R9, #0
87200:  MOV             R8, R6
87202:  MOV             R11, R5
87204:  B               loc_87208
87206:  MOV             R10, R6
87208:  LDR             R0, [R4,#0xC]
8720A:  CBZ             R0, loc_8722E
8720C:  CMP.W           R10, #0
87210:  MOV             R6, R10
87212:  BNE             loc_8724E
87214:  MOVS            R0, #0x40 ; '@'; unsigned int
87216:  BLX             j__Znaj; operator new[](uint)
8721A:  MOV             R11, R0
8721C:  LDR             R0, [R4,#0xC]
8721E:  MOVS            R6, #0x10
87220:  MOV.W           R8, #1
87224:  MOV.W           R9, #0
87228:  STR.W           R0, [R11]
8722C:  B               loc_872C0
8722E:  MOV             R6, R10
87230:  B               loc_872C0
87232:  MOVS            R0, #0x40 ; '@'; unsigned int
87234:  BLX             j__Znaj; operator new[](uint)
87238:  MOV             R11, R0
8723A:  LDR             R0, [R4,#8]
8723C:  STR.W           R0, [R11]
87240:  MOVS            R6, #0x10
87242:  LDR             R0, [R4,#0xC]
87244:  MOV.W           R8, #1
87248:  MOV.W           R9, #0
8724C:  CBZ             R0, loc_872C0
8724E:  STR.W           R0, [R11,R8,LSL#2]
87252:  ADD.W           R0, R8, #1
87256:  SUBS.W          R8, R0, R6
8725A:  IT NE
8725C:  MOVNE           R8, R0
8725E:  CMP             R8, R9
87260:  BNE             loc_872C0
87262:  MOVW            R0, #0xFFFE
87266:  MOV             R8, R4
87268:  MOVT            R0, #0x3FFF
8726C:  AND.W           R0, R0, R6,LSL#1
87270:  SUBS.W          R1, R0, R6,LSL#1
87274:  MOV.W           R0, R6,LSL#3
87278:  IT NE
8727A:  MOVNE           R1, #1
8727C:  CMP             R1, #0
8727E:  IT NE
87280:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
87284:  BLX             j__Znaj; operator new[](uint)
87288:  MOV             R5, R0
8728A:  MOV.W           R10, R6,LSL#1
8728E:  MOVS            R4, #0
87290:  ADD.W           R0, R9, R4
87294:  MOV             R1, R6
87296:  BLX             sub_109688
8729A:  LDR.W           R0, [R11,R1,LSL#2]
8729E:  STR.W           R0, [R5,R4,LSL#2]
872A2:  ADDS            R4, #1
872A4:  CMP             R6, R4
872A6:  BNE             loc_87290
872A8:  MOV             R0, R11; void *
872AA:  BLX             j__ZdaPv; operator delete[](void *)
872AE:  MOV.W           R9, #0
872B2:  MOV             R4, R8
872B4:  CMP.W           R8, #0
872B8:  MOV             R8, R6
872BA:  MOV             R11, R5
872BC:  MOV             R6, R10
872BE:  BEQ             loc_872C6
872C0:  MOV             R0, R4; void *
872C2:  BLX             j__ZdlPv; operator delete(void *)
872C6:  CMP             R8, R9
872C8:  MOV.W           R0, #0
872CC:  SUB.W           R1, R8, R9
872D0:  IT CC
872D2:  NEGCC           R0, R6
872D4:  CMP             R1, R0
872D6:  BNE.W           loc_87174
872DA:  LDR.W           R8, [SP,#0x28+var_24]
872DE:  MOVS            R5, #0
872E0:  ADD.W           R4, R8, #4
872E4:  LDR.W           R0, [R4,R5,LSL#3]; void *
872E8:  CMP             R0, #0
872EA:  IT NE
872EC:  BLXNE           j__ZdaPv; operator delete[](void *)
872F0:  ADDS            R5, #1
872F2:  CMP.W           R5, #0x100
872F6:  BNE             loc_872E4
872F8:  MOVS            R0, #0
872FA:  CMP             R6, #0
872FC:  STR.W           R0, [R8]
87300:  IT NE
87302:  CMPNE.W         R11, #0
87306:  BNE             loc_87310
87308:  ADD             SP, SP, #0xC
8730A:  POP.W           {R8-R11}
8730E:  POP             {R4-R7,PC}
87310:  MOV             R0, R11; void *
87312:  ADD             SP, SP, #0xC
87314:  POP.W           {R8-R11}
87318:  POP.W           {R4-R7,LR}
8731C:  B.W             _ZdaPvRKSt9nothrow_t_0; operator delete[](void *,std::nothrow_t const&)
