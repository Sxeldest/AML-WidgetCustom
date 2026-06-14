; =========================================================
; Game Engine Function: _Z19jpeg_write_raw_dataP20jpeg_compress_structPPPhj
; Address            : 0x4761B8 - 0x47625C
; =========================================================

4761B8:  PUSH            {R4-R7,LR}
4761BA:  ADD             R7, SP, #0xC
4761BC:  PUSH.W          {R8}
4761C0:  MOV             R4, R0
4761C2:  MOV             R6, R2
4761C4:  LDR             R0, [R4,#0x14]
4761C6:  MOV             R8, R1
4761C8:  CMP             R0, #0x66 ; 'f'
4761CA:  BEQ             loc_4761E0
4761CC:  LDR             R0, [R4]
4761CE:  MOVS            R1, #0x14
4761D0:  STR             R1, [R0,#0x14]
4761D2:  LDR             R0, [R4]
4761D4:  LDR             R1, [R4,#0x14]
4761D6:  STR             R1, [R0,#0x18]
4761D8:  LDR             R0, [R4]
4761DA:  LDR             R1, [R0]
4761DC:  MOV             R0, R4
4761DE:  BLX             R1
4761E0:  LDR             R1, [R4,#0x20]
4761E2:  LDR.W           R0, [R4,#0xD0]
4761E6:  CMP             R0, R1
4761E8:  BCS             loc_476240
4761EA:  LDR             R1, [R4,#8]
4761EC:  CBZ             R1, loc_4761FE
4761EE:  STR             R0, [R1,#4]
4761F0:  LDR             R0, [R4,#8]
4761F2:  LDR             R1, [R4,#0x20]
4761F4:  STR             R1, [R0,#8]
4761F6:  LDR             R0, [R4,#8]
4761F8:  LDR             R1, [R0]
4761FA:  MOV             R0, R4
4761FC:  BLX             R1
4761FE:  LDR.W           R0, [R4,#0x13C]
476202:  LDRB            R1, [R0,#0xC]
476204:  CMP             R1, #0
476206:  ITTT NE
476208:  LDRNE           R1, [R0,#4]
47620A:  MOVNE           R0, R4
47620C:  BLXNE           R1
47620E:  LDR.W           R0, [R4,#0xDC]
476212:  LSLS            R5, R0, #3
476214:  CMP             R5, R6
476216:  BLS             loc_476226
476218:  LDR             R0, [R4]
47621A:  MOVS            R1, #0x17
47621C:  STR             R1, [R0,#0x14]
47621E:  LDR             R0, [R4]
476220:  LDR             R1, [R0]
476222:  MOV             R0, R4
476224:  BLX             R1
476226:  LDR.W           R0, [R4,#0x148]
47622A:  MOV             R1, R8
47622C:  LDR             R2, [R0,#4]
47622E:  MOV             R0, R4
476230:  BLX             R2
476232:  CBZ             R0, loc_476252
476234:  LDR.W           R0, [R4,#0xD0]
476238:  ADD             R0, R5
47623A:  STR.W           R0, [R4,#0xD0]
47623E:  B               loc_476254
476240:  LDR             R0, [R4]
476242:  MOVS            R1, #0x7B ; '{'
476244:  STR             R1, [R0,#0x14]
476246:  MOV.W           R1, #0xFFFFFFFF
47624A:  LDR             R0, [R4]
47624C:  LDR             R2, [R0,#4]
47624E:  MOV             R0, R4
476250:  BLX             R2
476252:  MOVS            R5, #0
476254:  MOV             R0, R5
476256:  POP.W           {R8}
47625A:  POP             {R4-R7,PC}
