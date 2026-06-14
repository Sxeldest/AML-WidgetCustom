; =========================================================
; Game Engine Function: sub_14CB08
; Address            : 0x14CB08 - 0x14CB98
; =========================================================

14CB08:  PUSH            {R4,R5,R7,LR}
14CB0A:  ADD             R7, SP, #8
14CB0C:  SUB.W           SP, SP, #0x480
14CB10:  LDR             R1, =(off_23496C - 0x14CB16)
14CB12:  ADD             R1, PC; off_23496C
14CB14:  LDR             R1, [R1]; dword_23DEF4
14CB16:  LDR             R1, [R1]
14CB18:  LDR.W           R1, [R1,#0x3B0]
14CB1C:  LDR             R4, [R1,#0x18]
14CB1E:  CBZ             R4, loc_14CB92
14CB20:  LDRD.W          R1, R0, [R0]; src
14CB24:  MOVS            R3, #0
14CB26:  ASRS            R2, R0, #0x1F
14CB28:  ADD.W           R0, R0, R2,LSR#29
14CB2C:  MOVS            R2, #1
14CB2E:  ADD.W           R2, R2, R0,ASR#3; size
14CB32:  ADD             R0, SP, #0x488+var_164; int
14CB34:  BL              sub_17D4F2
14CB38:  SUB.W           R1, R7, #-var_A; int
14CB3C:  MOVS            R2, #0x10
14CB3E:  MOVS            R3, #1
14CB40:  BL              sub_17D786
14CB44:  ADD             R0, SP, #0x488+var_164; int
14CB46:  SUB.W           R1, R7, #-dest; dest
14CB4A:  MOVS            R2, #0x3F ; '?'
14CB4C:  BL              sub_17D744
14CB50:  ADD             R0, SP, #0x488+var_164; int
14CB52:  SUB.W           R1, R7, #-var_4E; int
14CB56:  MOVS            R2, #0x10
14CB58:  MOVS            R3, #1
14CB5A:  BL              sub_17D786
14CB5E:  LDRH.W          R2, [R7,#var_4E]
14CB62:  LSRS            R0, R2, #5
14CB64:  CMP             R0, #0x18
14CB66:  BHI             loc_14CB8C
14CB68:  ADD.W           R5, SP, #0x488+var_485
14CB6C:  ADD             R0, SP, #0x488+var_164; int
14CB6E:  MOV             R1, R5; dest
14CB70:  BL              sub_17D744
14CB74:  LDRH.W          R0, [R7,#var_4E]
14CB78:  MOVS            R2, #0
14CB7A:  LDRH.W          R1, [R7,#var_A]
14CB7E:  STRB            R2, [R5,R0]
14CB80:  SUB.W           R2, R7, #-dest
14CB84:  MOV             R0, R4
14CB86:  MOV             R3, R5
14CB88:  BL              sub_14F278
14CB8C:  ADD             R0, SP, #0x488+var_164
14CB8E:  BL              sub_17D542
14CB92:  ADD.W           SP, SP, #0x480
14CB96:  POP             {R4,R5,R7,PC}
