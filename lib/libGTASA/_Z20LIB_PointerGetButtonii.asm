; =========================================================
; Game Engine Function: _Z20LIB_PointerGetButtonii
; Address            : 0x270170 - 0x270192
; =========================================================

270170:  MOV             R2, R0
270172:  CMP             R2, #1
270174:  MOV.W           R0, #0xFFFFFFFF
270178:  IT LE
27017A:  CMPLE           R1, #2
27017C:  BGT             locret_270190
27017E:  LDR             R0, =(pointers_ptr - 0x270188)
270180:  RSB.W           R2, R2, R2,LSL#3
270184:  ADD             R0, PC; pointers_ptr
270186:  LDR             R0, [R0]; pointers
270188:  ADD.W           R0, R0, R2,LSL#4
27018C:  LDR.W           R0, [R0,R1,LSL#2]
270190:  BX              LR
