; =========================================================
; Game Engine Function: _ZN8COctTree8InitPoolEPvi
; Address            : 0x45C0D4 - 0x45C154
; =========================================================

45C0D4:  PUSH            {R4,R6,R7,LR}
45C0D6:  ADD             R7, SP, #8
45C0D8:  MOVW            R2, #0xC7D
45C0DC:  LDR             R4, =(dword_9ABF40 - 0x45C0EE)
45C0DE:  MOVT            R2, #0xC7CE
45C0E2:  MOV.W           LR, #0xFFFFFFFF
45C0E6:  UMULL.W         R2, R12, R1, R2
45C0EA:  ADD             R4, PC; dword_9ABF40
45C0EC:  MOVS            R2, #0
45C0EE:  STRB            R2, [R4,#(byte_9ABF50 - 0x9ABF40)]
45C0F0:  CMP             R1, #0x29 ; ')'
45C0F2:  MOV.W           R2, R12,LSR#5
45C0F6:  ADD.W           R3, R2, R2,LSL#2
45C0FA:  ADD.W           R12, R0, R3,LSL#3
45C0FE:  STRD.W          R0, R12, [R4]
45C102:  STRD.W          R2, LR, [R4,#(dword_9ABF48 - 0x9ABF40)]
45C106:  BCC             loc_45C14A
45C108:  LDR             R0, =(dword_9ABF40 - 0x45C112)
45C10A:  LDRB.W          R3, [R12]
45C10E:  ADD             R0, PC; dword_9ABF40
45C110:  ORR.W           R3, R3, #0x80
45C114:  STRB.W          R3, [R12]
45C118:  LDR             R0, [R0,#(dword_9ABF44 - 0x9ABF40)]
45C11A:  LDRB            R3, [R0]
45C11C:  AND.W           R3, R3, #0x80
45C120:  STRB            R3, [R0]
45C122:  SUB.W           R0, R1, #0x29 ; ')'
45C126:  CMP             R0, #0x29 ; ')'
45C128:  BCC             loc_45C14A
45C12A:  LDR             R1, =(dword_9ABF40 - 0x45C132)
45C12C:  MOVS            R0, #1
45C12E:  ADD             R1, PC; dword_9ABF40
45C130:  LDR             R3, [R1,#(dword_9ABF44 - 0x9ABF40)]
45C132:  LDRB            R4, [R3,R0]
45C134:  ORR.W           R4, R4, #0x80
45C138:  STRB            R4, [R3,R0]
45C13A:  LDR             R3, [R1,#(dword_9ABF44 - 0x9ABF40)]
45C13C:  LDRB            R4, [R3,R0]
45C13E:  AND.W           R4, R4, #0x80
45C142:  STRB            R4, [R3,R0]
45C144:  ADDS            R0, #1
45C146:  CMP             R2, R0
45C148:  BNE             loc_45C130
45C14A:  LDR             R0, =(dword_9ABF40 - 0x45C152)
45C14C:  MOVS            R1, #1
45C14E:  ADD             R0, PC; dword_9ABF40
45C150:  STRB            R1, [R0,#(byte_9ABF51 - 0x9ABF40)]
45C152:  POP             {R4,R6,R7,PC}
