; =========================================================
; Game Engine Function: sub_15B12E
; Address            : 0x15B12E - 0x15B19A
; =========================================================

15B12E:  PUSH            {R4-R7,LR}
15B130:  ADD             R7, SP, #0xC
15B132:  PUSH.W          {R11}
15B136:  SUB             SP, SP, #0x10
15B138:  MOV             R6, R1
15B13A:  SUB.W           R1, R7, #-var_12; int
15B13E:  MOV             R4, R0
15B140:  MOVS            R5, #0
15B142:  MOV             R0, R6; int
15B144:  MOVS            R2, #0x10
15B146:  MOVS            R3, #1
15B148:  STRH.W          R5, [R7,#var_12]
15B14C:  BL              sub_17D786
15B150:  MOV             R0, SP; int
15B152:  MOV             R1, R6; int
15B154:  BL              sub_15B24E
15B158:  LDR             R1, [R6]
15B15A:  LDR             R0, [R6,#8]
15B15C:  CMP             R0, R1
15B15E:  BGE             loc_15B176
15B160:  LDR             R1, [R6,#0xC]
15B162:  ASRS            R2, R0, #3
15B164:  LDRB            R1, [R1,R2]
15B166:  ADDS            R2, R0, #1
15B168:  AND.W           R0, R0, #7
15B16C:  STR             R2, [R6,#8]
15B16E:  LSL.W           R0, R1, R0
15B172:  UXTB            R0, R0
15B174:  LSRS            R5, R0, #7
15B176:  LDRH.W          R2, [R7,#var_12]
15B17A:  MOV             R1, SP
15B17C:  MOV             R0, R4
15B17E:  MOV             R3, R5
15B180:  BL              sub_15530A
15B184:  LDRB.W          R0, [SP,#0x20+var_20]
15B188:  LSLS            R0, R0, #0x1F
15B18A:  ITT NE
15B18C:  LDRNE           R0, [SP,#0x20+var_18]; void *
15B18E:  BLXNE           j__ZdlPv; operator delete(void *)
15B192:  ADD             SP, SP, #0x10
15B194:  POP.W           {R11}
15B198:  POP             {R4-R7,PC}
