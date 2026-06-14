; =========================================================
; Game Engine Function: _ZN12CTaskManager5FlushEv
; Address            : 0x534000 - 0x5340AE
; =========================================================

534000:  PUSH            {R4,R5,R7,LR}
534002:  ADD             R7, SP, #8
534004:  MOV             R4, R0
534006:  LDR             R0, [R4]
534008:  CMP             R0, #0
53400A:  ITTT NE
53400C:  LDRNE           R1, [R0]
53400E:  LDRNE           R1, [R1,#4]
534010:  BLXNE           R1
534012:  LDR             R0, [R4,#4]
534014:  MOVS            R5, #0
534016:  STR             R5, [R4]
534018:  CMP             R0, #0
53401A:  ITTT NE
53401C:  LDRNE           R1, [R0]
53401E:  LDRNE           R1, [R1,#4]
534020:  BLXNE           R1
534022:  LDR             R0, [R4,#8]
534024:  STR             R5, [R4,#4]
534026:  CMP             R0, #0
534028:  ITTT NE
53402A:  LDRNE           R1, [R0]
53402C:  LDRNE           R1, [R1,#4]
53402E:  BLXNE           R1
534030:  LDR             R0, [R4,#0xC]
534032:  MOVS            R5, #0
534034:  STR             R5, [R4,#8]
534036:  CMP             R0, #0
534038:  ITTT NE
53403A:  LDRNE           R1, [R0]
53403C:  LDRNE           R1, [R1,#4]
53403E:  BLXNE           R1
534040:  LDR             R0, [R4,#0x10]
534042:  STR             R5, [R4,#0xC]
534044:  CMP             R0, #0
534046:  ITTT NE
534048:  LDRNE           R1, [R0]
53404A:  LDRNE           R1, [R1,#4]
53404C:  BLXNE           R1
53404E:  LDR             R0, [R4,#0x14]
534050:  MOVS            R5, #0
534052:  STR             R5, [R4,#0x10]
534054:  CMP             R0, #0
534056:  ITTT NE
534058:  LDRNE           R1, [R0]
53405A:  LDRNE           R1, [R1,#4]
53405C:  BLXNE           R1
53405E:  LDR             R0, [R4,#0x18]
534060:  STR             R5, [R4,#0x14]
534062:  CMP             R0, #0
534064:  ITTT NE
534066:  LDRNE           R1, [R0]
534068:  LDRNE           R1, [R1,#4]
53406A:  BLXNE           R1
53406C:  LDR             R0, [R4,#0x1C]
53406E:  MOVS            R5, #0
534070:  STR             R5, [R4,#0x18]
534072:  CMP             R0, #0
534074:  ITTT NE
534076:  LDRNE           R1, [R0]
534078:  LDRNE           R1, [R1,#4]
53407A:  BLXNE           R1
53407C:  LDR             R0, [R4,#0x20]
53407E:  STR             R5, [R4,#0x1C]
534080:  CMP             R0, #0
534082:  ITTT NE
534084:  LDRNE           R1, [R0]
534086:  LDRNE           R1, [R1,#4]
534088:  BLXNE           R1
53408A:  LDR             R0, [R4,#0x24]
53408C:  MOVS            R5, #0
53408E:  STR             R5, [R4,#0x20]
534090:  CMP             R0, #0
534092:  ITTT NE
534094:  LDRNE           R1, [R0]
534096:  LDRNE           R1, [R1,#4]
534098:  BLXNE           R1
53409A:  LDR             R0, [R4,#0x28]
53409C:  STR             R5, [R4,#0x24]
53409E:  CMP             R0, #0
5340A0:  ITTT NE
5340A2:  LDRNE           R1, [R0]
5340A4:  LDRNE           R1, [R1,#4]
5340A6:  BLXNE           R1
5340A8:  MOVS            R0, #0
5340AA:  STR             R0, [R4,#0x28]
5340AC:  POP             {R4,R5,R7,PC}
