; =========================================================
; Game Engine Function: _Z14jpeg_std_errorP14jpeg_error_mgr
; Address            : 0x48067C - 0x4806C4
; =========================================================

48067C:  PUSH            {R4-R7,LR}
48067E:  ADD             R7, SP, #0xC
480680:  PUSH.W          {R11}
480684:  LDR.W           R12, =(sub_4806F6+1 - 0x480694)
480688:  MOVS            R5, #1
48068A:  LDR             R1, =(sub_480778+1 - 0x480698)
48068C:  MOVS            R6, #0
48068E:  LDR             R2, =(sub_4806DC+1 - 0x48069C)
480690:  ADD             R12, PC; sub_4806F6
480692:  LDR             R3, =(sub_480728+1 - 0x4806A2)
480694:  ADD             R1, PC; sub_480778
480696:  LDR             R4, =(off_6685D8 - 0x4806A8); "No errors" ...
480698:  ADD             R2, PC; sub_4806DC
48069A:  LDR.W           LR, =(sub_480826+1 - 0x4806B2)
48069E:  ADD             R3, PC; sub_480728
4806A0:  STRD.W          R2, R12, [R0]
4806A4:  ADD             R4, PC; off_6685D8
4806A6:  STRD.W          R3, R1, [R0,#8]
4806AA:  ADD.W           R1, R0, #0x70 ; 'p'
4806AE:  ADD             LR, PC; sub_480826
4806B0:  STRD.W          LR, R6, [R0,#0x10]
4806B4:  STRD.W          R6, R6, [R0,#0x68]
4806B8:  STM             R1!, {R4-R6}
4806BA:  STRD.W          R6, R6, [R0,#0x7C]
4806BE:  POP.W           {R11}
4806C2:  POP             {R4-R7,PC}
