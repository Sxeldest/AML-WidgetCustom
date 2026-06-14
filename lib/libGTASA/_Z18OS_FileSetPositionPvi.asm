; =========================================================
; Game Engine Function: _Z18OS_FileSetPositionPvi
; Address            : 0x2670CC - 0x26717C
; =========================================================

2670CC:  PUSH            {R4,R5,R7,LR}
2670CE:  ADD             R7, SP, #8
2670D0:  MOV             R5, R0
2670D2:  MOV             R4, R1
2670D4:  LDR             R0, [R5,#4]; stream
2670D6:  CBZ             R0, loc_2670EA
2670D8:  MOV             R1, R4; off
2670DA:  MOVS            R2, #0; whence
2670DC:  MOVS            R5, #0
2670DE:  BLX             fseek
2670E2:  CMP             R0, #0
2670E4:  BNE             loc_267170
2670E6:  MOV             R0, R5
2670E8:  POP             {R4,R5,R7,PC}
2670EA:  LDR             R0, [R5]
2670EC:  CMP             R0, #0
2670EE:  BEQ             loc_267170
2670F0:  LDRB            R1, [R5,#8]
2670F2:  CBZ             R1, loc_267116
2670F4:  LDR             R1, [R5,#0xC]
2670F6:  CBZ             R1, loc_267100
2670F8:  MOV             R0, R5; this
2670FA:  BLX             j__ZN11AndroidFile10AsyncFlushEv; AndroidFile::AsyncFlush(void)
2670FE:  LDR             R0, [R5]
267100:  LDR             R1, [R5,#0x18]
267102:  CMP             R1, #0
267104:  ITT GE
267106:  LDRGE           R1, [R5,#0x1C]
267108:  ADDGE           R4, R1
26710A:  LDRD.W          R1, R0, [R0]; asset
26710E:  CMP             R1, #1
267110:  BNE             loc_267132
267112:  MOV             R1, R4
267114:  B               loc_267128
267116:  LDR             R1, [R5,#0x18]
267118:  CMP             R1, #0
26711A:  BLT             loc_26714C
26711C:  LDR             R1, [R5,#0x1C]
26711E:  LDRD.W          R2, R0, [R0]; stream
267122:  ADD             R1, R4; off
267124:  CMP             R2, #1
267126:  BNE             loc_267134
267128:  MOVS            R2, #0; whence
26712A:  BLX             fseek
26712E:  MOV             R5, R0
267130:  B               loc_267142
267132:  MOV             R1, R4; offset
267134:  MOVS            R2, #0; whence
267136:  BLX             AAsset_seek
26713A:  MOV             R5, R0
26713C:  ADDS            R0, R5, #1
26713E:  IT NE
267140:  MOVNE           R5, #0
267142:  CMP             R5, #0
267144:  IT NE
267146:  MOVNE           R5, #3
267148:  MOV             R0, R5
26714A:  POP             {R4,R5,R7,PC}
26714C:  LDRD.W          R1, R0, [R0]; asset
267150:  CMP             R1, #1
267152:  BNE             loc_267160
267154:  MOV             R1, R4; off
267156:  MOVS            R2, #0; whence
267158:  BLX             fseek
26715C:  CBNZ            R0, loc_267170
26715E:  B               loc_267176
267160:  MOV             R1, R4; offset
267162:  MOVS            R2, #0; whence
267164:  BLX             AAsset_seek
267168:  ADDS            R1, R0, #1
26716A:  IT NE
26716C:  MOVNE           R0, #0
26716E:  CBZ             R0, loc_267176
267170:  MOVS            R5, #3
267172:  MOV             R0, R5
267174:  POP             {R4,R5,R7,PC}
267176:  MOVS            R5, #0
267178:  MOV             R0, R5
26717A:  POP             {R4,R5,R7,PC}
