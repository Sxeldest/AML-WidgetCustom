; =========================================================
; Game Engine Function: sub_9C1B4
; Address            : 0x9C1B4 - 0x9C2AA
; =========================================================

9C1B4:  PUSH            {R4-R7,LR}
9C1B6:  ADD             R7, SP, #0xC
9C1B8:  PUSH.W          {R8-R10}
9C1BC:  MOV             R4, R0
9C1BE:  LDR             R0, [R0,#0x34]
9C1C0:  MOV             R6, R2
9C1C2:  MOV             R8, R1
9C1C4:  ADD             R0, R2
9C1C6:  CMP.W           R0, #0x10000
9C1CA:  BCC             loc_9C1E2
9C1CC:  LDRB.W          R0, [R4,#0x24]
9C1D0:  LSLS            R0, R0, #0x1D
9C1D2:  BPL             loc_9C1E2
9C1D4:  LDR             R0, [R4,#0x18]
9C1D6:  MOVS            R1, #0
9C1D8:  STRD.W          R0, R1, [R4,#0x30]
9C1DC:  MOV             R0, R4
9C1DE:  BL              sub_9BD30
9C1E2:  LDR             R1, [R4]
9C1E4:  LDR             R2, [R4,#8]
9C1E6:  LDRD.W          R9, R0, [R4,#0x18]
9C1EA:  ADD.W           R1, R1, R1,LSL#2
9C1EE:  ADD.W           R5, R9, R6
9C1F2:  ADD.W           R1, R2, R1,LSL#3
9C1F6:  CMP             R0, R5
9C1F8:  LDR.W           R2, [R1,#-0x28]
9C1FC:  ADD             R2, R8
9C1FE:  STR.W           R2, [R1,#-0x28]
9C202:  BGE             loc_9C246
9C204:  CMP             R0, #0
9C206:  ITTE NE
9C208:  ADDNE.W         R1, R0, R0,LSR#31
9C20C:  ADDNE.W         R1, R0, R1,ASR#1
9C210:  MOVEQ           R1, #8
9C212:  CMP             R1, R5
9C214:  MOV             R6, R5
9C216:  IT GT
9C218:  MOVGT           R6, R1
9C21A:  CMP             R0, R6
9C21C:  BGE             loc_9C246
9C21E:  ADD.W           R0, R6, R6,LSL#2
9C222:  LSLS            R0, R0, #2
9C224:  BL              sub_885E4
9C228:  LDR             R1, [R4,#0x20]; src
9C22A:  MOV             R10, R0
9C22C:  CBZ             R1, loc_9C242
9C22E:  LDR             R0, [R4,#0x18]
9C230:  ADD.W           R0, R0, R0,LSL#2
9C234:  LSLS            R2, R0, #2; n
9C236:  MOV             R0, R10; dest
9C238:  BLX             j_memcpy
9C23C:  LDR             R0, [R4,#0x20]
9C23E:  BL              sub_88614
9C242:  STRD.W          R6, R10, [R4,#0x1C]
9C246:  LDRD.W          R10, R0, [R4,#0xC]
9C24A:  ADD.W           R2, R9, R9,LSL#2
9C24E:  LDR             R1, [R4,#0x20]
9C250:  STR             R5, [R4,#0x18]
9C252:  ADD.W           R5, R10, R8
9C256:  CMP             R0, R5
9C258:  ADD.W           R1, R1, R2,LSL#2
9C25C:  STR             R1, [R4,#0x38]
9C25E:  BGE             loc_9C29A
9C260:  CMP             R0, #0
9C262:  ITTE NE
9C264:  ADDNE.W         R1, R0, R0,LSR#31
9C268:  ADDNE.W         R1, R0, R1,ASR#1
9C26C:  MOVEQ           R1, #8
9C26E:  CMP             R1, R5
9C270:  MOV             R6, R5
9C272:  IT GT
9C274:  MOVGT           R6, R1
9C276:  CMP             R0, R6
9C278:  BGE             loc_9C29A
9C27A:  LSLS            R0, R6, #1
9C27C:  BL              sub_885E4
9C280:  LDR             R1, [R4,#0x14]; src
9C282:  MOV             R8, R0
9C284:  CBZ             R1, loc_9C296
9C286:  LDR             R0, [R4,#0xC]
9C288:  LSLS            R2, R0, #1; n
9C28A:  MOV             R0, R8; dest
9C28C:  BLX             j_memcpy
9C290:  LDR             R0, [R4,#0x14]
9C292:  BL              sub_88614
9C296:  STRD.W          R6, R8, [R4,#0x10]
9C29A:  LDR             R0, [R4,#0x14]
9C29C:  STR             R5, [R4,#0xC]
9C29E:  ADD.W           R0, R0, R10,LSL#1
9C2A2:  STR             R0, [R4,#0x3C]
9C2A4:  POP.W           {R8-R10}
9C2A8:  POP             {R4-R7,PC}
