; =========================================================
; Game Engine Function: _ZN15CTaskCategories19ComputeTaskCategoryEPK5CTask
; Address            : 0x5481D4 - 0x548218
; =========================================================

5481D4:  PUSH            {R4,R5,R7,LR}
5481D6:  ADD             R7, SP, #8
5481D8:  MOV             R4, R0
5481DA:  LDR             R0, [R4]
5481DC:  LDR             R1, [R0,#0x14]
5481DE:  MOV             R0, R4
5481E0:  BLX             R1
5481E2:  MOV             R5, R0
5481E4:  LDR             R0, [R4]
5481E6:  LDR             R1, [R0,#0x14]
5481E8:  MOV             R0, R4
5481EA:  BLX             R1
5481EC:  LDR             R1, [R4]
5481EE:  SUBW            R2, R5, #0x3FB
5481F2:  MOVS            R5, #1
5481F4:  CMP             R2, #3
5481F6:  IT CC
5481F8:  MOVCC           R5, #4
5481FA:  SUBW            R0, R0, #0x3FB
5481FE:  LDR             R1, [R1,#0x14]
548200:  CMP             R0, #3
548202:  MOV             R0, R4
548204:  IT CC
548206:  MOVCC           R5, #2
548208:  BLX             R1
54820A:  SUBW            R0, R0, #0x3FB
54820E:  CMP             R0, #3
548210:  IT CC
548212:  MOVCC           R5, #4
548214:  MOV             R0, R5
548216:  POP             {R4,R5,R7,PC}
