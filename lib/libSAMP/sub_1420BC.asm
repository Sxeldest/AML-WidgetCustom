; =========================================================
; Game Engine Function: sub_1420BC
; Address            : 0x1420BC - 0x142182
; =========================================================

1420BC:  PUSH            {R4,R5,R7,LR}
1420BE:  ADD             R7, SP, #8
1420C0:  SUB.W           SP, SP, #0x440
1420C4:  LDR             R2, [R1,#0xC]; size
1420C6:  MOV             R4, R0
1420C8:  LDR             R1, [R1,#0x14]; src
1420CA:  ADD             R0, SP, #0x448+var_330; int
1420CC:  MOVS            R3, #0
1420CE:  BL              sub_17D4F2
1420D2:  LDR.W           R0, [R4,#0x218]
1420D6:  SUBS            R0, #7
1420D8:  CMN.W           R0, #6
1420DC:  BCC             loc_142176
1420DE:  ADD             R0, SP, #0x448+var_330
1420E0:  MOVS            R1, #8
1420E2:  BL              sub_17DA96
1420E6:  ADD             R0, SP, #0x448+var_330; int
1420E8:  SUB.W           R1, R7, #-var_A; int
1420EC:  MOVS            R2, #8
1420EE:  MOVS            R3, #1
1420F0:  BL              sub_17D786
1420F4:  LDRB.W          R2, [R7,#var_A]
1420F8:  ADDW            R5, SP, #0x448+dest
1420FC:  ADD             R0, SP, #0x448+var_330; int
1420FE:  MOV             R1, R5; dest
142100:  BL              sub_17D744
142104:  LDRB.W          R0, [R7,#var_A]
142108:  MOVS            R1, #0
14210A:  STRB            R1, [R5,R0]
14210C:  ADDW            R0, SP, #0x448+var_21B
142110:  MOV             R1, R5
142112:  BL              sub_18E6C8
142116:  ADDW            R0, SP, #0x448+var_21B; char *
14211A:  MOVW            R1, #0x10D; size_t
14211E:  BLX             __strlen_chk
142122:  MOV             R5, R0
142124:  ADD             R0, SP, #0x448+var_444
142126:  BL              sub_17D4A8
14212A:  MOVS            R0, #0xC
14212C:  STRB.W          R0, [R7,#var_9]
142130:  ADD             R0, SP, #0x448+var_444
142132:  SUB.W           R1, R7, #-var_9
142136:  MOVS            R2, #8
142138:  MOVS            R3, #1
14213A:  BL              sub_17D628
14213E:  STRB.W          R5, [R7,#var_9]
142142:  ADD             R0, SP, #0x448+var_444
142144:  SUB.W           R1, R7, #-var_9
142148:  MOVS            R2, #8
14214A:  MOVS            R3, #1
14214C:  BL              sub_17D628
142150:  ADD             R0, SP, #0x448+var_444
142152:  ADDW            R1, SP, #0x448+var_21B
142156:  UXTB            R2, R5
142158:  BL              sub_17D566
14215C:  LDR.W           R0, [R4,#0x210]
142160:  LDR             R1, [R0]
142162:  LDR             R5, [R1,#0x20]
142164:  MOVS            R1, #0
142166:  MOVS            R2, #0
142168:  STR             R1, [SP,#0x448+var_448]
14216A:  ADD             R1, SP, #0x448+var_444
14216C:  MOVS            R3, #8
14216E:  BLX             R5
142170:  ADD             R0, SP, #0x448+var_444
142172:  BL              sub_17D542
142176:  ADD             R0, SP, #0x448+var_330
142178:  BL              sub_17D542
14217C:  ADD.W           SP, SP, #0x440
142180:  POP             {R4,R5,R7,PC}
