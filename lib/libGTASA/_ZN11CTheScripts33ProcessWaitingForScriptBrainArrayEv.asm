; =========================================================
; Game Engine Function: _ZN11CTheScripts33ProcessWaitingForScriptBrainArrayEv
; Address            : 0x32FDC8 - 0x32FFF2
; =========================================================

32FDC8:  PUSH            {R4-R7,LR}
32FDCA:  ADD             R7, SP, #0xC
32FDCC:  PUSH.W          {R8-R11}
32FDD0:  SUB             SP, SP, #4
32FDD2:  VPUSH           {D8-D9}
32FDD6:  SUB             SP, SP, #0x28
32FDD8:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x32FDE4)
32FDDA:  MOV.W           R2, #0x194
32FDDE:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x32FDE6)
32FDE0:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
32FDE2:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
32FDE4:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
32FDE6:  LDR             R1, [R1]; CWorld::Players ...
32FDE8:  LDR             R0, [R0]; int
32FDEA:  SMULBB.W        R2, R0, R2
32FDEE:  LDR             R1, [R1,R2]
32FDF0:  CMP             R1, #0
32FDF2:  BEQ.W           loc_32FFE4
32FDF6:  BLX             j__Z23FindPlayerCentreOfWorldi; FindPlayerCentreOfWorld(int)
32FDFA:  VLDR            D8, [R0,#4]
32FDFE:  MOVS            R6, #0
32FE00:  VLDR            S18, [R0]
32FE04:  MOV.W           R9, #2
32FE08:  LDR             R0, =(_ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr - 0x32FE10)
32FE0A:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x32FE12)
32FE0C:  ADD             R0, PC; _ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr
32FE0E:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
32FE10:  LDR             R5, [R0]; CTheScripts::EntitiesWaitingForScriptBrain ...
32FE12:  LDR             R0, =(_ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr - 0x32FE1C)
32FE14:  LDR.W           R10, [R1]; CStreaming::ms_aInfoForModel ...
32FE18:  ADD             R0, PC; _ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr
32FE1A:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x32FE24)
32FE1C:  LDR.W           R11, [R0]; CTheScripts::EntitiesWaitingForScriptBrain ...
32FE20:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
32FE22:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x32FE28)
32FE24:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
32FE26:  LDR.W           R8, [R0]; CTheScripts::ScriptsForBrains ...
32FE2A:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x32FE30)
32FE2C:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
32FE2E:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
32FE30:  STR             R0, [SP,#0x58+var_34]
32FE32:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x32FE38)
32FE34:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
32FE36:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
32FE38:  STR             R0, [SP,#0x58+var_38]
32FE3A:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x32FE40)
32FE3C:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
32FE3E:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
32FE40:  STR             R0, [SP,#0x58+var_3C]
32FE42:  LDR             R0, [R1]; CStreaming::ms_aInfoForModel ...
32FE44:  STR             R0, [SP,#0x58+var_40]
32FE46:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x32FE4E)
32FE48:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x32FE50)
32FE4A:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
32FE4C:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
32FE4E:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
32FE50:  STR             R0, [SP,#0x58+var_48]
32FE52:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x32FE58)
32FE54:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
32FE56:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
32FE58:  STR             R0, [SP,#0x58+var_44]
32FE5A:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x32FE60)
32FE5C:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
32FE5E:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
32FE60:  STR             R0, [SP,#0x58+var_4C]
32FE62:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x32FE68)
32FE64:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
32FE66:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
32FE68:  STR             R0, [SP,#0x58+var_50]
32FE6A:  LDR             R0, [R1]; CStreaming::ms_aInfoForModel ...
32FE6C:  STR             R0, [SP,#0x58+var_54]
32FE6E:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x32FE74)
32FE70:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
32FE72:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
32FE74:  STR             R0, [SP,#0x58+var_58]
32FE76:  B               loc_32FE84
32FE78:  MOVS            R1, #4; int
32FE7A:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
32FE7E:  MOV.W           R9, #2
32FE82:  B               def_32FEAA; jumptable 0032FEAA default case, case 2
32FE84:  LDR.W           R2, [R5,R6,LSL#3]; int
32FE88:  CMP             R2, #0
32FE8A:  BEQ.W           def_32FEAA; jumptable 0032FEAA default case, case 2
32FE8E:  ADD.W           R0, R11, R6,LSL#3
32FE92:  LDRSH.W         R0, [R0,#4]
32FE96:  ADD.W           R0, R0, R0,LSL#2
32FE9A:  ADD.W           R0, R8, R0,LSL#2
32FE9E:  LDRSB.W         R0, [R0,#2]
32FEA2:  CMP             R0, #4; switch 5 cases
32FEA4:  BHI.W           def_32FEAA; jumptable 0032FEAA default case, case 2
32FEA8:  UXTB            R3, R0
32FEAA:  TBB.W           [PC,R0]; switch jump
32FEAE:  DCB 3; jump table for switch statement
32FEAF:  DCB 0x1E
32FEB0:  DCB 0x97
32FEB1:  DCB 3
32FEB2:  DCB 0x1E
32FEB3:  ALIGN 2
32FEB4:  LDRB.W          R1, [R2,#0x79C]; jumptable 0032FEAA cases 0,3
32FEB8:  CMP             R3, #1
32FEBA:  ITTT EQ
32FEBC:  LDREQ.W         R0, [R2,#0x144]
32FEC0:  BFIEQ.W         R0, R9, #0x14, #2
32FEC4:  STREQ.W         R0, [R2,#0x144]
32FEC8:  LDR             R3, [SP,#0x58+var_34]
32FECA:  ADD.W           R0, R1, R1,LSL#2
32FECE:  LDRSH.W         R0, [R3,R0,LSL#2]
32FED2:  MOVW            R3, #0x6676
32FED6:  ADD             R0, R3; this
32FED8:  ADD.W           R3, R0, R0,LSL#2
32FEDC:  ADD.W           R3, R10, R3,LSL#2
32FEE0:  LDRB            R3, [R3,#0x10]
32FEE2:  CMP             R3, #1
32FEE4:  BNE             loc_32FFD6
32FEE6:  LDR             R0, [SP,#0x58+var_38]
32FEE8:  B               loc_32FFCE
32FEEA:  LDR.W           R0, [R2,#0x144]; jumptable 0032FEAA cases 1,4
32FEEE:  UBFX.W          R1, R0, #0x14, #2
32FEF2:  CMP             R1, #2
32FEF4:  BEQ             loc_32FF9C
32FEF6:  CMP             R1, #1
32FEF8:  BNE             def_32FEAA; jumptable 0032FEAA default case, case 2
32FEFA:  LDRSH.W         R12, [R2,#0x16C]
32FEFE:  LDR             R1, [SP,#0x58+var_44]
32FF00:  ADD.W           LR, R12, R12,LSL#2
32FF04:  ADD.W           R1, R1, LR,LSL#2
32FF08:  LDRB            R1, [R1,#2]
32FF0A:  CMP             R1, #1
32FF0C:  BNE             def_32FEAA; jumptable 0032FEAA default case, case 2
32FF0E:  LDR             R1, [R2,#0x14]
32FF10:  MOV.W           R9, #2
32FF14:  ADD.W           R4, R1, #0x30 ; '0'
32FF18:  CMP             R1, #0
32FF1A:  IT EQ
32FF1C:  ADDEQ           R4, R2, #4
32FF1E:  LDR             R1, [SP,#0x58+var_4C]
32FF20:  VLDR            S0, [R4]
32FF24:  VLDR            D16, [R4,#4]
32FF28:  ADD.W           R1, R1, LR,LSL#2
32FF2C:  VSUB.F32        S0, S18, S0
32FF30:  VSUB.F32        D16, D8, D16
32FF34:  VMUL.F32        D1, D16, D16
32FF38:  VMUL.F32        S0, S0, S0
32FF3C:  VADD.F32        S0, S0, S2
32FF40:  VADD.F32        S0, S0, S3
32FF44:  VLDR            S2, [R1,#8]
32FF48:  VSQRT.F32       S0, S0
32FF4C:  VCMPE.F32       S0, S2
32FF50:  VMRS            APSR_nzcv, FPSCR
32FF54:  BGE             def_32FEAA; jumptable 0032FEAA default case, case 2
32FF56:  MOVS            R1, #2
32FF58:  CMP             R3, #1
32FF5A:  UXTH.W          R4, R12
32FF5E:  ITT EQ
32FF60:  BFIEQ.W         R0, R1, #0x14, #2
32FF64:  STREQ.W         R0, [R2,#0x144]
32FF68:  UXTB            R1, R4; unsigned __int8
32FF6A:  LDR             R3, [SP,#0x58+var_50]
32FF6C:  LSLS            R0, R1, #2
32FF6E:  UXTAB.W         R0, R0, R4
32FF72:  LDR             R4, [SP,#0x58+var_54]
32FF74:  LDRSH.W         R0, [R3,R0,LSL#2]
32FF78:  MOVW            R3, #0x6676
32FF7C:  ADD             R0, R3; this
32FF7E:  ADD.W           R3, R0, R0,LSL#2
32FF82:  ADD.W           R3, R4, R3,LSL#2
32FF86:  LDRB            R3, [R3,#0x10]
32FF88:  CMP             R3, #1
32FF8A:  BNE.W           loc_32FE78
32FF8E:  LDR             R0, [SP,#0x58+var_58]; this
32FF90:  MOVS            R3, #0; unsigned __int8
32FF92:  BLX             j__ZN17CScriptsForBrains27StartNewStreamedScriptBrainEhP7CEntityh; CScriptsForBrains::StartNewStreamedScriptBrain(uchar,CEntity *,uchar)
32FF96:  MOV.W           R9, #2
32FF9A:  B               def_32FEAA; jumptable 0032FEAA default case, case 2
32FF9C:  LDRB.W          R1, [R2,#0x16C]; unsigned __int8
32FFA0:  CMP             R3, #1
32FFA2:  ITT EQ
32FFA4:  BFIEQ.W         R0, R9, #0x14, #2
32FFA8:  STREQ.W         R0, [R2,#0x144]
32FFAC:  LDR             R3, [SP,#0x58+var_3C]
32FFAE:  ADD.W           R0, R1, R1,LSL#2
32FFB2:  LDR             R4, [SP,#0x58+var_40]
32FFB4:  LDRSH.W         R0, [R3,R0,LSL#2]
32FFB8:  MOVW            R3, #0x6676
32FFBC:  ADD             R0, R3
32FFBE:  ADD.W           R3, R0, R0,LSL#2
32FFC2:  ADD.W           R3, R4, R3,LSL#2
32FFC6:  LDRB            R3, [R3,#0x10]
32FFC8:  CMP             R3, #1
32FFCA:  BNE             loc_32FFD6
32FFCC:  LDR             R0, [SP,#0x58+var_48]; this
32FFCE:  MOVS            R3, #0; unsigned __int8
32FFD0:  BLX             j__ZN17CScriptsForBrains27StartNewStreamedScriptBrainEhP7CEntityh; CScriptsForBrains::StartNewStreamedScriptBrain(uchar,CEntity *,uchar)
32FFD4:  B               def_32FEAA; jumptable 0032FEAA default case, case 2
32FFD6:  MOVS            R1, #4; int
32FFD8:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
32FFDC:  ADDS            R6, #1; jumptable 0032FEAA default case, case 2
32FFDE:  CMP             R6, #0x96
32FFE0:  BNE.W           loc_32FE84
32FFE4:  ADD             SP, SP, #0x28 ; '('
32FFE6:  VPOP            {D8-D9}
32FFEA:  ADD             SP, SP, #4
32FFEC:  POP.W           {R8-R11}
32FFF0:  POP             {R4-R7,PC}
