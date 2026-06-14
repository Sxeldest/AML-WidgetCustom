; =========================================================
; Game Engine Function: _ZN17CWidgetButtonHorn6UpdateEv
; Address            : 0x2B6674 - 0x2B66EE
; =========================================================

2B6674:  PUSH            {R4,R5,R7,LR}
2B6676:  ADD             R7, SP, #8
2B6678:  SUB             SP, SP, #0x18
2B667A:  MOV             R5, R0
2B667C:  BLX             j__ZN13CWidgetButton6UpdateEv; CWidgetButton::Update(void)
2B6680:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x2B6688)
2B6682:  ADR             R1, aLowgame; "lowgame"
2B6684:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
2B6686:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
2B6688:  LDR             R0, [R0]; CTheScripts::pActiveScripts
2B668A:  ADDS            R0, #8; char *
2B668C:  BLX             strcmp
2B6690:  LDR             R2, =(byte_6FA301 - 0x2B669E)
2B6692:  CMP             R0, #0
2B6694:  LDR             R3, =(byte_6FA300 - 0x2B66A0)
2B6696:  MOV.W           R1, #0
2B669A:  ADD             R2, PC; byte_6FA301
2B669C:  ADD             R3, PC; byte_6FA300
2B669E:  LDRB            R4, [R2]
2B66A0:  MOV.W           R2, #0
2B66A4:  IT EQ
2B66A6:  MOVEQ           R2, #1
2B66A8:  CMP             R2, R4
2B66AA:  STRB            R2, [R3]
2B66AC:  BEQ             loc_2B66E4
2B66AE:  STRD.W          R1, R1, [SP,#0x20+var_10]
2B66B2:  MOVS            R4, #7
2B66B4:  STRD.W          R1, R1, [SP,#0x20+var_18]
2B66B8:  ADD             R1, SP, #0x20+var_18
2B66BA:  CMP             R0, #0
2B66BC:  STR             R1, [SP,#0x20+var_20]
2B66BE:  IT EQ
2B66C0:  MOVEQ           R4, #8
2B66C2:  ADD             R1, SP, #0x20+var_C
2B66C4:  ADD             R2, SP, #0x20+var_10
2B66C6:  ADD             R3, SP, #0x20+var_14
2B66C8:  MOV             R0, R4
2B66CA:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
2B66CE:  LDRD.W          R0, R1, [SP,#0x20+var_18]
2B66D2:  LDR             R3, =(byte_6FA300 - 0x2B66DC)
2B66D4:  LDR             R4, [SP,#0x20+var_10]
2B66D6:  LDR             R2, [SP,#0x20+var_C]
2B66D8:  ADD             R3, PC; byte_6FA300
2B66DA:  STRD.W          R2, R4, [R5,#0xC]
2B66DE:  STRD.W          R1, R0, [R5,#0x14]
2B66E2:  LDRB            R2, [R3]
2B66E4:  LDR             R0, =(byte_6FA301 - 0x2B66EA)
2B66E6:  ADD             R0, PC; byte_6FA301
2B66E8:  STRB            R2, [R0]
2B66EA:  ADD             SP, SP, #0x18
2B66EC:  POP             {R4,R5,R7,PC}
