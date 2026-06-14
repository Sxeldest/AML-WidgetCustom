; =========================================================
; Game Engine Function: _ZN18CTaskComplexWander15UpdatePathNodesEPK4CPedhR12CNodeAddressS4_Rh
; Address            : 0x521918 - 0x521964
; =========================================================

521918:  PUSH            {R4-R7,LR}
52191A:  ADD             R7, SP, #0xC
52191C:  PUSH.W          {R8}
521920:  SUB             SP, SP, #0x18
521922:  LDR             R4, [R7,#arg_0]
521924:  LDR             R5, =(ThePaths_ptr - 0x521930)
521926:  LDR.W           R8, [R7,#arg_4]
52192A:  LDR             R0, [R4]
52192C:  ADD             R5, PC; ThePaths_ptr
52192E:  STR             R0, [R3]
521930:  MOVW            R0, #0xFFFF
521934:  STRH            R0, [R4]
521936:  LDR             R0, [R1,#0x14]
521938:  ADD.W           R6, R0, #0x30 ; '0'
52193C:  CMP             R0, #0
52193E:  IT EQ
521940:  ADDEQ           R6, R1, #4
521942:  LDR             R0, [R5]; ThePaths
521944:  LDRD.W          R12, LR, [R6]
521948:  LDR             R1, [R6,#8]
52194A:  STMEA.W         SP, {R1,R3,R4}
52194E:  MOVS            R1, #1
521950:  MOV             R3, LR
521952:  STRD.W          R2, R8, [SP,#0x28+var_1C]
521956:  MOV             R2, R12
521958:  BLX             j__ZN9CPathFind21FindNextNodeWanderingEh7CVectorP12CNodeAddressS2_hPh; CPathFind::FindNextNodeWandering(uchar,CVector,CNodeAddress *,CNodeAddress *,uchar,uchar *)
52195C:  ADD             SP, SP, #0x18
52195E:  POP.W           {R8}
521962:  POP             {R4-R7,PC}
