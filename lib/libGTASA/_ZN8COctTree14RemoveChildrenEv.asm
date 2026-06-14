; =========================================================
; Game Engine Function: _ZN8COctTree14RemoveChildrenEv
; Address            : 0x45C1C0 - 0x45C246
; =========================================================

45C1C0:  PUSH            {R4-R7,LR}
45C1C2:  ADD             R7, SP, #0xC
45C1C4:  PUSH.W          {R8-R11}
45C1C8:  SUB             SP, SP, #4
45C1CA:  LDR.W           R8, =(dword_9ABF40 - 0x45C1E2)
45C1CE:  MOVW            R11, #0xCCCD
45C1D2:  LDR.W           R9, =(dword_9ABF40 - 0x45C1E4)
45C1D6:  ADD.W           R4, R0, #0xA
45C1DA:  LDR.W           R10, =(dword_9ABF40 - 0x45C1E8)
45C1DE:  ADD             R8, PC; dword_9ABF40
45C1E0:  ADD             R9, PC; dword_9ABF40
45C1E2:  MOVS            R5, #0
45C1E4:  ADD             R10, PC; dword_9ABF40
45C1E6:  MOV.W           R6, #0xFFFFFFFF
45C1EA:  MOVT            R11, #0xCCCC
45C1EE:  LDRSH.W         R0, [R4,R5,LSL#1]
45C1F2:  CMP             R0, R6
45C1F4:  BLE             loc_45C238
45C1F6:  LDR.W           R1, [R8,#(dword_9ABF44 - 0x9ABF40)]
45C1FA:  LDRSB           R1, [R1,R0]
45C1FC:  CMP             R1, #0
45C1FE:  BLT             loc_45C234
45C200:  LDR.W           R1, [R9]
45C204:  ADD.W           R0, R0, R0,LSL#2
45C208:  ADD.W           R0, R1, R0,LSL#3; this
45C20C:  CBZ             R0, loc_45C234
45C20E:  BLX             j__ZN8COctTreeD2Ev; COctTree::~COctTree()
45C212:  LDRD.W          R1, R2, [R10]
45C216:  SUBS            R0, R0, R1
45C218:  ASRS            R0, R0, #3
45C21A:  MUL.W           R0, R0, R11
45C21E:  LDRB            R1, [R2,R0]
45C220:  ORR.W           R1, R1, #0x80
45C224:  STRB            R1, [R2,R0]
45C226:  LDR.W           R1, [R10,#(dword_9ABF4C - 0x9ABF40)]
45C22A:  CMP             R0, R1
45C22C:  BGE             loc_45C234
45C22E:  LDR             R1, =(dword_9ABF40 - 0x45C234)
45C230:  ADD             R1, PC; dword_9ABF40
45C232:  STR             R0, [R1,#(dword_9ABF4C - 0x9ABF40)]
45C234:  STRH.W          R6, [R4,R5,LSL#1]
45C238:  ADDS            R5, #1
45C23A:  CMP             R5, #8
45C23C:  BNE             loc_45C1EE
45C23E:  ADD             SP, SP, #4
45C240:  POP.W           {R8-R11}
45C244:  POP             {R4-R7,PC}
