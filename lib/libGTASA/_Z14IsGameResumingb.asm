; =========================================================
; Game Engine Function: _Z14IsGameResumingb
; Address            : 0x482B80 - 0x482BA0
; =========================================================

482B80:  MOV             R1, R0
482B82:  LDR             R0, =(DoingCheckpointLoad_ptr - 0x482B8A)
482B84:  CMP             R1, #1
482B86:  ADD             R0, PC; DoingCheckpointLoad_ptr
482B88:  LDR             R0, [R0]; DoingCheckpointLoad
482B8A:  LDRB            R0, [R0]
482B8C:  BNE             loc_482B98
482B8E:  LDR             R1, =(DoingCheckpointLoad_ptr - 0x482B96)
482B90:  MOVS            R2, #0
482B92:  ADD             R1, PC; DoingCheckpointLoad_ptr
482B94:  LDR             R1, [R1]; DoingCheckpointLoad
482B96:  STRB            R2, [R1]
482B98:  CMP             R0, #0
482B9A:  IT NE
482B9C:  MOVNE           R0, #1
482B9E:  BX              LR
