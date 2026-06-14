; =========================================================
; Game Engine Function: sub_18B156
; Address            : 0x18B156 - 0x18B1A0
; =========================================================

18B156:  PUSH            {R4,R6,R7,LR}
18B158:  ADD             R7, SP, #8
18B15A:  LDR             R3, [R0,#4]
18B15C:  CBZ             R3, loc_18B194
18B15E:  LDRH.W          LR, [R1]
18B162:  SUBS            R1, R3, #1
18B164:  LDR.W           R12, [R0]
18B168:  ADD.W           R0, R3, R3,LSR#31
18B16C:  MOVS            R3, #0
18B16E:  ASRS            R0, R0, #1
18B170:  LDRH.W          R4, [R12,R0,LSL#2]
18B174:  CMP             LR, R4
18B176:  BEQ             loc_18B19A
18B178:  IT CC
18B17A:  SUBCC           R1, R0, #1
18B17C:  CMP             LR, R4
18B17E:  IT CS
18B180:  ADDCS           R3, R0, #1
18B182:  SUBS            R0, R1, R3
18B184:  ADD.W           R0, R0, R0,LSR#31
18B188:  ADD.W           R0, R3, R0,ASR#1
18B18C:  BGE             loc_18B170
18B18E:  MOVS            R1, #0
18B190:  MOV             R0, R3
18B192:  B               loc_18B19C
18B194:  MOVS            R1, #0
18B196:  MOVS            R0, #0
18B198:  B               loc_18B19C
18B19A:  MOVS            R1, #1
18B19C:  STRB            R1, [R2]
18B19E:  POP             {R4,R6,R7,PC}
