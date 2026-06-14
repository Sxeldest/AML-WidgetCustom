; =========================================================
; Game Engine Function: sub_185174
; Address            : 0x185174 - 0x1851BC
; =========================================================

185174:  PUSH            {R4,R5,R7,LR}
185176:  ADD             R7, SP, #8
185178:  MOV.W           R12, #0
18517C:  MOV.W           LR, #0
185180:  MOVS            R3, #0
185182:  LDR.W           R2, [R0,R3,LSL#2]
185186:  LDR.W           R4, [R1,R3,LSL#2]
18518A:  ADD.W           R5, R2, LR
18518E:  SUBS            R5, R5, R4
185190:  STR.W           R5, [R0,R3,LSL#2]
185194:  BIC.W           R5, R2, #0x80000000
185198:  ADD             LR, R5
18519A:  BIC.W           R5, R4, #0x80000000
18519E:  ASRS            R2, R2, #0x1F
1851A0:  SUB.W           R5, LR, R5
1851A4:  ADD.W           R2, R2, R4,LSR#31
1851A8:  ADDS            R3, #1
1851AA:  ADD.W           R2, R2, R5,LSR#31
1851AE:  CMP             R3, #8
1851B0:  ADD.W           R2, R2, #1
1851B4:  SUB.W           LR, R12, R2,LSR#1
1851B8:  BNE             loc_185182
1851BA:  POP             {R4,R5,R7,PC}
