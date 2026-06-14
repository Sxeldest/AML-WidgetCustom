; =========================================================
; Game Engine Function: _ZN20ES2ResourceContainer11PutResourceEjj
; Address            : 0x1CFE2E - 0x1CFF42
; =========================================================

1CFE2E:  PUSH            {R4-R7,LR}
1CFE30:  ADD             R7, SP, #0xC
1CFE32:  PUSH.W          {R8-R11}
1CFE36:  SUB             SP, SP, #4
1CFE38:  MOV             R4, R0
1CFE3A:  MOV             R6, R1
1CFE3C:  LDR             R0, [R4,#0x10]
1CFE3E:  MOV             R8, R2
1CFE40:  ASRS            R1, R0, #0x1F
1CFE42:  ADD.W           R1, R0, R1,LSR#30
1CFE46:  ASRS            R1, R1, #2
1CFE48:  CMP             R1, R8
1CFE4A:  BLS             loc_1CFEB8
1CFE4C:  LDR             R5, [R4,#8]
1CFE4E:  CBZ             R5, loc_1CFECC
1CFE50:  LDR             R1, [R4,#0x14]
1CFE52:  ADD             R1, R8
1CFE54:  CMP             R1, R0
1CFE56:  BLS             loc_1CFED4
1CFE58:  MOV             R11, R6
1CFE5A:  BLX             rand
1CFE5E:  LDR.W           R9, [R4]
1CFE62:  CMP             R0, #0
1CFE64:  LDRD.W          R1, R6, [R4,#8]
1CFE68:  LDR.W           R10, [R4,#0x14]
1CFE6C:  IT MI
1CFE6E:  NEGMI           R0, R0
1CFE70:  BLX             __aeabi_uidivmod
1CFE74:  MOV             R5, R1
1CFE76:  LDR.W           R0, [R6,R5,LSL#3]
1CFE7A:  SUB.W           R0, R10, R0
1CFE7E:  STR             R0, [R4,#0x14]
1CFE80:  ADD.W           R0, R6, R5,LSL#3
1CFE84:  LDR.W           R2, [R9]
1CFE88:  LDR             R1, [R0,#4]
1CFE8A:  MOV             R0, R4
1CFE8C:  BLX             R2
1CFE8E:  LDRD.W          R0, R1, [R4,#8]
1CFE92:  ADD.W           R0, R1, R0,LSL#3
1CFE96:  LDRD.W          R2, R0, [R0,#-8]
1CFE9A:  STR.W           R2, [R1,R5,LSL#3]
1CFE9E:  ADD.W           R1, R1, R5,LSL#3
1CFEA2:  STR             R0, [R1,#4]
1CFEA4:  LDR             R0, [R4,#8]
1CFEA6:  SUBS            R5, R0, #1
1CFEA8:  STR             R5, [R4,#8]
1CFEAA:  BEQ             loc_1CFED0
1CFEAC:  LDRD.W          R0, R1, [R4,#0x10]
1CFEB0:  ADD             R1, R8
1CFEB2:  CMP             R1, R0
1CFEB4:  BHI             loc_1CFE5A
1CFEB6:  B               loc_1CFED2
1CFEB8:  LDR             R0, [R4]
1CFEBA:  MOV             R1, R6
1CFEBC:  LDR             R2, [R0]
1CFEBE:  MOV             R0, R4
1CFEC0:  ADD             SP, SP, #4
1CFEC2:  POP.W           {R8-R11}
1CFEC6:  POP.W           {R4-R7,LR}
1CFECA:  BX              R2
1CFECC:  MOVS            R5, #0
1CFECE:  B               loc_1CFED4
1CFED0:  MOVS            R5, #0
1CFED2:  MOV             R6, R11
1CFED4:  LDR             R0, [R4,#0x14]
1CFED6:  LDR             R1, [R4,#4]
1CFED8:  ADD             R0, R8
1CFEDA:  STR             R0, [R4,#0x14]
1CFEDC:  ADDS            R0, R5, #1
1CFEDE:  CMP             R1, R0
1CFEE0:  BCS             loc_1CFF26
1CFEE2:  MOVW            R1, #0xAAAB
1CFEE6:  LSLS            R0, R0, #2
1CFEE8:  MOVT            R1, #0xAAAA
1CFEEC:  UMULL.W         R0, R1, R0, R1
1CFEF0:  MOVS            R0, #3
1CFEF2:  ADD.W           R11, R0, R1,LSR#1
1CFEF6:  MOV.W           R0, R11,LSL#3; byte_count
1CFEFA:  BLX             malloc
1CFEFE:  LDR.W           R9, [R4,#0xC]
1CFF02:  MOV             R10, R0
1CFF04:  CMP.W           R9, #0
1CFF08:  BEQ             loc_1CFF1C
1CFF0A:  LSLS            R2, R5, #3; size_t
1CFF0C:  MOV             R0, R10; void *
1CFF0E:  MOV             R1, R9; void *
1CFF10:  BLX             memcpy_0
1CFF14:  MOV             R0, R9; p
1CFF16:  BLX             free
1CFF1A:  LDR             R5, [R4,#8]
1CFF1C:  STR.W           R10, [R4,#0xC]
1CFF20:  STR.W           R11, [R4,#4]
1CFF24:  B               loc_1CFF2A
1CFF26:  LDR.W           R10, [R4,#0xC]
1CFF2A:  ADD.W           R0, R10, R5,LSL#3
1CFF2E:  STR.W           R8, [R10,R5,LSL#3]
1CFF32:  STR             R6, [R0,#4]
1CFF34:  LDR             R0, [R4,#8]
1CFF36:  ADDS            R0, #1
1CFF38:  STR             R0, [R4,#8]
1CFF3A:  ADD             SP, SP, #4
1CFF3C:  POP.W           {R8-R11}
1CFF40:  POP             {R4-R7,PC}
