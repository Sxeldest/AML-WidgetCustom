; =========================================================
; Game Engine Function: sub_18B1A0
; Address            : 0x18B1A0 - 0x18B242
; =========================================================

18B1A0:  PUSH            {R4-R7,LR}
18B1A2:  ADD             R7, SP, #0xC
18B1A4:  PUSH.W          {R8-R10}
18B1A8:  MOV             R4, R0
18B1AA:  LDRD.W          R5, R0, [R0,#4]
18B1AE:  MOV             R9, R2
18B1B0:  MOV             R8, R1
18B1B2:  CMP             R5, R0
18B1B4:  BNE             loc_18B21A
18B1B6:  MOVW            R0, #0xFFFE
18B1BA:  LSLS            R6, R5, #1
18B1BC:  MOVT            R0, #0x3FFF
18B1C0:  CMP             R5, #0
18B1C2:  IT EQ
18B1C4:  MOVEQ           R6, #0x10
18B1C6:  ANDS            R0, R6
18B1C8:  SUBS            R1, R6, R0
18B1CA:  MOV.W           R0, #8
18B1CE:  ADD.W           R0, R0, R6,LSL#2
18B1D2:  STR             R6, [R4,#8]
18B1D4:  IT NE
18B1D6:  MOVNE           R1, #1
18B1D8:  CMP.W           R0, R6,LSL#2
18B1DC:  IT CC
18B1DE:  MOVCC.W         R0, #0xFFFFFFFF
18B1E2:  CMP             R1, #0
18B1E4:  IT NE
18B1E6:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
18B1EA:  BLX             j__Znaj; operator new[](uint)
18B1EE:  MOVS            R1, #4
18B1F0:  LDR.W           R10, [R4]
18B1F4:  STRD.W          R1, R6, [R0]
18B1F8:  ADD.W           R6, R0, #8
18B1FC:  LSLS            R2, R5, #2; n
18B1FE:  MOV             R0, R6; dest
18B200:  MOV             R1, R10; src
18B202:  BLX             j_memcpy
18B206:  CMP.W           R10, #0
18B20A:  BEQ             loc_18B216
18B20C:  SUB.W           R0, R10, #8; void *
18B210:  BLX             j__ZdaPv; operator delete[](void *)
18B214:  LDR             R5, [R4,#4]
18B216:  STR             R6, [R4]
18B218:  B               loc_18B21C
18B21A:  LDR             R6, [R4]
18B21C:  SUB.W           R2, R5, R9
18B220:  ADD.W           R1, R6, R9,LSL#2; src
18B224:  ADDS            R0, R1, #4; dest
18B226:  LSLS            R2, R2, #2; n
18B228:  BLX             j_memmove
18B22C:  LDR             R0, [R4]
18B22E:  LDR.W           R1, [R8]
18B232:  STR.W           R1, [R0,R9,LSL#2]
18B236:  LDR             R0, [R4,#4]
18B238:  ADDS            R0, #1
18B23A:  STR             R0, [R4,#4]
18B23C:  POP.W           {R8-R10}
18B240:  POP             {R4-R7,PC}
