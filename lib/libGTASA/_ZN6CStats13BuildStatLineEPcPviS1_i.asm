; =========================================================
; Game Engine Function: _ZN6CStats13BuildStatLineEPcPviS1_i
; Address            : 0x419B44 - 0x419DA0
; =========================================================

419B44:  PUSH            {R4-R7,LR}
419B46:  ADD             R7, SP, #0xC
419B48:  PUSH.W          {R11}
419B4C:  VPUSH           {D8-D9}
419B50:  SUB             SP, SP, #0x10
419B52:  MOV             R6, R0
419B54:  CBZ             R6, loc_419B7A
419B56:  LDR             R5, =(gString2_ptr - 0x419B60)
419B58:  MOVS            R4, #0
419B5A:  LDR             R0, [R7,#arg_0]; this
419B5C:  ADD             R5, PC; gString2_ptr
419B5E:  CMP             R0, #1
419B60:  LDR             R5, [R5]; gString2
419B62:  STRB            R4, [R5]
419B64:  BNE             loc_419B86
419B66:  LDR             R3, [R3]
419B68:  LDR             R2, [R1]
419B6A:  CMP             R3, #9
419B6C:  BGT             loc_419BC2
419B6E:  LDR             R0, =(gString2_ptr - 0x419B76)
419B70:  LDR             R1, =(aD0D - 0x419B78); "%d:0%d"
419B72:  ADD             R0, PC; gString2_ptr
419B74:  ADD             R1, PC; "%d:0%d"
419B76:  LDR             R0, [R0]; gString2
419B78:  B               loc_419D30
419B7A:  ADD             SP, SP, #0x10
419B7C:  VPOP            {D8-D9}
419B80:  POP.W           {R11}
419B84:  POP             {R4-R7,PC}
419B86:  CBZ             R3, loc_419BCE
419B88:  CMP             R2, #3
419B8A:  BEQ             loc_419BF2
419B8C:  CMP             R2, #1
419B8E:  BEQ             loc_419C1E
419B90:  CMP             R2, #0
419B92:  BNE.W           def_419BDA; jumptable 00419BDA default case
419B96:  LDR             R0, =(TheText_ptr - 0x419B9E)
419B98:  LDR             R2, =(aFestOo - 0x419BA2); "FEST_OO"
419B9A:  ADD             R0, PC; TheText_ptr
419B9C:  LDR             R5, [R1]
419B9E:  ADD             R2, PC; "FEST_OO"
419BA0:  LDR             R4, [R3]
419BA2:  LDR             R0, [R0]; TheText ; this
419BA4:  MOV             R1, R2; CKeyGen *
419BA6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
419BAA:  MOVS            R1, #0; unsigned __int8
419BAC:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
419BB0:  MOV             R3, R0
419BB2:  LDR             R0, =(gString2_ptr - 0x419BBA)
419BB4:  LDR             R1, =(aDFFFDFFFFFFFDD+0x26 - 0x419BBE); " %d %s %d"
419BB6:  ADD             R0, PC; gString2_ptr
419BB8:  STR             R4, [SP,#0x30+var_30]
419BBA:  ADD             R1, PC; " %d %s %d"
419BBC:  LDR             R0, [R0]; gString2
419BBE:  MOV             R2, R5
419BC0:  B               loc_419D30
419BC2:  LDR             R0, =(gString2_ptr - 0x419BCA)
419BC4:  LDR             R1, =(aDD_2 - 0x419BCC); "%d:%d"
419BC6:  ADD             R0, PC; gString2_ptr
419BC8:  ADD             R1, PC; "%d:%d"
419BCA:  LDR             R0, [R0]; gString2
419BCC:  B               loc_419D30
419BCE:  CMP             R1, #0
419BD0:  BEQ.W           def_419BDA; jumptable 00419BDA default case
419BD4:  CMP             R2, #9; switch 10 cases
419BD6:  BHI.W           def_419BDA; jumptable 00419BDA default case
419BDA:  TBB.W           [PC,R2]; switch jump
419BDE:  DCB 5; jump table for switch statement
419BDF:  DCB 0x3E
419BE0:  DCB 0x47
419BE1:  DCB 0x50
419BE2:  DCB 0x59
419BE3:  DCB 0x5E
419BE4:  DCB 0x76
419BE5:  DCB 0x8E
419BE6:  DCB 0x9A
419BE7:  DCB 0xCA
419BE8:  LDR             R0, =(gString2_ptr - 0x419BF2); jumptable 00419BDA case 0
419BEA:  LDR             R2, [R1]
419BEC:  ADR             R1, dword_419E68
419BEE:  ADD             R0, PC; gString2_ptr
419BF0:  B               loc_419D98
419BF2:  LDR             R0, =(TheText_ptr - 0x419BFA)
419BF4:  LDR             R2, =(aFestOo - 0x419C00); "FEST_OO"
419BF6:  ADD             R0, PC; TheText_ptr
419BF8:  VLDR            S18, [R1]
419BFC:  ADD             R2, PC; "FEST_OO"
419BFE:  VLDR            S16, [R3]
419C02:  LDR             R0, [R0]; TheText ; this
419C04:  MOV             R1, R2; CKeyGen *
419C06:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
419C0A:  MOVS            R1, #0; unsigned __int8
419C0C:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
419C10:  VCVT.F64.F32    D16, S18
419C14:  LDR             R1, =(gString2_ptr - 0x419C1A)
419C16:  ADD             R1, PC; gString2_ptr
419C18:  LDR             R5, [R1]; gString2
419C1A:  ADR             R1, a2fS2f; "$%.2f %s $%.2f"
419C1C:  B               loc_419C48
419C1E:  LDR             R0, =(TheText_ptr - 0x419C26)
419C20:  LDR             R2, =(aFestOo - 0x419C2C); "FEST_OO"
419C22:  ADD             R0, PC; TheText_ptr
419C24:  VLDR            S18, [R1]
419C28:  ADD             R2, PC; "FEST_OO"
419C2A:  VLDR            S16, [R3]
419C2E:  LDR             R0, [R0]; TheText ; this
419C30:  MOV             R1, R2; CKeyGen *
419C32:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
419C36:  MOVS            R1, #0; unsigned __int8
419C38:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
419C3C:  VCVT.F64.F32    D16, S18
419C40:  LDR             R1, =(gString2_ptr - 0x419C46)
419C42:  ADD             R1, PC; gString2_ptr
419C44:  LDR             R5, [R1]; gString2
419C46:  ADR             R1, a2fS2f_0; "%.2f %s %.2f"
419C48:  VMOV            R2, R3, D16
419C4C:  VCVT.F64.F32    D16, S16
419C50:  VSTR            D16, [SP,#0x30+var_28]
419C54:  STR             R0, [SP,#0x30+var_30]
419C56:  MOV             R0, R5
419C58:  B               loc_419D30
419C5A:  VLDR            S0, [R1]; jumptable 00419BDA case 1
419C5E:  LDR             R0, =(gString2_ptr - 0x419C6A)
419C60:  VCVT.F64.F32    D16, S0
419C64:  LDR             R1, =(a2f_0+1 - 0x419C6C); "%.2f"
419C66:  ADD             R0, PC; gString2_ptr
419C68:  ADD             R1, PC; "%.2f"
419C6A:  B               loc_419D0A
419C6C:  VLDR            S0, [R1]; jumptable 00419BDA case 2
419C70:  LDR             R0, =(gString2_ptr - 0x419C7C)
419C72:  VCVT.F64.F32    D16, S0
419C76:  LDR             R1, =(a02f - 0x419C7E); "%0.2f%%"
419C78:  ADD             R0, PC; gString2_ptr
419C7A:  ADD             R1, PC; "%0.2f%%"
419C7C:  B               loc_419D0A
419C7E:  VLDR            S0, [R1]; jumptable 00419BDA case 3
419C82:  LDR             R0, =(gString2_ptr - 0x419C8E)
419C84:  VCVT.F64.F32    D16, S0
419C88:  LDR             R1, =(a2f_0 - 0x419C90); "$%.2f"
419C8A:  ADD             R0, PC; gString2_ptr
419C8C:  ADD             R1, PC; "$%.2f"
419C8E:  B               loc_419D0A
419C90:  LDR             R0, =(gString2_ptr - 0x419C9A); jumptable 00419BDA case 4
419C92:  LDR             R2, [R1]
419C94:  ADR             R1, dword_419E50
419C96:  ADD             R0, PC; gString2_ptr
419C98:  B               loc_419D98
419C9A:  LDR             R5, [R1]; jumptable 00419BDA case 5
419C9C:  BLX             j__ZN13CLocalisation6MetricEv; CLocalisation::Metric(void)
419CA0:  CMP             R0, #0
419CA2:  BEQ             loc_419D90
419CA4:  VMOV            S0, R5
419CA8:  VLDR            S2, =0.4536
419CAC:  LDR             R0, =(gString2_ptr - 0x419CB8)
419CAE:  ADR             R1, aDkgs; "%dkgs"
419CB0:  VCVT.F32.S32    S0, S0
419CB4:  ADD             R0, PC; gString2_ptr
419CB6:  LDR             R0, [R0]; gString2
419CB8:  VMUL.F32        S0, S0, S2
419CBC:  VCVT.S32.F32    S0, S0
419CC0:  VMOV            R2, S0
419CC4:  BL              sub_5E6BC0
419CC8:  B               def_419BDA; jumptable 00419BDA default case
419CCA:  LDR             R0, =(TheText_ptr - 0x419CD2); jumptable 00419BDA case 6
419CCC:  LDR             R2, =(aStMile - 0x419CD8); "ST_MILE"
419CCE:  ADD             R0, PC; TheText_ptr
419CD0:  VLDR            S16, [R1]
419CD4:  ADD             R2, PC; "ST_MILE"
419CD6:  LDR             R0, [R0]; TheText ; this
419CD8:  MOV             R1, R2; CKeyGen *
419CDA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
419CDE:  MOVS            R1, #0; unsigned __int8
419CE0:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
419CE4:  LDR             R5, =(gString2_ptr - 0x419CF0)
419CE6:  VCVT.F64.F32    D16, S16
419CEA:  LDR             R1, =(a2fS - 0x419CF4); "%.2f %s"
419CEC:  ADD             R5, PC; gString2_ptr
419CEE:  STR             R0, [SP,#0x30+var_30]
419CF0:  ADD             R1, PC; "%.2f %s"
419CF2:  LDR             R5, [R5]; gString2
419CF4:  VMOV            R2, R3, D16
419CF8:  B               loc_419C56
419CFA:  VLDR            S0, [R1]; jumptable 00419BDA case 7
419CFE:  LDR             R0, =(gString2_ptr - 0x419D0A)
419D00:  VCVT.F64.F32    D16, S0
419D04:  LDR             R1, =(a2fM - 0x419D0C); "%.2f m"
419D06:  ADD             R0, PC; gString2_ptr
419D08:  ADD             R1, PC; "%.2f m"
419D0A:  LDR             R0, [R0]; gString2
419D0C:  VMOV            R2, R3, D16
419D10:  B               loc_419D30
419D12:  VLDR            S2, [R1]; jumptable 00419BDA case 8
419D16:  VLDR            S0, =0.3
419D1A:  LDR             R0, =(gString2_ptr - 0x419D26)
419D1C:  VDIV.F32        S0, S2, S0
419D20:  LDR             R1, =(a2fFt - 0x419D28); "%.2f ft"
419D22:  ADD             R0, PC; gString2_ptr
419D24:  ADD             R1, PC; "%.2f ft"
419D26:  LDR             R0, [R0]; gString2
419D28:  VCVT.F64.F32    D16, S0
419D2C:  VMOV            R2, R3, D16
419D30:  BL              sub_5E6BC0
419D34:  LDR             R0, =(TheText_ptr - 0x419D3C); jumptable 00419BDA default case
419D36:  MOV             R1, R6; CKeyGen *
419D38:  ADD             R0, PC; TheText_ptr
419D3A:  LDR             R0, [R0]; TheText ; this
419D3C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
419D40:  MOV             R1, R0; unsigned __int16 *
419D42:  LDR             R0, =(gGxtString_ptr - 0x419D48)
419D44:  ADD             R0, PC; gGxtString_ptr
419D46:  LDR             R4, [R0]; gGxtString
419D48:  MOV             R0, R4; unsigned __int16 *
419D4A:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
419D4E:  MOV             R0, R4; this
419D50:  BLX             j__ZN5CFont25FilterOutTokensFromStringEPt; CFont::FilterOutTokensFromString(ushort *)
419D54:  LDR             R0, =(gString2_ptr - 0x419D5C)
419D56:  LDR             R1, =(gGxtString2_ptr - 0x419D5E)
419D58:  ADD             R0, PC; gString2_ptr
419D5A:  ADD             R1, PC; gGxtString2_ptr
419D5C:  LDR             R0, [R0]; gString2 ; char *
419D5E:  LDR             R1, [R1]; gGxtString2 ; unsigned __int16 *
419D60:  ADD             SP, SP, #0x10
419D62:  VPOP            {D8-D9}
419D66:  POP.W           {R11}
419D6A:  POP.W           {R4-R7,LR}
419D6E:  B.W             sub_19642C
419D72:  LDR             R0, =(TheText_ptr - 0x419D7C); jumptable 00419BDA case 9
419D74:  LDR             R5, [R1]
419D76:  ADR             R1, aStSecs; "ST_SECS"
419D78:  ADD             R0, PC; TheText_ptr
419D7A:  LDR             R0, [R0]; TheText ; this
419D7C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
419D80:  MOVS            R1, #0; unsigned __int8
419D82:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
419D86:  MOV             R3, R0
419D88:  LDR             R0, =(gString2_ptr - 0x419D90)
419D8A:  ADR             R1, aDS; "%d %s"
419D8C:  ADD             R0, PC; gString2_ptr
419D8E:  B               loc_419BBC
419D90:  LDR             R0, =(gString2_ptr - 0x419D9A)
419D92:  ADR             R1, aDlbs; "%dlbs"
419D94:  MOV             R2, R5
419D96:  ADD             R0, PC; gString2_ptr
419D98:  LDR             R0, [R0]; gString2
419D9A:  BL              sub_5E6BC0
419D9E:  B               def_419BDA; jumptable 00419BDA default case
