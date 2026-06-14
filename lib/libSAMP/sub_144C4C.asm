; =========================================================
; Game Engine Function: sub_144C4C
; Address            : 0x144C4C - 0x144C86
; =========================================================

144C4C:  PUSH            {R4,R5,R7,LR}
144C4E:  ADD             R7, SP, #8
144C50:  LDR             R1, =(dword_3142F8 - 0x144C5C)
144C52:  MOVS            R5, #0
144C54:  LDR             R0, =(sub_141934+1 - 0x144C5E)
144C56:  LDR             R4, =(off_22A540 - 0x144C62)
144C58:  ADD             R1, PC; dword_3142F8 ; obj
144C5A:  ADD             R0, PC; sub_141934 ; lpfunc
144C5C:  MOV             R2, R1
144C5E:  ADD             R4, PC; off_22A540
144C60:  STR.W           R5, [R2,#(dword_3142FC - 0x3142F8)]!
144C64:  STR             R2, [R1]
144C66:  MOV             R2, R4; lpdso_handle
144C68:  STR             R5, [R1,#(dword_314300 - 0x3142F8)]
144C6A:  BLX             __cxa_atexit
144C6E:  LDR             R1, =(dword_314304 - 0x144C78)
144C70:  MOV             R2, R4
144C72:  LDR             R0, =(sub_141944+1 - 0x144C7A)
144C74:  ADD             R1, PC; dword_314304
144C76:  ADD             R0, PC; sub_141944
144C78:  STRD.W          R5, R5, [R1]
144C7C:  STR             R5, [R1,#(dword_31430C - 0x314304)]
144C7E:  POP.W           {R4,R5,R7,LR}
144C82:  B.W             sub_224250
