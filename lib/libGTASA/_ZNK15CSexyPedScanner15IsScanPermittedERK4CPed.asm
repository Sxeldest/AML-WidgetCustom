; =========================================================
; Game Engine Function: _ZNK15CSexyPedScanner15IsScanPermittedERK4CPed
; Address            : 0x4BCE40 - 0x4BCE5C
; =========================================================

4BCE40:  LDRB.W          R0, [R1,#0x448]
4BCE44:  CMP             R0, #2
4BCE46:  ITT EQ
4BCE48:  MOVEQ           R0, #1
4BCE4A:  BXEQ            LR
4BCE4C:  LDRB.W          R0, [R1,#0x485]
4BCE50:  LSLS            R0, R0, #0x1F
4BCE52:  MOV.W           R0, #0
4BCE56:  IT EQ
4BCE58:  MOVEQ           R0, #1
4BCE5A:  BX              LR
