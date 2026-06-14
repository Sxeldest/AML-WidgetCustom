; =========================================================
; Game Engine Function: silk_log2lin
; Address            : 0x196146 - 0x1961A2
; =========================================================

196146:  CMP             R0, #0
196148:  ITT LT
19614A:  MOVLT           R0, #0
19614C:  BXLT            LR
19614E:  MOVW            R1, #0xF7E
196152:  CMP             R0, R1
196154:  ITT GT
196156:  MOVGT           R0, #0x7FFFFFFF
19615A:  BXGT            LR
19615C:  LSRS            R3, R0, #7
19615E:  MOVS            R1, #1
196160:  AND.W           R2, R0, #0x7F
196164:  LSLS            R1, R3
196166:  CMP.W           R0, #0x800
19616A:  BGE             loc_196188
19616C:  RSB.W           R0, R2, #0x80
196170:  SMULBB.W        R12, R2, R0
196174:  MOV             R0, #0xFFFFFF52
196178:  MUL.W           R0, R12, R0
19617C:  ADD.W           R0, R2, R0,ASR#16
196180:  LSLS            R0, R3
196182:  ASRS            R0, R0, #7
196184:  ADD             R0, R1
196186:  BX              LR
196188:  RSB.W           R0, R2, #0x80
19618C:  MOV             R3, #0xFFFFFF52
196190:  SMULBB.W        R0, R2, R0
196194:  MULS            R0, R3
196196:  ADD.W           R0, R2, R0,ASR#16
19619A:  ASRS            R2, R1, #7
19619C:  MULS            R0, R2
19619E:  ADD             R0, R1
1961A0:  BX              LR
