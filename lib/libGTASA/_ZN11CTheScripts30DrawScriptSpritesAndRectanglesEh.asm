; =========================================================
; Game Engine Function: _ZN11CTheScripts30DrawScriptSpritesAndRectanglesEh
; Address            : 0x329C50 - 0x329E82
; =========================================================

329C50:  PUSH            {R4-R7,LR}
329C52:  ADD             R7, SP, #0xC
329C54:  PUSH.W          {R8-R11}
329C58:  SUB             SP, SP, #4
329C5A:  VPUSH           {D8-D12}
329C5E:  SUB             SP, SP, #0x50; float
329C60:  MOV             R4, R0
329C62:  LDR             R0, =(_ZN11CTheScripts15IntroRectanglesE_ptr - 0x329C70)
329C64:  VMOV.F32        S16, #0.5
329C68:  ADD.W           R11, SP, #0x98+var_58
329C6C:  ADD             R0, PC; _ZN11CTheScripts15IntroRectanglesE_ptr
329C6E:  MOV.W           R8, #0
329C72:  LDR.W           R9, [R0]; CTheScripts::IntroRectangles ...
329C76:  LDR             R0, =(_ZN11CTheScripts15IntroRectanglesE_ptr - 0x329C7C)
329C78:  ADD             R0, PC; _ZN11CTheScripts15IntroRectanglesE_ptr
329C7A:  LDR.W           R10, [R0]; CTheScripts::IntroRectangles ...
329C7E:  LDR             R0, =(_ZN11CTheScripts15IntroRectanglesE_ptr - 0x329C84)
329C80:  ADD             R0, PC; _ZN11CTheScripts15IntroRectanglesE_ptr
329C82:  LDR             R0, [R0]; CTheScripts::IntroRectangles ...
329C84:  STR             R0, [SP,#0x98+var_60]
329C86:  LDR             R0, =(FrontEndMenuManager_ptr - 0x329C8C)
329C88:  ADD             R0, PC; FrontEndMenuManager_ptr
329C8A:  LDR             R0, [R0]; FrontEndMenuManager
329C8C:  STR             R0, [SP,#0x98+var_64]
329C8E:  LDR             R0, =(_ZN11CTheScripts15IntroRectanglesE_ptr - 0x329C94)
329C90:  ADD             R0, PC; _ZN11CTheScripts15IntroRectanglesE_ptr
329C92:  LDR             R0, [R0]; CTheScripts::IntroRectangles ...
329C94:  STR             R0, [SP,#0x98+var_68]
329C96:  LDR             R0, =(FrontEndMenuManager_ptr - 0x329C9C)
329C98:  ADD             R0, PC; FrontEndMenuManager_ptr
329C9A:  LDR             R0, [R0]; FrontEndMenuManager
329C9C:  STR             R0, [SP,#0x98+var_6C]
329C9E:  LDR             R0, =(_ZN11CTheScripts15IntroRectanglesE_ptr - 0x329CA4)
329CA0:  ADD             R0, PC; _ZN11CTheScripts15IntroRectanglesE_ptr
329CA2:  LDR             R0, [R0]; CTheScripts::IntroRectangles ...
329CA4:  STR             R0, [SP,#0x98+var_70]
329CA6:  LDR             R0, =(_ZN11CTheScripts15IntroRectanglesE_ptr - 0x329CAC)
329CA8:  ADD             R0, PC; _ZN11CTheScripts15IntroRectanglesE_ptr
329CAA:  LDR             R0, [R0]; CTheScripts::IntroRectangles ...
329CAC:  STR             R0, [SP,#0x98+var_74]
329CAE:  LDR             R0, =(_ZN11CTheScripts13ScriptSpritesE_ptr - 0x329CB4)
329CB0:  ADD             R0, PC; _ZN11CTheScripts13ScriptSpritesE_ptr
329CB2:  LDR             R0, [R0]; CTheScripts::ScriptSprites ...
329CB4:  STR             R0, [SP,#0x98+var_78]
329CB6:  LDR             R0, =(_ZN11CTheScripts15IntroRectanglesE_ptr - 0x329CBC)
329CB8:  ADD             R0, PC; _ZN11CTheScripts15IntroRectanglesE_ptr
329CBA:  LDR             R0, [R0]; CTheScripts::IntroRectangles ...
329CBC:  STR             R0, [SP,#0x98+var_7C]
329CBE:  LDR             R0, =(_ZN11CTheScripts13ScriptSpritesE_ptr - 0x329CC4)
329CC0:  ADD             R0, PC; _ZN11CTheScripts13ScriptSpritesE_ptr
329CC2:  LDR             R0, [R0]; CTheScripts::ScriptSprites ...
329CC4:  STR             R0, [SP,#0x98+var_80]
329CC6:  ADD.W           R0, R9, R8
329CCA:  LDRB            R0, [R0,#4]
329CCC:  CMP             R0, R4
329CCE:  BNE.W           def_329CDE; jumptable 00329CDE default case
329CD2:  LDR.W           R0, [R10,R8]
329CD6:  SUBS            R0, #1; switch 5 cases
329CD8:  CMP             R0, #4
329CDA:  BHI.W           def_329CDE; jumptable 00329CDE default case
329CDE:  TBB.W           [PC,R0]; switch jump
329CE2:  DCB 3; jump table for switch statement
329CE3:  DCB 0x13
329CE4:  DCB 0x33
329CE5:  DCB 0x42
329CE6:  DCB 0x57
329CE7:  ALIGN 2
329CE8:  LDR             R0, [SP,#0x98+var_60]; jumptable 00329CDE case 1
329CEA:  ADD             R0, R8
329CEC:  ADD.W           R3, R0, #8
329CF0:  ADD.W           R5, R0, #0x2A ; '*'
329CF4:  LDM             R3, {R1-R3}; float
329CF6:  LDRB.W          R6, [R0,#0x34]
329CFA:  ADDS            R0, #0x20 ; ' '
329CFC:  STMEA.W         SP, {R0,R5,R6}
329D00:  LDR             R0, [SP,#0x98+var_64]; this
329D02:  BLX             j__ZN12CMenuManager16DrawWindowedTextEfffPcS0_h; CMenuManager::DrawWindowedText(float,float,float,char *,char *,uchar)
329D06:  B               def_329CDE; jumptable 00329CDE default case
329D08:  LDR             R0, [SP,#0x98+var_68]; jumptable 00329CDE case 2
329D0A:  ADD.W           R5, R0, R8
329D0E:  ADD.W           R3, R5, #8
329D12:  LDM             R3, {R0-R3}
329D14:  STRD.W          R2, R1, [SP,#0x98+var_50]
329D18:  MOVS            R1, #0; unsigned __int8
329D1A:  STRD.W          R0, R3, [SP,#0x98+var_58]
329D1E:  MOVS            R0, #0xBE
329D20:  STR             R0, [SP,#0x98+var_98]; unsigned __int8
329D22:  ADD             R0, SP, #0x98+var_5C; this
329D24:  MOVS            R2, #0; unsigned __int8
329D26:  MOVS            R3, #0; unsigned __int8
329D28:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
329D2C:  LDRB.W          R1, [R5,#0x38]
329D30:  ADD.W           R2, R5, #0x20 ; ' '
329D34:  MOVS            R3, #0
329D36:  STRD.W          R0, R1, [SP,#0x98+var_98]
329D3A:  MOVS            R0, #1
329D3C:  STR             R0, [SP,#0x98+var_90]
329D3E:  MOV             R1, R11
329D40:  LDR             R0, [SP,#0x98+var_6C]
329D42:  BLX             j__ZN12CMenuManager10DrawWindowERK5CRectPch5CRGBAhh; CMenuManager::DrawWindow(CRect const&,char *,uchar,CRGBA,uchar,uchar)
329D46:  B               def_329CDE; jumptable 00329CDE default case
329D48:  LDR             R0, [SP,#0x98+var_70]; jumptable 00329CDE case 3
329D4A:  ADD             R0, R8
329D4C:  ADD.W           R6, R0, #8
329D50:  LDM             R6, {R1-R3,R6}
329D52:  STRD.W          R3, R2, [SP,#0x98+var_50]
329D56:  STRD.W          R1, R6, [SP,#0x98+var_58]
329D5A:  ADD.W           R1, R0, #0x1C
329D5E:  MOV             R0, R11
329D60:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
329D64:  B               def_329CDE; jumptable 00329CDE default case
329D66:  LDR             R0, [SP,#0x98+var_74]; jumptable 00329CDE case 4
329D68:  ADD.W           R1, R0, R8
329D6C:  ADD.W           R6, R1, #8
329D70:  LDRSH.W         R0, [R1,#6]
329D74:  LDM             R6, {R2,R3,R6}
329D76:  STR             R3, [SP,#0x98+var_4C]
329D78:  ADD             R3, SP, #0x98+var_58
329D7A:  LDR             R5, [R1,#0x14]
329D7C:  STM             R3!, {R2,R5,R6}
329D7E:  LDR             R2, [SP,#0x98+var_78]
329D80:  ADD.W           R0, R2, R0,LSL#2
329D84:  ADD.W           R2, R1, #0x1C
329D88:  MOV             R1, R11
329D8A:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
329D8E:  B               def_329CDE; jumptable 00329CDE default case
329D90:  LDR             R0, [SP,#0x98+var_7C]; jumptable 00329CDE case 5
329D92:  ADD.W           R11, R0, R8
329D96:  VLDR            S0, [R11,#8]
329D9A:  VLDR            S4, [R11,#0x10]
329D9E:  VLDR            S2, [R11,#0xC]
329DA2:  VLDR            S6, [R11,#0x14]
329DA6:  VADD.F32        S4, S0, S4
329DAA:  LDR.W           R6, [R11,#0x18]
329DAE:  VADD.F32        S6, S2, S6
329DB2:  MOV             R0, R6; x
329DB4:  VMUL.F32        S20, S4, S16
329DB8:  VMUL.F32        S18, S6, S16
329DBC:  VSUB.F32        S24, S20, S0
329DC0:  VSUB.F32        S22, S18, S2
329DC4:  BLX             cosf
329DC8:  MOV             R5, R0
329DCA:  MOV             R0, R6; x
329DCC:  BLX             sinf
329DD0:  VMOV            S0, R0
329DD4:  ADD.W           R0, R11, #0x1C
329DD8:  VMOV            S2, R5
329DDC:  LDRSH.W         R6, [R11,#6]
329DE0:  VMUL.F32        S4, S22, S0
329DE4:  STR             R0, [SP,#0x98+var_84]; CRGBA *
329DE6:  VNMUL.F32       S6, S24, S2
329DEA:  LDR             R0, [SP,#0x98+var_80]
329DEC:  VMUL.F32        S8, S2, S22
329DF0:  ADD.W           R11, SP, #0x98+var_58
329DF4:  VNMUL.F32       S10, S24, S0
329DF8:  ADD.W           R0, R0, R6,LSL#2; this
329DFC:  VMUL.F32        S2, S24, S2
329E00:  VMUL.F32        S0, S24, S0
329E04:  VADD.F32        S12, S6, S4
329E08:  VSUB.F32        S14, S10, S8
329E0C:  VADD.F32        S1, S2, S4
329E10:  VSUB.F32        S2, S2, S4
329E14:  VSUB.F32        S4, S6, S4
329E18:  VADD.F32        S3, S0, S8
329E1C:  VADD.F32        S12, S20, S12
329E20:  VSUB.F32        S0, S0, S8
329E24:  VADD.F32        S14, S18, S14
329E28:  VADD.F32        S1, S20, S1
329E2C:  VADD.F32        S10, S10, S8
329E30:  VADD.F32        S2, S20, S2
329E34:  VADD.F32        S6, S18, S3
329E38:  VMOV            R1, S12; float
329E3C:  VADD.F32        S0, S18, S0
329E40:  VMOV            R2, S14; float
329E44:  VMOV            R3, S1; float
329E48:  VADD.F32        S8, S18, S10
329E4C:  VADD.F32        S4, S20, S4
329E50:  VSTR            S0, [SP,#0x98+var_98]
329E54:  VSTR            S4, [SP,#0x98+var_94]
329E58:  VSTR            S8, [SP,#0x98+var_90]
329E5C:  VSTR            S2, [SP,#0x98+var_8C]
329E60:  VSTR            S6, [SP,#0x98+var_88]
329E64:  BLX             j__ZN9CSprite2d4DrawEffffffffRK5CRGBA; CSprite2d::Draw(float,float,float,float,float,float,float,float,CRGBA const&)
329E68:  ADD.W           R8, R8, #0x3C ; '<'; jumptable 00329CDE default case
329E6C:  CMP.W           R8, #0x1E00
329E70:  BNE.W           loc_329CC6
329E74:  ADD             SP, SP, #0x50 ; 'P'
329E76:  VPOP            {D8-D12}
329E7A:  ADD             SP, SP, #4
329E7C:  POP.W           {R8-R11}
329E80:  POP             {R4-R7,PC}
