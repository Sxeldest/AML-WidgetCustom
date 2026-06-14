; =========================================================
; Game Engine Function: _Z27RwTextureGenerateMipmapNamePcS_hi
; Address            : 0x1DBA80 - 0x1DBAB2
; =========================================================

1DBA80:  PUSH            {R7,LR}
1DBA82:  MOV             R7, SP
1DBA84:  LDR.W           R12, =(RwEngineInstance_ptr - 0x1DBA90)
1DBA88:  LDR.W           LR, =(dword_6BCF84 - 0x1DBA92)
1DBA8C:  ADD             R12, PC; RwEngineInstance_ptr
1DBA8E:  ADD             LR, PC; dword_6BCF84
1DBA90:  LDR.W           R12, [R12]; RwEngineInstance
1DBA94:  LDR.W           LR, [LR]
1DBA98:  LDR.W           R12, [R12]
1DBA9C:  ADD             R12, LR
1DBA9E:  LDR.W           R12, [R12,#0x30]
1DBAA2:  CMP.W           R12, #0
1DBAA6:  ITT EQ
1DBAA8:  MOVEQ           R0, #0
1DBAAA:  POPEQ           {R7,PC}
1DBAAC:  POP.W           {R7,LR}
1DBAB0:  BX              R12
