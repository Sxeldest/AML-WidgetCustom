; =========================================================
; Game Engine Function: _ZN11CFileLoader13LoadStuntJumpEPKc
; Address            : 0x46B758 - 0x46B800
; =========================================================

46B758:  PUSH            {R4-R7,LR}
46B75A:  ADD             R7, SP, #0xC
46B75C:  PUSH.W          {R11}
46B760:  SUB             SP, SP, #0xB8
46B762:  ADD             R2, SP, #0xC8+var_4C
46B764:  ADD             R4, SP, #0xC8+var_48
46B766:  ADD.W           LR, SP, #0xC8+var_1C
46B76A:  ADD             R3, SP, #0xC8+var_18
46B76C:  STRD.W          R4, R2, [SP,#0xC8+var_A8]
46B770:  ADD             R1, SP, #0xC8+var_14
46B772:  ADD             R2, SP, #0xC8+var_A0
46B774:  ADD             R5, SP, #0xC8+var_2C
46B776:  STM.W           R2, {R1,R3,LR}
46B77A:  ADD             R3, SP, #0xC8+var_3C
46B77C:  ADD             R1, SP, #0xC8+var_34
46B77E:  ADD.W           R12, SP, #0xC8+var_50
46B782:  ADD             R2, SP, #0xC8+var_30
46B784:  STR.W           R12, [SP,#0xC8+var_94]
46B788:  ADD             R6, SP, #0xC8+var_28
46B78A:  STRD.W          R6, R5, [SP,#0xC8+var_C8]
46B78E:  ADD.W           R12, SP, #0xC8+var_44
46B792:  STRD.W          R2, R1, [SP,#0xC8+var_C0]
46B796:  ADD             R4, SP, #0xC8+var_38
46B798:  STRD.W          R4, R3, [SP,#0xC8+var_B8]
46B79C:  ADR             R1, aFFFFFFFFFFFFFF; "%f %f %f %f %f %f %f %f %f %f %f %f %f "...
46B79E:  ADD             R2, SP, #0xC8+var_20
46B7A0:  ADD             R3, SP, #0xC8+var_24
46B7A2:  ADD.W           LR, SP, #0xC8+var_40
46B7A6:  STRD.W          LR, R12, [SP,#0xC8+var_B0]
46B7AA:  BLX             sscanf
46B7AE:  CMP             R0, #0x10
46B7B0:  BNE             loc_46B7F8
46B7B2:  LDRD.W          R2, R1, [SP,#0xC8+var_34]
46B7B6:  LDRD.W          R3, R6, [SP,#0xC8+var_2C]
46B7BA:  LDRD.W          R0, R5, [SP,#0xC8+var_24]
46B7BE:  STRD.W          R5, R0, [SP,#0xC8+var_68]
46B7C2:  STRD.W          R6, R3, [SP,#0xC8+var_60]
46B7C6:  STRD.W          R1, R2, [SP,#0xC8+var_58]
46B7CA:  LDRD.W          R2, R1, [SP,#0xC8+var_4C]
46B7CE:  LDRD.W          R3, R6, [SP,#0xC8+var_44]
46B7D2:  LDRD.W          R0, R5, [SP,#0xC8+var_3C]
46B7D6:  STRD.W          R5, R0, [SP,#0xC8+var_80]
46B7DA:  STRD.W          R6, R3, [SP,#0xC8+var_78]
46B7DE:  STRD.W          R1, R2, [SP,#0xC8+var_70]
46B7E2:  ADD             R2, SP, #0xC8+var_1C
46B7E4:  LDM             R2, {R0-R2}
46B7E6:  LDR             R3, [SP,#0xC8+var_50]
46B7E8:  STR             R2, [SP,#0xC8+var_8C]
46B7EA:  ADD             R2, SP, #0xC8+var_8C
46B7EC:  STRD.W          R1, R0, [SP,#0xC8+var_88]
46B7F0:  ADD             R0, SP, #0xC8+var_68
46B7F2:  ADD             R1, SP, #0xC8+var_80
46B7F4:  BLX             j__ZN17CStuntJumpManager6AddOneERK9CBoundBoxS2_RK7CVectori; CStuntJumpManager::AddOne(CBoundBox const&,CBoundBox const&,CVector const&,int)
46B7F8:  ADD             SP, SP, #0xB8
46B7FA:  POP.W           {R11}
46B7FE:  POP             {R4-R7,PC}
