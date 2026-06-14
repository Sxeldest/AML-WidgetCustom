; =========================================================
; Game Engine Function: _ZN9CPathFind22These2NodesAreAdjacentE12CNodeAddressS0_
; Address            : 0x317C7C - 0x317CEE
; =========================================================

317C7C:  PUSH            {R4,R5,R7,LR}
317C7E:  ADD             R7, SP, #8
317C80:  LDR             R0, =(ThePaths_ptr - 0x317C8A)
317C82:  UXTH            R5, R1
317C84:  LSRS            R4, R1, #0x10
317C86:  ADD             R0, PC; ThePaths_ptr
317C88:  LDR             R3, [R0]; ThePaths
317C8A:  LSLS            R0, R4, #3
317C8C:  SUB.W           R0, R0, R1,LSR#16
317C90:  ADD.W           R3, R3, R5,LSL#2
317C94:  LDR.W           R3, [R3,#0x804]
317C98:  ADD.W           R0, R3, R0,LSL#2
317C9C:  LDRH            R0, [R0,#0x18]
317C9E:  ANDS.W          LR, R0, #0xF
317CA2:  BEQ             loc_317CE6
317CA4:  LDR             R0, =(ThePaths_ptr - 0x317CB4)
317CA6:  RSB.W           R1, R4, R4,LSL#3
317CAA:  MOV.W           R12, R2,LSR#16
317CAE:  UXTH            R2, R2
317CB0:  ADD             R0, PC; ThePaths_ptr
317CB2:  ADD.W           R1, R3, R1,LSL#2
317CB6:  BIC.W           R3, LR, #0xFF000000
317CBA:  LDR             R0, [R0]; ThePaths
317CBC:  LDRSH.W         R1, [R1,#0x10]
317CC0:  ADD.W           R0, R0, R5,LSL#2
317CC4:  LDR.W           R0, [R0,#0xA44]
317CC8:  ADD.W           R1, R0, R1,LSL#2
317CCC:  MOVS            R0, #0
317CCE:  LDRH.W          R5, [R1,R0,LSL#2]
317CD2:  CMP             R5, R2
317CD4:  BNE             loc_317CE0
317CD6:  ADD.W           R5, R1, R0,LSL#2
317CDA:  LDRH            R5, [R5,#2]
317CDC:  CMP             R5, R12
317CDE:  BEQ             loc_317CEA
317CE0:  ADDS            R0, #1
317CE2:  CMP             R0, R3
317CE4:  BLT             loc_317CCE
317CE6:  MOVS            R0, #0
317CE8:  POP             {R4,R5,R7,PC}
317CEA:  MOVS            R0, #1
317CEC:  POP             {R4,R5,R7,PC}
