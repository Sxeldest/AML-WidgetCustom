; =========================================================
; Game Engine Function: sub_E8218
; Address            : 0xE8218 - 0xE825C
; =========================================================

E8218:  PUSH            {R4,R6,R7,LR}
E821A:  ADD             R7, SP, #8
E821C:  MOV             R4, R0
E821E:  ADDS            R0, #0x50 ; 'P'
E8220:  BL              sub_E3F7A
E8224:  LDR             R0, [R4,#0x40]
E8226:  ADD.W           R1, R4, #0x30 ; '0'
E822A:  CMP             R1, R0
E822C:  BEQ             loc_E8234
E822E:  CBZ             R0, loc_E823E
E8230:  MOVS            R1, #5
E8232:  B               loc_E8236
E8234:  MOVS            R1, #4
E8236:  LDR             R2, [R0]
E8238:  LDR.W           R1, [R2,R1,LSL#2]
E823C:  BLX             R1
E823E:  LDR             R0, [R4,#0x1C]; void *
E8240:  CBZ             R0, loc_E8246
E8242:  BLX             j__ZdlPv; operator delete(void *)
E8246:  LDR             R0, [R4,#0x10]; void *
E8248:  CBZ             R0, loc_E824E
E824A:  BLX             j__ZdlPv; operator delete(void *)
E824E:  LDR             R0, [R4,#4]; void *
E8250:  CBZ             R0, loc_E8258
E8252:  STR             R0, [R4,#8]
E8254:  BLX             j__ZdlPv; operator delete(void *)
E8258:  MOV             R0, R4
E825A:  POP             {R4,R6,R7,PC}
