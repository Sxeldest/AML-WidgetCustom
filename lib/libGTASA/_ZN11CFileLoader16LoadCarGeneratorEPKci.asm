; =========================================================
; Game Engine Function: _ZN11CFileLoader16LoadCarGeneratorEPKci
; Address            : 0x46B6EC - 0x46B754
; =========================================================

46B6EC:  PUSH            {R4-R7,LR}
46B6EE:  ADD             R7, SP, #0xC
46B6F0:  PUSH.W          {R8-R10}
46B6F4:  SUB             SP, SP, #0x58
46B6F6:  ADD             R2, SP, #0x70+var_48
46B6F8:  MOV             R8, R1
46B6FA:  ADD.W           R3, R2, #0x2C ; ','
46B6FE:  LDR             R1, =(aFFFFDDDDDDDD - 0x46B718); "%f %f %f %f %d %d %d %d %d %d %d %d"
46B700:  ADD.W           R4, R2, #0x28 ; '('
46B704:  ADD.W           R5, R2, #0xC
46B708:  STRD.W          R4, R3, [SP,#0x70+var_50]
46B70C:  ADD.W           R3, R2, #0x14
46B710:  ADD.W           R6, R2, #8
46B714:  ADD             R1, PC; "%f %f %f %f %d %d %d %d %d %d %d %d"
46B716:  ADD.W           R12, R2, #0x24 ; '$'
46B71A:  ADD.W           R9, R2, #0x1C
46B71E:  ADD.W           R4, R2, #0x10
46B722:  STRD.W          R6, R5, [SP,#0x70+var_70]
46B726:  STRD.W          R4, R3, [SP,#0x70+var_68]
46B72A:  ADDS            R3, R2, #4
46B72C:  ADD.W           R10, R2, #0x18
46B730:  ADD.W           LR, R2, #0x20 ; ' '
46B734:  STRD.W          R10, R9, [SP,#0x70+var_60]
46B738:  STRD.W          LR, R12, [SP,#0x70+var_58]
46B73C:  BLX             sscanf
46B740:  CMP             R0, #0xC
46B742:  BNE             loc_46B74C
46B744:  ADD             R0, SP, #0x70+var_48
46B746:  MOV             R1, R8
46B748:  BLX             j__ZN11CFileLoader16LoadCarGeneratorEP17CFileCarGeneratori; CFileLoader::LoadCarGenerator(CFileCarGenerator *,int)
46B74C:  ADD             SP, SP, #0x58 ; 'X'
46B74E:  POP.W           {R8-R10}
46B752:  POP             {R4-R7,PC}
