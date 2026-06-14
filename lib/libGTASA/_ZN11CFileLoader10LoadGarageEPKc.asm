; =========================================================
; Game Engine Function: _ZN11CFileLoader10LoadGarageEPKc
; Address            : 0x46B478 - 0x46B51C
; =========================================================

46B478:  PUSH            {R4-R7,LR}
46B47A:  ADD             R7, SP, #0xC
46B47C:  PUSH.W          {R8}
46B480:  SUB             SP, SP, #0x58
46B482:  LDR             R1, =(__stack_chk_guard_ptr - 0x46B48E)
46B484:  ADD             R3, SP, #0x68+var_3C
46B486:  ADD             R5, SP, #0x68+var_34
46B488:  ADD             R2, SP, #0x68+var_28
46B48A:  ADD             R1, PC; __stack_chk_guard_ptr
46B48C:  ADD.W           R8, SP, #0x68+var_1C
46B490:  ADD.W           R12, SP, #0x68+var_44
46B494:  ADD             R4, SP, #0x68+var_38
46B496:  LDR             R1, [R1]; __stack_chk_guard
46B498:  ADD             R6, SP, #0x68+var_30
46B49A:  ADD.W           LR, SP, #0x68+var_40
46B49E:  LDR             R1, [R1]
46B4A0:  STR             R1, [SP,#0x68+var_14]
46B4A2:  ADD             R1, SP, #0x68+var_2C
46B4A4:  STR.W           R8, [SP,#0x68+var_48]; unsigned int
46B4A8:  STRD.W          R2, R1, [SP,#0x68+var_68]; float
46B4AC:  ADR             R1, aFFFFFFFFDDS; "%f %f %f %f %f %f %f %f %d %d %s"
46B4AE:  STRD.W          R6, R5, [SP,#0x68+var_60]; float
46B4B2:  ADD             R2, SP, #0x68+var_20
46B4B4:  STRD.W          R4, R3, [SP,#0x68+var_58]
46B4B8:  ADD             R3, SP, #0x68+var_24
46B4BA:  STRD.W          LR, R12, [SP,#0x68+var_50]
46B4BE:  BLX             sscanf
46B4C2:  CMP             R0, #0xB
46B4C4:  BNE             loc_46B502
46B4C6:  LDRD.W          R3, R2, [SP,#0x68+var_2C]; float
46B4CA:  MOVS            R4, #0
46B4CC:  LDRD.W          R1, R0, [SP,#0x68+var_24]; float
46B4D0:  LDR             R5, [SP,#0x68+var_40]
46B4D2:  VLDR            S0, [SP,#0x68+var_30]
46B4D6:  VLDR            S2, [SP,#0x68+var_34]
46B4DA:  VLDR            S4, [SP,#0x68+var_38]
46B4DE:  VLDR            S6, [SP,#0x68+var_3C]
46B4E2:  LDRB.W          R6, [SP,#0x68+var_44]
46B4E6:  STRD.W          R6, R4, [SP,#0x68+var_58]; float
46B4EA:  STRD.W          R8, R5, [SP,#0x68+var_50]; char *
46B4EE:  VSTR            S0, [SP,#0x68+var_68]
46B4F2:  VSTR            S2, [SP,#0x68+var_64]
46B4F6:  VSTR            S4, [SP,#0x68+var_60]
46B4FA:  VSTR            S6, [SP,#0x68+var_5C]
46B4FE:  BLX             j__ZN8CGarages6AddOneEffffffffhjPcj; CGarages::AddOne(float,float,float,float,float,float,float,float,uchar,uint,char *,uint)
46B502:  LDR             R0, =(__stack_chk_guard_ptr - 0x46B50A)
46B504:  LDR             R1, [SP,#0x68+var_14]
46B506:  ADD             R0, PC; __stack_chk_guard_ptr
46B508:  LDR             R0, [R0]; __stack_chk_guard
46B50A:  LDR             R0, [R0]
46B50C:  SUBS            R0, R0, R1
46B50E:  ITTT EQ
46B510:  ADDEQ           SP, SP, #0x58 ; 'X'
46B512:  POPEQ.W         {R8}
46B516:  POPEQ           {R4-R7,PC}
46B518:  BLX             __stack_chk_fail
