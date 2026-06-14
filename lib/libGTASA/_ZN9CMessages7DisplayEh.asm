; =========================================================
; Game Engine Function: _ZN9CMessages7DisplayEh
; Address            : 0x54BD64 - 0x54BE06
; =========================================================

54BD64:  PUSH            {R4-R7,LR}
54BD66:  ADD             R7, SP, #0xC
54BD68:  PUSH.W          {R8-R11}
54BD6C:  SUB.W           SP, SP, #0x334
54BD70:  MOV             R8, R0
54BD72:  CMP.W           R8, #0
54BD76:  BEQ             loc_54BDC0
54BD78:  LDR             R0, =(_ZN9CMessages11BIGMessagesE_ptr - 0x54BD86)
54BD7A:  ADD.W           R10, SP, #0x350+var_33C
54BD7E:  MOVS            R6, #0
54BD80:  MOVS            R4, #0
54BD82:  ADD             R0, PC; _ZN9CMessages11BIGMessagesE_ptr
54BD84:  LDR.W           R9, [R0]; CMessages::BIGMessages ...
54BD88:  ADD.W           R5, R9, R6
54BD8C:  ADD.W           LR, R5, #0x18
54BD90:  LDR             R0, [R5,#8]; this
54BD92:  LDM.W           LR, {R1-R3,R12,LR}; int
54BD96:  LDR.W           R11, [R5,#0x2C]
54BD9A:  STRD.W          R12, LR, [SP,#0x350+var_350]; int
54BD9E:  STRD.W          R11, R10, [SP,#0x350+var_348]; int
54BDA2:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
54BDA6:  LDR             R1, [R5,#0x30]; unsigned __int16 *
54BDA8:  MOV             R0, R10; this
54BDAA:  BLX             j__ZN9CMessages20InsertStringInStringEPtS0_; CMessages::InsertStringInString(ushort *,ushort *)
54BDAE:  UXTH            R1, R4; unsigned __int16 *
54BDB0:  MOV             R0, R10; this
54BDB2:  BLX             j__ZN4CHud13SetBigMessageEPtt; CHud::SetBigMessage(ushort *,ushort)
54BDB6:  ADDS            R6, #0xE0
54BDB8:  ADDS            R4, #1
54BDBA:  CMP.W           R6, #0x700
54BDBE:  BNE             loc_54BD88
54BDC0:  LDR             R0, =(_ZN11CTheScripts24bDrawSubtitlesBeforeFadeE_ptr - 0x54BDC6)
54BDC2:  ADD             R0, PC; _ZN11CTheScripts24bDrawSubtitlesBeforeFadeE_ptr
54BDC4:  LDR             R0, [R0]; CTheScripts::bDrawSubtitlesBeforeFade ...
54BDC6:  LDRB            R0, [R0]; CTheScripts::bDrawSubtitlesBeforeFade
54BDC8:  CMP             R0, R8
54BDCA:  BNE             loc_54BDFC
54BDCC:  LDR             R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x54BDD6)
54BDCE:  ADD.W           R8, SP, #0x350+var_33C
54BDD2:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
54BDD4:  LDR             R5, [R0]; CMessages::BriefMessages ...
54BDD6:  ADD.W           R6, R5, #0x18
54BDDA:  LDR             R0, [R5,#(dword_A00290 - 0xA00288)]; this
54BDDC:  LDM             R6, {R1-R3,R6}; int
54BDDE:  LDRD.W          R4, R12, [R5,#(dword_A002B0 - 0xA00288)]
54BDE2:  STRD.W          R6, R4, [SP,#0x350+var_350]; int
54BDE6:  STRD.W          R12, R8, [SP,#0x350+var_348]; int
54BDEA:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
54BDEE:  LDR             R1, [R5,#(dword_A002B8 - 0xA00288)]; unsigned __int16 *
54BDF0:  MOV             R0, R8; this
54BDF2:  BLX             j__ZN9CMessages20InsertStringInStringEPtS0_; CMessages::InsertStringInString(ushort *,ushort *)
54BDF6:  MOV             R0, R8; this
54BDF8:  BLX             j__ZN4CHud10SetMessageEPt; CHud::SetMessage(ushort *)
54BDFC:  ADD.W           SP, SP, #0x334
54BE00:  POP.W           {R8-R11}
54BE04:  POP             {R4-R7,PC}
