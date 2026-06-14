; =========================================================
; Game Engine Function: _Z16HashStringNoCasePKc
; Address            : 0x1E72C8 - 0x1E7328
; =========================================================

1E72C8:  PUSH            {R4,R6,R7,LR}
1E72CA:  ADD             R7, SP, #8
1E72CC:  LDR             R4, =(byte_6BD0EC - 0x1E72D4)
1E72CE:  MOV             R1, R0; char *
1E72D0:  ADD             R4, PC; byte_6BD0EC
1E72D2:  MOV             R0, R4; char *
1E72D4:  BLX             strcpy
1E72D8:  LDRB            R0, [R4]
1E72DA:  CBZ             R0, loc_1E72FA
1E72DC:  LDR             R1, =(byte_6BD0EC - 0x1E72E2)
1E72DE:  ADD             R1, PC; byte_6BD0EC
1E72E0:  ADDS            R1, #1
1E72E2:  SUB.W           R2, R0, #0x61 ; 'a'
1E72E6:  UXTB            R2, R2
1E72E8:  CMP             R2, #0x19
1E72EA:  ITT LS
1E72EC:  ADDLS           R0, #0xE0
1E72EE:  STRBLS.W        R0, [R1,#-1]
1E72F2:  LDRB.W          R0, [R1],#1
1E72F6:  CMP             R0, #0
1E72F8:  BNE             loc_1E72E2
1E72FA:  LDR             R0, =(byte_6BD0EC - 0x1E7300)
1E72FC:  ADD             R0, PC; byte_6BD0EC ; char *
1E72FE:  BLX             strlen
1E7302:  CMP             R0, #0
1E7304:  BEQ             loc_1E7320
1E7306:  LDR             R2, =(byte_6BD0EC - 0x1E730E)
1E7308:  MOVS            R1, #0
1E730A:  ADD             R2, PC; byte_6BD0EC
1E730C:  LDRB.W          R3, [R2],#1
1E7310:  ADD.W           R1, R1, R1,LSL#5
1E7314:  SUBS            R0, #1
1E7316:  ADD             R1, R3
1E7318:  BNE             loc_1E730C
1E731A:  ADD.W           R0, R1, R1,LSR#5
1E731E:  POP             {R4,R6,R7,PC}
1E7320:  MOVS            R1, #0
1E7322:  ADD.W           R0, R1, R1,LSR#5
1E7326:  POP             {R4,R6,R7,PC}
