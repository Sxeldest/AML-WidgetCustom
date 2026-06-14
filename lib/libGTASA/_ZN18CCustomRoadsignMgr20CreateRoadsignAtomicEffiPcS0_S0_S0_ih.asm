; =========================================================
; Game Engine Function: _ZN18CCustomRoadsignMgr20CreateRoadsignAtomicEffiPcS0_S0_S0_ih
; Address            : 0x5A6054 - 0x5A60D0
; =========================================================

5A6054:  PUSH            {R4-R7,LR}
5A6056:  ADD             R7, SP, #0xC
5A6058:  PUSH.W          {R8,R9,R11}
5A605C:  SUB             SP, SP, #0x30
5A605E:  LDR.W           R12, =(__stack_chk_guard_ptr - 0x5A606A)
5A6062:  LDR.W           LR, =(unk_61F850 - 0x5A6070)
5A6066:  ADD             R12, PC; __stack_chk_guard_ptr
5A6068:  LDR.W           R8, [R7,#arg_10]
5A606C:  ADD             LR, PC; unk_61F850
5A606E:  LDR.W           R12, [R12]; __stack_chk_guard
5A6072:  VLD1.64         {D16-D17}, [LR]
5A6076:  LDR.W           R12, [R12]
5A607A:  LDRD.W          R4, R9, [R7,#arg_8]
5A607E:  LDRD.W          R5, R6, [R7,#arg_0]
5A6082:  STR.W           R12, [SP,#0x48+var_1C]
5A6086:  ADD.W           R12, SP, #0x48+var_30
5A608A:  CMP             R4, #0
5A608C:  VST1.64         {D16-D17}, [R12]
5A6090:  IT EQ
5A6092:  MOVEQ           R4, R12
5A6094:  CMP             R6, #0
5A6096:  IT EQ
5A6098:  MOVEQ           R6, R12
5A609A:  CMP             R5, #0
5A609C:  IT EQ
5A609E:  MOVEQ           R5, R12
5A60A0:  CMP             R3, #0
5A60A2:  STRD.W          R5, R6, [SP,#0x48+var_48]; char *
5A60A6:  STRD.W          R4, R9, [SP,#0x48+var_40]; char *
5A60AA:  STR.W           R8, [SP,#0x48+var_38]; int
5A60AE:  IT EQ
5A60B0:  MOVEQ           R3, R12; int
5A60B2:  BLX.W           j__ZN18CCustomRoadsignMgr21CreateRoadsignAtomicAEffiPcS0_S0_S0_ih; CCustomRoadsignMgr::CreateRoadsignAtomicA(float,float,int,char *,char *,char *,char *,int,uchar)
5A60B6:  LDR             R1, =(__stack_chk_guard_ptr - 0x5A60BE)
5A60B8:  LDR             R2, [SP,#0x48+var_1C]
5A60BA:  ADD             R1, PC; __stack_chk_guard_ptr
5A60BC:  LDR             R1, [R1]; __stack_chk_guard
5A60BE:  LDR             R1, [R1]
5A60C0:  SUBS            R1, R1, R2
5A60C2:  ITTT EQ
5A60C4:  ADDEQ           SP, SP, #0x30 ; '0'
5A60C6:  POPEQ.W         {R8,R9,R11}
5A60CA:  POPEQ           {R4-R7,PC}
5A60CC:  BLX.W           __stack_chk_fail
