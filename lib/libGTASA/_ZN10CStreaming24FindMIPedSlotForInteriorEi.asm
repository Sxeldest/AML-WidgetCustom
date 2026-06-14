; =========================================================
; Game Engine Function: _ZN10CStreaming24FindMIPedSlotForInteriorEi
; Address            : 0x2D8FD4 - 0x2D916C
; =========================================================

2D8FD4:  LDR             R1, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D8FE4)
2D8FD6:  ASRS            R2, R0, #0x1F
2D8FD8:  MOVW            R12, #0xFFF8
2D8FDC:  ADD.W           R3, R0, R2,LSR#29
2D8FE0:  ADD             R1, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D8FE2:  MOVT            R12, #0x3FFF
2D8FE6:  AND.W           R3, R3, R12
2D8FEA:  LDR             R1, [R1]; CStreaming::ms_pedsLoaded ...
2D8FEC:  SUBS            R3, R0, R3
2D8FEE:  LDR.W           R1, [R1,R3,LSL#2]
2D8FF2:  CMP             R1, #0
2D8FF4:  BLT             loc_2D900C
2D8FF6:  LDR             R3, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D9000)
2D8FF8:  ADD.W           R2, R1, R1,LSL#2
2D8FFC:  ADD             R3, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D8FFE:  LDR             R3, [R3]; CStreaming::ms_aInfoForModel ...
2D9000:  ADD.W           R2, R3, R2,LSL#2
2D9004:  LDRB            R2, [R2,#0x10]
2D9006:  CMP             R2, #1
2D9008:  BEQ.W           loc_2D9162
2D900C:  LDR             R1, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D9014)
2D900E:  ADDS            R2, R0, #1
2D9010:  ADD             R1, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D9012:  ASRS            R3, R2, #0x1F
2D9014:  ADD.W           R3, R2, R3,LSR#29
2D9018:  AND.W           R3, R3, R12
2D901C:  LDR             R1, [R1]; CStreaming::ms_pedsLoaded ...
2D901E:  SUBS            R2, R2, R3
2D9020:  LDR.W           R1, [R1,R2,LSL#2]
2D9024:  CMP.W           R1, #0xFFFFFFFF
2D9028:  BLE             loc_2D9040
2D902A:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D9034)
2D902C:  ADD.W           R3, R1, R1,LSL#2
2D9030:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D9032:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D9034:  ADD.W           R2, R2, R3,LSL#2
2D9038:  LDRB            R2, [R2,#0x10]
2D903A:  CMP             R2, #1
2D903C:  BEQ.W           loc_2D9162
2D9040:  LDR             R1, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D9048)
2D9042:  ADDS            R2, R0, #2
2D9044:  ADD             R1, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D9046:  ASRS            R3, R2, #0x1F
2D9048:  ADD.W           R3, R2, R3,LSR#29
2D904C:  AND.W           R3, R3, R12
2D9050:  LDR             R1, [R1]; CStreaming::ms_pedsLoaded ...
2D9052:  SUBS            R2, R2, R3
2D9054:  LDR.W           R1, [R1,R2,LSL#2]
2D9058:  CMP             R1, #0
2D905A:  BLT             loc_2D9070
2D905C:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D9066)
2D905E:  ADD.W           R3, R1, R1,LSL#2
2D9062:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D9064:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D9066:  ADD.W           R2, R2, R3,LSL#2
2D906A:  LDRB            R2, [R2,#0x10]
2D906C:  CMP             R2, #1
2D906E:  BEQ             loc_2D9162
2D9070:  LDR             R1, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D9078)
2D9072:  ADDS            R2, R0, #3
2D9074:  ADD             R1, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D9076:  ASRS            R3, R2, #0x1F
2D9078:  ADD.W           R3, R2, R3,LSR#29
2D907C:  AND.W           R3, R3, R12
2D9080:  LDR             R1, [R1]; CStreaming::ms_pedsLoaded ...
2D9082:  SUBS            R2, R2, R3
2D9084:  LDR.W           R1, [R1,R2,LSL#2]
2D9088:  CMP             R1, #0
2D908A:  BLT             loc_2D90A0
2D908C:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D9096)
2D908E:  ADD.W           R3, R1, R1,LSL#2
2D9092:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D9094:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D9096:  ADD.W           R2, R2, R3,LSL#2
2D909A:  LDRB            R2, [R2,#0x10]
2D909C:  CMP             R2, #1
2D909E:  BEQ             loc_2D9162
2D90A0:  LDR             R1, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D90A8)
2D90A2:  ADDS            R2, R0, #4
2D90A4:  ADD             R1, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D90A6:  ASRS            R3, R2, #0x1F
2D90A8:  ADD.W           R3, R2, R3,LSR#29
2D90AC:  AND.W           R3, R3, R12
2D90B0:  LDR             R1, [R1]; CStreaming::ms_pedsLoaded ...
2D90B2:  SUBS            R2, R2, R3
2D90B4:  LDR.W           R1, [R1,R2,LSL#2]
2D90B8:  CMP             R1, #0
2D90BA:  BLT             loc_2D90D0
2D90BC:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D90C6)
2D90BE:  ADD.W           R3, R1, R1,LSL#2
2D90C2:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D90C4:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D90C6:  ADD.W           R2, R2, R3,LSL#2
2D90CA:  LDRB            R2, [R2,#0x10]
2D90CC:  CMP             R2, #1
2D90CE:  BEQ             loc_2D9162
2D90D0:  LDR             R1, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D90D8)
2D90D2:  ADDS            R2, R0, #5
2D90D4:  ADD             R1, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D90D6:  ASRS            R3, R2, #0x1F
2D90D8:  ADD.W           R3, R2, R3,LSR#29
2D90DC:  AND.W           R3, R3, R12
2D90E0:  LDR             R1, [R1]; CStreaming::ms_pedsLoaded ...
2D90E2:  SUBS            R2, R2, R3
2D90E4:  LDR.W           R1, [R1,R2,LSL#2]
2D90E8:  CMP             R1, #0
2D90EA:  BLT             loc_2D9100
2D90EC:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D90F6)
2D90EE:  ADD.W           R3, R1, R1,LSL#2
2D90F2:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D90F4:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D90F6:  ADD.W           R2, R2, R3,LSL#2
2D90FA:  LDRB            R2, [R2,#0x10]
2D90FC:  CMP             R2, #1
2D90FE:  BEQ             loc_2D9162
2D9100:  LDR             R1, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D9108)
2D9102:  ADDS            R2, R0, #6
2D9104:  ADD             R1, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D9106:  ASRS            R3, R2, #0x1F
2D9108:  ADD.W           R3, R2, R3,LSR#29
2D910C:  AND.W           R3, R3, R12
2D9110:  LDR             R1, [R1]; CStreaming::ms_pedsLoaded ...
2D9112:  SUBS            R2, R2, R3
2D9114:  LDR.W           R1, [R1,R2,LSL#2]
2D9118:  CMP             R1, #0
2D911A:  BLT             loc_2D9130
2D911C:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D9126)
2D911E:  ADD.W           R3, R1, R1,LSL#2
2D9122:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D9124:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D9126:  ADD.W           R2, R2, R3,LSL#2
2D912A:  LDRB            R2, [R2,#0x10]
2D912C:  CMP             R2, #1
2D912E:  BEQ             loc_2D9162
2D9130:  LDR             R1, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D9138)
2D9132:  ADDS            R0, #7
2D9134:  ADD             R1, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D9136:  ASRS            R2, R0, #0x1F
2D9138:  ADD.W           R2, R0, R2,LSR#29
2D913C:  AND.W           R2, R2, R12
2D9140:  LDR             R1, [R1]; CStreaming::ms_pedsLoaded ...
2D9142:  SUBS            R0, R0, R2
2D9144:  LDR.W           R1, [R1,R0,LSL#2]
2D9148:  CMP             R1, #0
2D914A:  BLT             loc_2D9166
2D914C:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D9156)
2D914E:  ADD.W           R2, R1, R1,LSL#2
2D9152:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D9154:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D9156:  ADD.W           R0, R0, R2,LSL#2
2D915A:  LDRB            R0, [R0,#0x10]
2D915C:  CMP             R0, #1
2D915E:  IT NE
2D9160:  MOVNE           R1, #7
2D9162:  MOV             R0, R1
2D9164:  BX              LR
2D9166:  MOVS            R1, #7
2D9168:  MOV             R0, R1
2D916A:  BX              LR
