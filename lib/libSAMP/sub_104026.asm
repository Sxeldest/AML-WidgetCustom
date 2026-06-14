; =========================================================
; Game Engine Function: sub_104026
; Address            : 0x104026 - 0x104096
; =========================================================

104026:  PUSH            {R4-R7,LR}
104028:  ADD             R7, SP, #0xC
10402A:  PUSH.W          {R8-R10}
10402E:  VPUSH           {D8-D9}
104032:  VMOV.I32        Q4, #0
104036:  MOVW            R8, #0xFDEC
10403A:  ADD.W           R10, R0, #0x288
10403E:  MOV.W           R9, #0
104042:  MOVT            R8, #0xFFFF
104046:  MOVS            R6, #0
104048:  MOVS            R5, #0
10404A:  ADD.W           R4, R10, R5
10404E:  LDRB.W          R0, [R4,R8]
104052:  CBZ             R0, loc_104084
104054:  LDR.W           R0, [R10,R5,LSL#2]
104058:  CBZ             R0, loc_104064
10405A:  LDR             R1, [R0]
10405C:  LDR             R1, [R1,#4]
10405E:  BLX             R1
104060:  STR.W           R9, [R10,R5,LSL#2]
104064:  ADD.W           R1, R10, R6
104068:  SUB.W           R0, R4, #0x214
10406C:  SUB.W           R1, R1, #0x208
104070:  VST1.32         {D8-D9}, [R1]!
104074:  VST1.32         {D8-D9}, [R1]!
104078:  VST1.32         {D8-D9}, [R1]!
10407C:  STR.W           R9, [R1]
104080:  STRB.W          R9, [R0]
104084:  ADDS            R5, #1
104086:  ADDS            R6, #0x34 ; '4'
104088:  CMP             R5, #0xA
10408A:  BNE             loc_10404A
10408C:  VPOP            {D8-D9}
104090:  POP.W           {R8-R10}
104094:  POP             {R4-R7,PC}
