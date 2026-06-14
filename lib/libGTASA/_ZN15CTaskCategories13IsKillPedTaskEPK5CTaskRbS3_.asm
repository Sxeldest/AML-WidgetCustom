; =========================================================
; Game Engine Function: _ZN15CTaskCategories13IsKillPedTaskEPK5CTaskRbS3_
; Address            : 0x548218 - 0x548238
; =========================================================

548218:  PUSH            {R4,R6,R7,LR}
54821A:  ADD             R7, SP, #8
54821C:  MOV             R4, R1
54821E:  MOVS            R1, #0
548220:  STRB            R1, [R4]
548222:  STRB            R1, [R2]
548224:  LDR             R1, [R0]
548226:  LDR             R1, [R1,#0x14]
548228:  BLX             R1
54822A:  SUBW            R0, R0, #0x3FB
54822E:  CMP             R0, #2
548230:  ITT LS
548232:  MOVLS           R0, #1
548234:  STRBLS          R0, [R4]
548236:  POP             {R4,R6,R7,PC}
