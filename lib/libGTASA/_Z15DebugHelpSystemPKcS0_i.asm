; =========================================================
; Game Engine Function: _Z15DebugHelpSystemPKcS0_i
; Address            : 0x2FED48 - 0x2FEEE6
; =========================================================

2FED48:  PUSH            {R4-R7,LR}
2FED4A:  ADD             R7, SP, #0xC
2FED4C:  PUSH.W          {R8-R11}
2FED50:  SUB             SP, SP, #0x1C
2FED52:  MOV             R9, R1
2FED54:  LDR             R1, =(aPrintHelpForev_2 - 0x2FED5E); "PRINT_HELP_FOREVER_CONDITIONAL_TOUCH"
2FED56:  STR             R2, [SP,#0x38+var_20]
2FED58:  MOV             R6, R0
2FED5A:  ADD             R1, PC; "PRINT_HELP_FOREVER_CONDITIONAL_TOUCH"
2FED5C:  BLX             strcasecmp
2FED60:  LDR             R1, =(aPrintHelpForev_3 - 0x2FED6A); "PRINT_HELP_FOREVER_CONDITIONAL_HID"
2FED62:  MOV             R10, R0
2FED64:  MOV             R0, R6; char *
2FED66:  ADD             R1, PC; "PRINT_HELP_FOREVER_CONDITIONAL_HID"
2FED68:  BLX             strcasecmp
2FED6C:  LDR             R1, =(aPrintHelpForev_4 - 0x2FED76); "PRINT_HELP_FOREVER_CONDITIONAL_TOUCH_CL"...
2FED6E:  MOV             R11, R0
2FED70:  MOV             R0, R6; char *
2FED72:  ADD             R1, PC; "PRINT_HELP_FOREVER_CONDITIONAL_TOUCH_CL"...
2FED74:  BLX             strcasecmp
2FED78:  LDR             R1, =(aPrintHelpForev_5 - 0x2FED82); "PRINT_HELP_FOREVER_CONDITIONAL_TOUCH_AD"...
2FED7A:  MOV             R5, R0
2FED7C:  MOV             R0, R6; char *
2FED7E:  ADD             R1, PC; "PRINT_HELP_FOREVER_CONDITIONAL_TOUCH_AD"...
2FED80:  BLX             strcasecmp
2FED84:  LDR             R1, =(aPrintHelpForev_6 - 0x2FED8E); "PRINT_HELP_FOREVER_CONDITIONAL_HID_JOYP"...
2FED86:  MOV             R4, R0
2FED88:  MOV             R0, R6; char *
2FED8A:  ADD             R1, PC; "PRINT_HELP_FOREVER_CONDITIONAL_HID_JOYP"...
2FED8C:  BLX             strcasecmp
2FED90:  MOVW            R8, #0xA78
2FED94:  CMP.W           R10, #0
2FED98:  LDR             R1, =(aPrintHelpForev_7 - 0x2FEDB8); "PRINT_HELP_FOREVER_CONDITIONAL_HID_KEYB"...
2FED9A:  IT NE
2FED9C:  MOVNE.W         R8, #0
2FEDA0:  CMP.W           R11, #0
2FEDA4:  IT EQ
2FEDA6:  MOVWEQ          R8, #0xA79
2FEDAA:  CMP             R5, #0
2FEDAC:  IT EQ
2FEDAE:  MOVWEQ          R8, #0xA7A
2FEDB2:  CMP             R4, #0
2FEDB4:  ADD             R1, PC; "PRINT_HELP_FOREVER_CONDITIONAL_HID_KEYB"...
2FEDB6:  IT EQ
2FEDB8:  MOVWEQ          R8, #0xA7B
2FEDBC:  CMP             R0, #0
2FEDBE:  MOV             R0, R6; char *
2FEDC0:  IT EQ
2FEDC2:  MOVWEQ          R8, #0xA7C
2FEDC6:  BLX             strcasecmp
2FEDCA:  ADR             R1, aPrintHelpForev; "PRINT_HELP_FOREVER_CONDITIONAL_TOUCH_AN"...
2FEDCC:  CMP             R0, #0
2FEDCE:  MOV             R0, R6; char *
2FEDD0:  IT EQ
2FEDD2:  MOVWEQ          R8, #0xA7D
2FEDD6:  BLX             strcasecmp
2FEDDA:  ADR             R1, aPrintHelpForev_0; "PRINT_HELP_FOREVER_CONDITIONAL_TOUCH_DI"...
2FEDDC:  CMP             R0, #0
2FEDDE:  MOV             R0, R6; char *
2FEDE0:  IT EQ
2FEDE2:  MOVWEQ          R8, #0xA7E
2FEDE6:  BLX             strcasecmp
2FEDEA:  ADR             R1, aPrintHelpForev_1; "PRINT_HELP_FOREVER_CONDITIONAL_TOUCH_FL"...
2FEDEC:  CMP             R0, #0
2FEDEE:  MOV             R0, R6; char *
2FEDF0:  IT EQ
2FEDF2:  MOVWEQ          R8, #0xA7F
2FEDF6:  BLX             strcasecmp
2FEDFA:  CMP             R0, #0
2FEDFC:  IT EQ
2FEDFE:  MOVEQ.W         R8, #0xA80
2FEE02:  SUBW            R0, R8, #0xA78; switch 9 cases
2FEE06:  CMP             R0, #8
2FEE08:  BHI             def_2FEE0A; jumptable 002FEE0A default case
2FEE0A:  TBB.W           [PC,R0]; switch jump
2FEE0E:  DCB 5; jump table for switch statement
2FEE0F:  DCB 0xA
2FEE10:  DCB 0x13
2FEE11:  DCB 0x1B
2FEE12:  DCB 0x25
2FEE13:  DCB 0xE
2FEE14:  DCB 0x28
2FEE15:  DCB 0x31
2FEE16:  DCB 0x3B
2FEE17:  ALIGN 2
2FEE18:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 002FEE0A case 2680
2FEE1C:  CMP             R0, #0
2FEE1E:  BNE             loc_2FEEDE
2FEE20:  B               def_2FEE0A; jumptable 002FEE0A default case
2FEE22:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 002FEE0A case 2681
2FEE26:  CMP             R0, #1
2FEE28:  BEQ             def_2FEE0A; jumptable 002FEE0A default case
2FEE2A:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 002FEE0A case 2685
2FEE2E:  CMP             R0, #2
2FEE30:  BEQ             def_2FEE0A; jumptable 002FEE0A default case
2FEE32:  B               loc_2FEEDE
2FEE34:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2FEE3A); jumptable 002FEE0A case 2682
2FEE36:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr ; this
2FEE38:  LDR             R4, [R0]; MobileSettings::settings ...
2FEE3A:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2FEE3E:  LDR.W           R1, [R4,#(dword_6E051C - 0x6E03F4)]
2FEE42:  B               loc_2FEE6A
2FEE44:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 002FEE0A case 2683
2FEE48:  CMP             R0, #0
2FEE4A:  BNE             loc_2FEEDE
2FEE4C:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2FEE52)
2FEE4E:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2FEE50:  LDR             R0, [R0]; MobileSettings::settings ...
2FEE52:  LDR.W           R0, [R0,#(dword_6E051C - 0x6E03F4)]
2FEE56:  B               loc_2FEE7E
2FEE58:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 002FEE0A case 2684
2FEE5C:  B               loc_2FEE7E
2FEE5E:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2FEE64); jumptable 002FEE0A case 2686
2FEE60:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr ; this
2FEE62:  LDR             R4, [R0]; MobileSettings::settings ...
2FEE64:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2FEE68:  LDR             R1, [R4,#(dword_6E045C - 0x6E03F4)]
2FEE6A:  ORRS            R0, R1
2FEE6C:  BNE             loc_2FEEDE
2FEE6E:  B               def_2FEE0A; jumptable 002FEE0A default case
2FEE70:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 002FEE0A case 2687
2FEE74:  CBNZ            R0, loc_2FEEDE
2FEE76:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2FEE7C)
2FEE78:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2FEE7A:  LDR             R0, [R0]; MobileSettings::settings ...
2FEE7C:  LDR             R0, [R0,#(dword_6E045C - 0x6E03F4)]
2FEE7E:  CMP             R0, #1
2FEE80:  BEQ             def_2FEE0A; jumptable 002FEE0A default case
2FEE82:  B               loc_2FEEDE
2FEE84:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 002FEE0A case 2688
2FEE88:  CBNZ            R0, loc_2FEEDE
2FEE8A:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2FEE90)
2FEE8C:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2FEE8E:  LDR             R0, [R0]; MobileSettings::settings ...
2FEE90:  LDR             R0, [R0,#(dword_6E045C - 0x6E03F4)]
2FEE92:  CMP             R0, #2
2FEE94:  BNE             loc_2FEEDE
2FEE96:  LDR             R0, =(TheText_ptr - 0x2FEE9E); jumptable 002FEE0A default case
2FEE98:  MOV             R1, R9; CKeyGen *
2FEE9A:  ADD             R0, PC; TheText_ptr
2FEE9C:  LDR             R4, [R0]; TheText
2FEE9E:  MOV             R0, R4; this
2FEEA0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2FEEA4:  MOV             R1, R0; char *
2FEEA6:  MOVS            R5, #0
2FEEA8:  LDR             R0, [SP,#0x38+var_20]
2FEEAA:  MOVS            R2, #0; unsigned __int16 *
2FEEAC:  STR             R5, [SP,#0x38+var_38]; bool
2FEEAE:  MOVS            R3, #1; bool
2FEEB0:  STR             R0, [SP,#0x38+var_34]; int
2FEEB2:  MOV             R0, R9; this
2FEEB4:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
2FEEB8:  MOV             R0, R4; this
2FEEBA:  MOV             R1, R9; CKeyGen *
2FEEBC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2FEEC0:  MOV             R1, R0; char *
2FEEC2:  MOV.W           R0, #0xFFFFFFFF
2FEEC6:  STRD.W          R0, R0, [SP,#0x38+var_38]; int
2FEECA:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
2FEECE:  STRD.W          R0, R0, [SP,#0x38+var_30]; int
2FEED2:  MOV             R0, R9; this
2FEED4:  MOV.W           R3, #0xFFFFFFFF; int
2FEED8:  STR             R5, [SP,#0x38+var_28]; int
2FEEDA:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
2FEEDE:  ADD             SP, SP, #0x1C
2FEEE0:  POP.W           {R8-R11}
2FEEE4:  POP             {R4-R7,PC}
