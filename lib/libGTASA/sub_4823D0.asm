; =========================================================
; Game Engine Function: sub_4823D0
; Address            : 0x4823D0 - 0x4823EC
; =========================================================

4823D0:  LDR             R1, =(dword_9ECCC0 - 0x4823D6)
4823D2:  ADD             R1, PC; dword_9ECCC0
4823D4:  LDR             R1, [R1]
4823D6:  ADDS            R0, R0, R1
4823D8:  ITT EQ
4823DA:  MOVEQ           R0, #0
4823DC:  BXEQ            LR
4823DE:  LDR             R1, =(RwEngineInstance_ptr - 0x4823E4)
4823E0:  ADD             R1, PC; RwEngineInstance_ptr
4823E2:  LDR             R1, [R1]; RwEngineInstance
4823E4:  LDR             R1, [R1]
4823E6:  LDR.W           R1, [R1,#0x118]
4823EA:  BX              R1
