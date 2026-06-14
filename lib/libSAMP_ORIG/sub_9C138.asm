; =========================================================
; Game Engine Function: sub_9C138
; Address            : 0x9C138 - 0x9C1AA
; =========================================================

9C138:  PUSH            {R4-R7,LR}
9C13A:  ADD             R7, SP, #0xC
9C13C:  PUSH.W          {R11}
9C140:  SUB             SP, SP, #8
9C142:  MOV             R4, R0
9C144:  LDR             R0, [R0,#0x4C]
9C146:  LDR             R2, [R4,#0x50]
9C148:  STR             R1, [SP,#0x18+var_14]
9C14A:  CMP             R0, R2
9C14C:  BNE             loc_9C18C
9C14E:  CMP             R0, #0
9C150:  ADD.W           R6, R0, #1
9C154:  ITTE NE
9C156:  ADDNE.W         R1, R0, R0,LSR#31
9C15A:  ADDNE.W         R1, R0, R1,ASR#1
9C15E:  MOVEQ           R1, #8
9C160:  CMP             R1, R6
9C162:  IT GT
9C164:  MOVGT           R6, R1
9C166:  CMP             R0, R6
9C168:  BGE             loc_9C18C
9C16A:  LSLS            R0, R6, #2
9C16C:  BL              sub_885E4
9C170:  LDR             R1, [R4,#0x54]; src
9C172:  MOV             R5, R0
9C174:  CBZ             R1, loc_9C186
9C176:  LDR             R0, [R4,#0x4C]
9C178:  LSLS            R2, R0, #2; n
9C17A:  MOV             R0, R5; dest
9C17C:  BLX             j_memcpy
9C180:  LDR             R0, [R4,#0x54]
9C182:  BL              sub_88614
9C186:  LDR             R0, [R4,#0x4C]
9C188:  STRD.W          R6, R5, [R4,#0x50]
9C18C:  LDR             R1, [R4,#0x54]
9C18E:  LDR             R2, [SP,#0x18+var_14]
9C190:  STR.W           R2, [R1,R0,LSL#2]
9C194:  LDR             R0, [R4,#0x4C]
9C196:  ADDS            R0, #1
9C198:  STR             R0, [R4,#0x4C]
9C19A:  MOV             R0, R4
9C19C:  ADD             SP, SP, #8
9C19E:  POP.W           {R11}
9C1A2:  POP.W           {R4-R7,LR}
9C1A6:  B.W             sub_9BF30
