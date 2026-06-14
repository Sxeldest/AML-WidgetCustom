; =========================================================
; Game Engine Function: sub_6014C
; Address            : 0x6014C - 0x60188
; =========================================================

6014C:  PUSH            {R7,LR}
6014E:  MOV             R7, SP
60150:  LDR             R0, =(byte_1174AE - 0x60156)
60152:  ADD             R0, PC; byte_1174AE
60154:  LDRB            R0, [R0]
60156:  CMP             R0, #0
60158:  IT EQ
6015A:  POPEQ           {R7,PC}
6015C:  LDR             R0, =(off_114AA8 - 0x6016C)
6015E:  MOVW            R2, #0xB514
60162:  LDR             R1, =(off_114AA4 - 0x6016E)
60164:  MOVT            R2, #0x96
60168:  ADD             R0, PC; off_114AA8
6016A:  ADD             R1, PC; off_114AA4
6016C:  LDR             R0, [R0]; dword_1A4404
6016E:  LDR             R1, [R1]; off_1ABEE4
60170:  LDR             R0, [R0]
60172:  LDRB            R0, [R0,R2]
60174:  LDR             R2, [R1]
60176:  MOVS            R1, #0
60178:  CMP             R0, #0
6017A:  MOV.W           R0, #5
6017E:  IT EQ
60180:  MOVWEQ          R1, #0x1388
60184:  BLX             R2
60186:  POP             {R7,PC}
