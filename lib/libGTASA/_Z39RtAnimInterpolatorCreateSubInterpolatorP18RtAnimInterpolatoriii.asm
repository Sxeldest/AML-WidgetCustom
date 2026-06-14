; =========================================================
; Game Engine Function: _Z39RtAnimInterpolatorCreateSubInterpolatorP18RtAnimInterpolatoriii
; Address            : 0x1EB980 - 0x1EB9E8
; =========================================================

1EB980:  PUSH            {R4-R7,LR}
1EB982:  ADD             R7, SP, #0xC
1EB984:  PUSH.W          {R8}
1EB988:  MOV             R5, R3
1EB98A:  MOV             R6, R0
1EB98C:  ADDS            R0, R5, #1
1EB98E:  MOV             R4, R2
1EB990:  LDR             R0, =(RwEngineInstance_ptr - 0x1EB99C)
1EB992:  IT EQ
1EB994:  LDREQ           R5, [R6,#0x20]
1EB996:  MOV             R8, R1
1EB998:  ADD             R0, PC; RwEngineInstance_ptr
1EB99A:  MUL.W           R1, R5, R4
1EB99E:  LDR             R0, [R0]; RwEngineInstance
1EB9A0:  LDR             R0, [R0]
1EB9A2:  LDR.W           R2, [R0,#0x12C]
1EB9A6:  ADD.W           R0, R1, #0x4C ; 'L'
1EB9AA:  BLX             R2
1EB9AC:  MOVS            R1, #0
1EB9AE:  VMOV.I32        Q8, #0
1EB9B2:  MOVT            R1, #0xBF80
1EB9B6:  MOVS            R2, #0
1EB9B8:  STRD.W          R8, R6, [R0,#0x34]
1EB9BC:  MOV.W           R3, #0xFFFFFFFF
1EB9C0:  STRD.W          R1, R2, [R0,#0x14]
1EB9C4:  ADD.W           R1, R0, #0x3C ; '<'
1EB9C8:  MOVS            R6, #1
1EB9CA:  STRD.W          R2, R5, [R0,#0x1C]
1EB9CE:  STRD.W          R5, R3, [R0,#0x24]
1EB9D2:  STRD.W          R4, R6, [R0,#0x2C]
1EB9D6:  VST1.32         {D16-D17}, [R1]
1EB9DA:  MOV             R1, R0
1EB9DC:  VST1.32         {D16-D17}, [R1]!
1EB9E0:  STR             R2, [R1]
1EB9E2:  POP.W           {R8}
1EB9E6:  POP             {R4-R7,PC}
