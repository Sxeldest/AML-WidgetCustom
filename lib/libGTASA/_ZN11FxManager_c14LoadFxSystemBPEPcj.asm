; =========================================================
; Game Engine Function: _ZN11FxManager_c14LoadFxSystemBPEPcj
; Address            : 0x46DA80 - 0x46DAE8
; =========================================================

46DA80:  PUSH            {R4-R7,LR}
46DA82:  ADD             R7, SP, #0xC
46DA84:  PUSH.W          {R11}
46DA88:  SUB             SP, SP, #0x108
46DA8A:  MOV             R4, R0
46DA8C:  LDR             R0, =(__stack_chk_guard_ptr - 0x46DA96)
46DA8E:  ADD             R6, SP, #0x118+var_114
46DA90:  MOV             R5, R2
46DA92:  ADD             R0, PC; __stack_chk_guard_ptr
46DA94:  MOV.W           R2, #0x100; int
46DA98:  MOV             R1, R6; char *
46DA9A:  LDR             R0, [R0]; __stack_chk_guard
46DA9C:  LDR             R0, [R0]
46DA9E:  STR             R0, [SP,#0x118+var_14]
46DAA0:  MOV             R0, R5; unsigned int
46DAA2:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DAA6:  ADR             R1, dword_46DAEC; format
46DAA8:  MOV             R2, SP
46DAAA:  MOV             R0, R6; s
46DAAC:  BLX             sscanf
46DAB0:  MOVS            R0, #dword_24; this
46DAB2:  BLX             j__ZN12FxSystemBP_cnwEj; FxSystemBP_c::operator new(uint)
46DAB6:  MOV             R6, R0
46DAB8:  BLX             j__ZN12FxSystemBP_cC2Ev; FxSystemBP_c::FxSystemBP_c(void)
46DABC:  LDR             R3, [SP,#0x118+var_118]; int
46DABE:  MOV             R2, R5; unsigned int
46DAC0:  BLX             j__ZN12FxSystemBP_c4LoadEPcji; FxSystemBP_c::Load(char *,uint,int)
46DAC4:  MOV             R0, R4; this
46DAC6:  MOV             R1, R6; ListItem_c *
46DAC8:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
46DACC:  LDR             R0, =(__stack_chk_guard_ptr - 0x46DAD4)
46DACE:  LDR             R1, [SP,#0x118+var_14]
46DAD0:  ADD             R0, PC; __stack_chk_guard_ptr
46DAD2:  LDR             R0, [R0]; __stack_chk_guard
46DAD4:  LDR             R0, [R0]
46DAD6:  SUBS            R0, R0, R1
46DAD8:  ITTTT EQ
46DADA:  MOVEQ           R0, R6
46DADC:  ADDEQ           SP, SP, #0x108
46DADE:  POPEQ.W         {R11}
46DAE2:  POPEQ           {R4-R7,PC}
46DAE4:  BLX             __stack_chk_fail
