; =========================================================
; Game Engine Function: sub_17FFBE
; Address            : 0x17FFBE - 0x1800DC
; =========================================================

17FFBE:  PUSH            {R4-R7,LR}
17FFC0:  ADD             R7, SP, #0xC
17FFC2:  PUSH.W          {R8}
17FFC6:  SUB             SP, SP, #0x20
17FFC8:  MOV             R4, R0
17FFCA:  MOVS            R0, #1
17FFCC:  STRB.W          R0, [R4,#0x80]
17FFD0:  MOVS            R0, #0xC
17FFD2:  LDR             R3, [R2,R0]
17FFD4:  LDR             R6, [R1,R0]
17FFD6:  CMP             R6, R3
17FFD8:  BHI             loc_17FFF6
17FFDA:  BCC             loc_17FFE4
17FFDC:  SUBS            R3, R0, #4
17FFDE:  CMP             R0, #0
17FFE0:  MOV             R0, R3
17FFE2:  BNE             loc_17FFD2
17FFE4:  VLD1.32         {D16-D17}, [R1]
17FFE8:  ADD.W           R1, R4, #0xC4
17FFEC:  MOVS            R3, #0x30 ; '0'
17FFEE:  MOV             R0, R1
17FFF0:  VST1.32         {D16-D17}, [R0],R3
17FFF4:  B               loc_180008
17FFF6:  VLD1.32         {D16-D17}, [R1]
17FFFA:  ADD.W           R0, R4, #0xF4
17FFFE:  VST1.32         {D16-D17}, [R0]
180002:  ADD.W           R0, R4, #0xC4
180006:  MOV             R1, R0
180008:  VLD1.8          {D16-D17}, [R2]
18000C:  ADD.W           R8, R4, #0xC4
180010:  VST1.8          {D16-D17}, [R0]
180014:  ADD             R0, SP, #0x30+var_20
180016:  VLD1.32         {D16-D17}, [R1]
18001A:  MOVS            R1, #0
18001C:  VST1.64         {D16-D17}, [R0]
180020:  LDR.W           R2, [R0,R1,LSL#2]
180024:  SUBS            R3, R2, #1
180026:  STR.W           R3, [R0,R1,LSL#2]
18002A:  CMP             R3, R2
18002C:  BCC             loc_180036
18002E:  ADDS            R2, R1, #1
180030:  CMP             R1, #3
180032:  MOV             R1, R2
180034:  BNE             loc_180020
180036:  ADD.W           R6, R4, #0xF4
18003A:  MOV             R0, SP
18003C:  VLD1.32         {D16-D17}, [R6]
180040:  MOVS            R1, #0
180042:  VST1.64         {D16-D17}, [R0,#0x30+var_30]
180046:  LDR.W           R2, [R0,R1,LSL#2]
18004A:  SUBS            R3, R2, #1
18004C:  STR.W           R3, [R0,R1,LSL#2]
180050:  CMP             R3, R2
180052:  BCC             loc_18005C
180054:  ADDS            R2, R1, #1
180056:  CMP             R1, #3
180058:  MOV             R1, R2
18005A:  BNE             loc_180046
18005C:  ADD.W           R5, R4, #0xA4
180060:  ADD             R0, SP, #0x30+var_20
180062:  MOV             R1, SP
180064:  MOV             R2, R5
180066:  BL              sub_184D2E
18006A:  MOV             R0, R5
18006C:  MOV             R1, R4
18006E:  BL              sub_1851BC
180072:  ADD.W           R2, R4, #0x84
180076:  MOV             R0, R4; int
180078:  MOV             R1, R5; int
18007A:  BL              sub_185718
18007E:  ADD.W           R2, R4, #0x124
180082:  MOV             R0, R8; int
180084:  MOV             R1, R6; int
180086:  BL              sub_18525C
18008A:  ADD.W           R5, R4, #0x20 ; ' '
18008E:  MOV             R0, R8
180090:  MOV             R1, R6
180092:  MOV             R2, R5
180094:  BL              sub_184D2E
180098:  ADD.W           R1, R4, #0x40 ; '@'
18009C:  MOV             R0, R5
18009E:  BL              sub_1854A8
1800A2:  ADD.W           R1, R4, #0x60 ; '`'
1800A6:  MOV             R0, R5
1800A8:  BL              sub_18553A
1800AC:  ADD.W           R1, R4, #0xD4
1800B0:  MOV             R0, R8
1800B2:  BL              sub_18559E
1800B6:  ADD.W           R1, R4, #0xE4
1800BA:  MOV             R0, R8
1800BC:  BL              sub_185604
1800C0:  ADD.W           R1, R4, #0x104
1800C4:  MOV             R0, R6
1800C6:  BL              sub_18559E
1800CA:  ADD.W           R1, R4, #0x114
1800CE:  MOV             R0, R6
1800D0:  BL              sub_185604
1800D4:  ADD             SP, SP, #0x20 ; ' '
1800D6:  POP.W           {R8}
1800DA:  POP             {R4-R7,PC}
