; =========================================================
; Game Engine Function: _Z21ReadVideoCardCapsFileRjS_S_S_
; Address            : 0x5D3674 - 0x5D36DC
; =========================================================

5D3674:  PUSH            {R4-R7,LR}
5D3676:  ADD             R7, SP, #0xC
5D3678:  PUSH.W          {R8,R9,R11}
5D367C:  MOV             R4, R1
5D367E:  MOV             R5, R0
5D3680:  MOV.W           R0, #0xFFFFFFFF
5D3684:  MOV             R8, R3
5D3686:  MOV             R9, R2
5D3688:  STR             R0, [R5]
5D368A:  STR             R0, [R4]
5D368C:  ADR             R1, aRb_27; "rb"
5D368E:  STR.W           R0, [R9]
5D3692:  STR.W           R0, [R8]
5D3696:  ADR             R0, aDataCapsDat; "DATA\\CAPS.DAT"
5D3698:  BLX.W           j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
5D369C:  MOV             R6, R0
5D369E:  CBZ             R6, loc_5D36D6
5D36A0:  MOV             R0, R6; this
5D36A2:  MOV             R1, R5; ptr
5D36A4:  MOVS            R2, #4; n
5D36A6:  BLX.W           j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
5D36AA:  MOV             R0, R6; this
5D36AC:  MOV             R1, R4; ptr
5D36AE:  MOVS            R2, #4; n
5D36B0:  BLX.W           j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
5D36B4:  MOV             R0, R6; this
5D36B6:  MOV             R1, R9; ptr
5D36B8:  MOVS            R2, #4; n
5D36BA:  BLX.W           j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
5D36BE:  MOV             R0, R6; this
5D36C0:  MOV             R1, R8; ptr
5D36C2:  MOVS            R2, #4; n
5D36C4:  BLX.W           j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
5D36C8:  MOV             R0, R6; this
5D36CA:  POP.W           {R8,R9,R11}
5D36CE:  POP.W           {R4-R7,LR}
5D36D2:  B.W             j_j__ZN8CFileMgr9CloseFileEj; j_CFileMgr::CloseFile(uint)
5D36D6:  POP.W           {R8,R9,R11}
5D36DA:  POP             {R4-R7,PC}
