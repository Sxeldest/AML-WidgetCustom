; =========================================================
; Game Engine Function: celt_rcp
; Address            : 0x19EB34 - 0x19EBD0
; =========================================================

19EB34:  PUSH            {R4,R5,R7,LR}
19EB36:  ADD             R7, SP, #8
19EB38:  CLZ.W           R2, R0
19EB3C:  MOVW            LR, #0
19EB40:  RSB.W           R1, R2, #0x1F
19EB44:  RSB.W           R12, R2, #0x10
19EB48:  RSB.W           R3, R1, #0xF
19EB4C:  CMP             R1, #0xF
19EB4E:  MOVT            LR, #0x7878
19EB52:  SUB.W           R4, LR, #0x78787878
19EB56:  LSL.W           R3, R0, R3
19EB5A:  RSB.W           R2, R2, #0xF
19EB5E:  IT GT
19EB60:  ASRGT.W         R3, R0, R12
19EB64:  MOV.W           R12, #0x80000000
19EB68:  EOR.W           R3, R12, R3,LSL#16
19EB6C:  CMP             R1, #0x10
19EB6E:  MOV.W           R0, R3,ASR#16
19EB72:  MLA.W           R0, R0, R4, LR
19EB76:  MOV             LR, #0xFFFF0000
19EB7E:  SMULTT.W        R4, R0, R3
19EB82:  MOV             R5, R0
19EB84:  BFC.W           R5, #0, #0x10
19EB88:  EOR.W           R5, R5, #0x80000000
19EB8C:  AND.W           R4, LR, R4,LSL#1
19EB90:  ADD             R4, R5
19EB92:  SMULTT.W        R4, R4, R0
19EB96:  MOV.W           R0, R0,ASR#16
19EB9A:  SUB.W           R0, R0, R4,LSR#15
19EB9E:  SMULBT.W        R3, R0, R3
19EBA2:  EOR.W           R5, R12, R0,LSL#16
19EBA6:  AND.W           R3, LR, R3,LSL#1
19EBAA:  ADD             R3, R5
19EBAC:  SMULTB.W        R3, R3, R0
19EBB0:  SXTH            R0, R0
19EBB2:  AND.W           R3, LR, R3,LSL#1
19EBB6:  ADD.W           R3, R3, #0x10000
19EBBA:  SUB.W           R0, R0, R3,LSR#16
19EBBE:  SXTH            R3, R0
19EBC0:  RSB.W           R0, R1, #0x10
19EBC4:  LSL.W           R0, R3, R0
19EBC8:  IT GT
19EBCA:  ASRGT.W         R0, R3, R2
19EBCE:  POP             {R4,R5,R7,PC}
