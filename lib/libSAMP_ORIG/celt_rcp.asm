; =========================================================
; Game Engine Function: celt_rcp
; Address            : 0xC0D74 - 0xC0E10
; =========================================================

C0D74:  PUSH            {R4,R5,R7,LR}
C0D76:  ADD             R7, SP, #8
C0D78:  CLZ.W           R2, R0
C0D7C:  MOVW            LR, #0
C0D80:  RSB.W           R1, R2, #0x1F
C0D84:  RSB.W           R12, R2, #0x10
C0D88:  RSB.W           R3, R1, #0xF
C0D8C:  CMP             R1, #0xF
C0D8E:  MOVT            LR, #0x7878
C0D92:  SUB.W           R4, LR, #0x78787878
C0D96:  LSL.W           R3, R0, R3
C0D9A:  RSB.W           R2, R2, #0xF
C0D9E:  IT GT
C0DA0:  ASRGT.W         R3, R0, R12
C0DA4:  MOV.W           R12, #0x80000000
C0DA8:  EOR.W           R3, R12, R3,LSL#16
C0DAC:  CMP             R1, #0x10
C0DAE:  MOV.W           R0, R3,ASR#16
C0DB2:  MLA.W           R0, R0, R4, LR
C0DB6:  MOV             LR, #0xFFFF0000
C0DBE:  SMULTT.W        R4, R0, R3
C0DC2:  MOV             R5, R0
C0DC4:  BFC.W           R5, #0, #0x10
C0DC8:  EOR.W           R5, R5, #0x80000000
C0DCC:  AND.W           R4, LR, R4,LSL#1
C0DD0:  ADD             R4, R5
C0DD2:  SMULTT.W        R4, R4, R0
C0DD6:  MOV.W           R0, R0,ASR#16
C0DDA:  SUB.W           R0, R0, R4,LSR#15
C0DDE:  SMULBT.W        R3, R0, R3
C0DE2:  EOR.W           R5, R12, R0,LSL#16
C0DE6:  AND.W           R3, LR, R3,LSL#1
C0DEA:  ADD             R3, R5
C0DEC:  SMULTB.W        R3, R3, R0
C0DF0:  SXTH            R0, R0
C0DF2:  AND.W           R3, LR, R3,LSL#1
C0DF6:  ADD.W           R3, R3, #0x10000
C0DFA:  SUB.W           R0, R0, R3,LSR#16
C0DFE:  SXTH            R3, R0
C0E00:  RSB.W           R0, R1, #0x10
C0E04:  LSL.W           R0, R3, R0
C0E08:  IT GT
C0E0A:  ASRGT.W         R0, R3, R2
C0E0E:  POP             {R4,R5,R7,PC}
