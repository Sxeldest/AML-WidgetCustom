; =========================================================
; Game Engine Function: _ZN12CMenuManager15SaveStatsToFileEv
; Address            : 0x43597C - 0x435E06
; =========================================================

43597C:  PUSH            {R4-R7,LR}
43597E:  ADD             R7, SP, #0xC
435980:  PUSH.W          {R8-R11}
435984:  SUB             SP, SP, #4
435986:  VPUSH           {D8-D9}
43598A:  SUB             SP, SP, #0x48
43598C:  MOV             R4, R0
43598E:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x435996)
435992:  ADD             R0, PC; __stack_chk_guard_ptr
435994:  LDR             R0, [R0]; __stack_chk_guard
435996:  LDR             R0, [R0]; this
435998:  STR             R0, [SP,#0x78+var_34]
43599A:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
43599E:  LDR.W           R0, =(_ZN6CStats21LastMissionPassedNameE_ptr - 0x4359B2)
4359A2:  MOVW            R3, #:lower16:(loc_455440+1)
4359A6:  LDR.W           R1, =(TheText_ptr - 0x4359B6)
4359AA:  MOVT            R3, #:upper16:(loc_455440+1)
4359AE:  ADD             R0, PC; _ZN6CStats21LastMissionPassedNameE_ptr
4359B0:  STR             R3, [SP,#0x78+var_3C]
4359B2:  ADD             R1, PC; TheText_ptr
4359B4:  LDR             R2, [R0]; CStats::LastMissionPassedName ...
4359B6:  LDR             R0, [R1]; TheText ; this
4359B8:  MOV             R1, #0x445F4F4E
4359C0:  LDRB            R3, [R2]; CStats::LastMissionPassedName
4359C2:  STR             R1, [SP,#0x78+var_40]
4359C4:  ADR.W           R1, aItbeg; "ITBEG"
4359C8:  CMP             R3, #0
4359CA:  IT NE
4359CC:  MOVNE           R1, R2; CKeyGen *
4359CE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4359D2:  MOV             R8, R0
4359D4:  ADR.W           R0, aStatsHtml; "stats.html"
4359D8:  ADR.W           R1, aW; "w"
4359DC:  BLX             fopen
4359E0:  MOV             R5, R0
4359E2:  CMP             R5, #0
4359E4:  BEQ.W           loc_435DCA
4359E8:  LDR.W           R0, =(aTitleGrandThef - 0x4359F6); "<title>Grand Theft Auto San Andreas Sta"...
4359EC:  MOVS            R1, #0x32 ; '2'; size
4359EE:  MOVS            R2, #1; n
4359F0:  MOV             R3, R5; s
4359F2:  ADD             R0, PC; "<title>Grand Theft Auto San Andreas Sta"...
4359F4:  STR             R4, [SP,#0x78+var_74]
4359F6:  BLX             fwrite
4359FA:  LDR.W           R0, =(aBodyBgcolor000 - 0x435A08); "<body bgcolor=\"#000000\" leftmargin=\""...
4359FE:  MOVS            R1, #0x5B ; '['; size
435A00:  MOVS            R2, #1; n
435A02:  MOV             R3, R5; s
435A04:  ADD             R0, PC; "<body bgcolor=\"#000000\" leftmargin=\""...
435A06:  BLX             fwrite
435A0A:  LDR.W           R0, =(aTableWidth560A - 0x435A18); "<table width=\"560\" align=\"center\" b"...
435A0E:  MOVS            R1, #0x4E ; 'N'; size
435A10:  MOVS            R2, #1; n
435A12:  MOV             R3, R5; s
435A14:  ADD             R0, PC; "<table width=\"560\" align=\"center\" b"...
435A16:  BLX             fwrite
435A1A:  LDR.W           R0, =(aTrAlignCenterV - 0x435A28); "<tr align=\"center\" valign=\"top\"> \n"
435A1E:  MOVS            R1, #0x22 ; '"'; size
435A20:  MOVS            R2, #1; n
435A22:  MOV             R3, R5; s
435A24:  ADD             R0, PC; "<tr align=\"center\" valign=\"top\"> \n"
435A26:  BLX             fwrite
435A2A:  LDR.W           R0, =(aTdHeight59Cols - 0x435A38); "<td height=\"59\" colspan=\"2\" bgcolor"...
435A2E:  MOVS            R1, #0x6F ; 'o'; size
435A30:  MOVS            R2, #1; n
435A32:  MOV             R3, R5; s
435A34:  ADD             R0, PC; "<td height=\"59\" colspan=\"2\" bgcolor"...
435A36:  BLX             fwrite
435A3A:  LDR.W           R0, =(aHelveticaSansS - 0x435A48); "Helvetica, sans-serif\">---------------"...
435A3E:  MOVS            R1, #0x68 ; 'h'; size
435A40:  MOVS            R2, #1; n
435A42:  MOV             R3, R5; s
435A44:  ADD             R0, PC; "Helvetica, sans-serif\">---------------"...
435A46:  BLX             fwrite
435A4A:  LDR.W           R0, =(aSize5FaceArial - 0x435A58); "size=\"5\" face=\"Arial, Helvetica, san"...
435A4E:  MOVS            R1, #0x32 ; '2'; size
435A50:  MOVS            R2, #1; n
435A52:  MOV             R3, R5; s
435A54:  ADD             R0, PC; "size=\"5\" face=\"Arial, Helvetica, san"...
435A56:  BLX             fwrite
435A5A:  LDR.W           R0, =(aStrongFontColo - 0x435A68); "<strong><font color=\"#FFFFFF\">GRAND T"...
435A5E:  MOVS            R1, #0x3B ; ';'; size
435A60:  MOVS            R2, #1; n
435A62:  MOV             R3, R5; s
435A64:  ADD             R0, PC; "<strong><font color=\"#FFFFFF\">GRAND T"...
435A66:  BLX             fwrite
435A6A:  LDR.W           R0, =(RwEngineInstance_ptr - 0x435A72)
435A6E:  ADD             R0, PC; RwEngineInstance_ptr
435A70:  LDR.W           R9, [R0]; RwEngineInstance
435A74:  LDR.W           R0, =(TheText_ptr - 0x435A7C)
435A78:  ADD             R0, PC; TheText_ptr
435A7A:  LDR.W           R1, [R9]
435A7E:  LDR.W           R10, [R0]; TheText
435A82:  LDR.W           R4, [R1,#0x11C]
435A86:  ADR.W           R1, aFehSta_0; "FEH_STA"
435A8A:  MOV             R0, R10; this
435A8C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
435A90:  MOVS            R1, #0; unsigned __int8
435A92:  MOVS            R6, #0
435A94:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
435A98:  BLX             R4
435A9A:  LDR.W           R1, =(aSFontStrongBrF - 0x435AA6); "%s</font></strong><br><font\n"
435A9E:  MOV             R2, R0
435AA0:  MOV             R0, R5; stream
435AA2:  ADD             R1, PC; "%s</font></strong><br><font\n"
435AA4:  BLX             fprintf
435AA8:  LDR.W           R0, =(aColorFfffff - 0x435AB6); "color=\"#FFFFFF\">---------------------"...
435AAC:  MOVS            R1, #0x73 ; 's'; size
435AAE:  MOVS            R2, #1; n
435AB0:  MOV             R3, R5; s
435AB2:  ADD             R0, PC; "color=\"#FFFFFF\">---------------------"...
435AB4:  BLX             fwrite
435AB8:  LDR.W           R0, =(aTrAlignCenterV_0 - 0x435AC6); "<tr align=\"center\" valign=\"top\" bgc"...
435ABC:  MOVS            R1, #0x66 ; 'f'; size
435ABE:  MOVS            R2, #1; n
435AC0:  MOV             R3, R5; s
435AC2:  ADD             R0, PC; "<tr align=\"center\" valign=\"top\" bgc"...
435AC4:  BLX             fwrite
435AC8:  LDR.W           R0, =(aTdHeight10Cols+0x28 - 0x435AD6); "<tr align=\"center\" valign=\"top\" bgc"...
435ACC:  MOVS            R1, #0x34 ; '4'; size
435ACE:  MOVS            R2, #1; n
435AD0:  MOV             R3, R5; s
435AD2:  ADD             R0, PC; ptr
435AD4:  BLX             fwrite
435AD8:  ADR.W           R1, aFesDat; "FES_DAT"
435ADC:  MOV             R0, R10; this
435ADE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
435AE2:  MOVS            R1, #0; unsigned __int8
435AE4:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
435AE8:  LDR.W           R1, =(aTdHeight40Cols - 0x435AF4); "<td height=\"40\" colspan=\"2\"> <p><fo"...
435AEC:  MOV             R2, R0
435AEE:  MOV             R0, R5; stream
435AF0:  ADD             R1, PC; "<td height=\"40\" colspan=\"2\"> <p><fo"...
435AF2:  BLX             fprintf
435AF6:  ADR.W           R1, aFesCmi; "FES_CMI"
435AFA:  MOV             R0, R10; this
435AFC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
435B00:  MOVS            R1, #0; unsigned __int8
435B02:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
435B06:  ADR.W           R1, aSFontBrSStrong; "%s</font><br>        %s: </strong>"
435B0A:  ADD             R2, SP, #0x78+var_40
435B0C:  MOV             R3, R0
435B0E:  MOV             R0, R5; stream
435B10:  BLX             fprintf
435B14:  LDR.W           R0, [R9]
435B18:  MOVS            R1, #0; unsigned __int8
435B1A:  LDR.W           R4, [R0,#0x11C]
435B1E:  MOV             R0, R8; unsigned __int16 *
435B20:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
435B24:  BLX             R4
435B26:  ADR.W           R1, aSStrongBrStron; "%s<strong><br></strong> </font></p></td"...
435B2A:  MOV             R2, R0
435B2C:  MOV             R0, R5; stream
435B2E:  BLX             fprintf
435B32:  LDR.W           R0, =(aTrAlignCenterV_2 - 0x435B40); "<tr align=\"center\" valign=\"top\" bgc"...
435B36:  MOVS            R1, #0x8E; size
435B38:  MOVS            R2, #1; n
435B3A:  MOV             R3, R5; s
435B3C:  ADD             R0, PC; "<tr align=\"center\" valign=\"top\" bgc"...
435B3E:  BLX             fwrite
435B42:  LDR.W           R0, =(aTdHeight10Cols - 0x435B50); "<td height=\"10\" colspan=\"2\"></td> <"...
435B46:  MOVS            R1, #0x5C ; '\'; size
435B48:  MOVS            R2, #1; n
435B4A:  MOV             R3, R5; s
435B4C:  ADD             R0, PC; "<td height=\"10\" colspan=\"2\"></td> <"...
435B4E:  BLX             fwrite
435B52:  ADR.W           R1, aCrimra; "CRIMRA"
435B56:  MOV             R0, R10; this
435B58:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
435B5C:  MOVS            R1, #0; unsigned __int8
435B5E:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
435B62:  LDR.W           R1, =(aTdHeight20Cols - 0x435B6E); "<td height=\"20\" colspan=\"2\"><font c"...
435B66:  MOV             R2, R0
435B68:  MOV             R0, R5; stream
435B6A:  ADD             R1, PC; "<td height=\"20\" colspan=\"2\"><font c"...
435B6C:  BLX             fprintf
435B70:  BLX             j__ZN6CStats24FindCriminalRatingStringEv; CStats::FindCriminalRatingString(void)
435B74:  MOV             R1, R0; unsigned __int16 *
435B76:  LDR.W           R0, =(gGxtString_ptr - 0x435B7E)
435B7A:  ADD             R0, PC; gGxtString_ptr
435B7C:  LDR             R4, [R0]; gGxtString
435B7E:  MOV             R0, R4; unsigned __int16 *
435B80:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
435B84:  MOV             R0, R4; unsigned __int16 *
435B86:  MOVS            R1, #0; unsigned __int8
435B88:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
435B8C:  MOV             R4, R0
435B8E:  BLX             j__ZN6CStats24FindCriminalRatingNumberEv; CStats::FindCriminalRatingNumber(void)
435B92:  LDR             R1, =(aSDFontTdTrTrAl - 0x435B9E); "%s (%d)</font></td>  </tr>  <tr align="...
435B94:  MOV             R3, R0
435B96:  MOV             R0, R5; stream
435B98:  MOV             R2, R4
435B9A:  ADD             R1, PC; "%s (%d)</font></td>  </tr>  <tr align="...
435B9C:  BLX             fprintf
435BA0:  LDR.W           R0, =(gGxtString_ptr - 0x435BB0)
435BA4:  MOV.W           R10, #0xBA
435BA8:  VLDR            S16, =1000.0
435BAC:  ADD             R0, PC; gGxtString_ptr
435BAE:  VLDR            S18, =100.0
435BB2:  LDR             R0, [R0]; gGxtString
435BB4:  STR             R0, [SP,#0x78+var_44]
435BB6:  LDR.W           R0, =(gGxtString2_ptr - 0x435BBE)
435BBA:  ADD             R0, PC; gGxtString2_ptr
435BBC:  LDR             R0, [R0]; gGxtString2
435BBE:  STR             R0, [SP,#0x78+var_48]
435BC0:  LDR.W           R0, =(_ZN6CStats21m_ThisStatIsABarChartE_ptr - 0x435BC8)
435BC4:  ADD             R0, PC; _ZN6CStats21m_ThisStatIsABarChartE_ptr
435BC6:  LDR             R0, [R0]; CStats::m_ThisStatIsABarChart ...
435BC8:  STR             R0, [SP,#0x78+var_4C]
435BCA:  LDR             R0, =(TheText_ptr - 0x435BD0)
435BCC:  ADD             R0, PC; TheText_ptr
435BCE:  LDR             R0, [R0]; TheText
435BD0:  STR             R0, [SP,#0x78+var_54]
435BD2:  LDR             R0, =(TheText_ptr - 0x435BD8)
435BD4:  ADD             R0, PC; TheText_ptr
435BD6:  LDR             R0, [R0]; TheText
435BD8:  STR             R0, [SP,#0x78+var_58]
435BDA:  LDR             R0, =(TheText_ptr - 0x435BE0)
435BDC:  ADD             R0, PC; TheText_ptr
435BDE:  LDR             R0, [R0]; TheText
435BE0:  STR             R0, [SP,#0x78+var_5C]
435BE2:  LDR             R0, =(TheText_ptr - 0x435BE8)
435BE4:  ADD             R0, PC; TheText_ptr
435BE6:  LDR             R0, [R0]; TheText
435BE8:  STR             R0, [SP,#0x78+var_60]
435BEA:  LDR             R0, =(TheText_ptr - 0x435BF0)
435BEC:  ADD             R0, PC; TheText_ptr
435BEE:  LDR             R0, [R0]; TheText
435BF0:  STR             R0, [SP,#0x78+var_64]
435BF2:  LDR             R0, =(TheText_ptr - 0x435BF8)
435BF4:  ADD             R0, PC; TheText_ptr
435BF6:  LDR             R0, [R0]; TheText
435BF8:  STR             R0, [SP,#0x78+var_68]
435BFA:  LDR             R0, =(TheText_ptr - 0x435C00)
435BFC:  ADD             R0, PC; TheText_ptr
435BFE:  LDR             R0, [R0]; TheText
435C00:  STR             R0, [SP,#0x78+var_6C]
435C02:  LDR             R0, =(TheText_ptr - 0x435C08)
435C04:  ADD             R0, PC; TheText_ptr
435C06:  LDR             R0, [R0]; TheText
435C08:  STR             R0, [SP,#0x78+var_70]
435C0A:  MOVW            R0, #:lower16:(elf_hash_chain+0x8537)
435C0E:  UXTB.W          R11, R6
435C12:  MOVT            R0, #:upper16:(elf_hash_chain+0x8537); this
435C16:  MOV             R1, R11; int
435C18:  STR             R6, [SP,#0x78+var_50]
435C1A:  BLX             j__ZN6CStats17ConstructStatLineEih; CStats::ConstructStatLine(int,uchar)
435C1E:  MOV             R4, R0
435C20:  LDR             R0, =(aFontStrongDivT - 0x435C2A); "</font></strong></div></td> </tr> <tr a"...
435C22:  MOVS            R1, #0x7C ; '|'; size
435C24:  MOVS            R2, #1; n
435C26:  ADD             R0, PC; "</font></strong></div></td> </tr> <tr a"...
435C28:  MOV             R3, R5; s
435C2A:  BLX             fwrite
435C2E:  LDR             R0, =(aTrAlignLeftVal - 0x435C3A); "<tr align=\"left\" valign=\"top\"><td h"...
435C30:  MOVS            R1, #0x8C; size
435C32:  MOVS            R2, #1; n
435C34:  MOV             R3, R5; s
435C36:  ADD             R0, PC; "<tr align=\"left\" valign=\"top\"><td h"...
435C38:  BLX             fwrite
435C3C:  CMP.W           R11, #7; switch 8 cases
435C40:  BHI             def_435C42; jumptable 00435C42 default case
435C42:  TBB.W           [PC,R11]; switch jump
435C46:  DCB 4; jump table for switch statement
435C47:  DCB 8
435C48:  DCB 0xC
435C49:  DCB 0x10
435C4A:  DCB 0x13
435C4B:  DCB 0x16
435C4C:  DCB 0x19
435C4D:  DCB 0x1C
435C4E:  LDR             R1, =(aFesPla_0 - 0x435C56); jumptable 00435C42 case 0
435C50:  LDR             R0, [SP,#0x78+var_54]
435C52:  ADD             R1, PC; "FES_PLA"
435C54:  B               loc_435C82
435C56:  LDR             R1, =(aFesMon_0 - 0x435C5E); jumptable 00435C42 case 1
435C58:  LDR             R0, [SP,#0x78+var_58]
435C5A:  ADD             R1, PC; "FES_MON"
435C5C:  B               loc_435C82
435C5E:  LDR             R1, =(aFesWea_0 - 0x435C66); jumptable 00435C42 case 2
435C60:  LDR             R0, [SP,#0x78+var_5C]
435C62:  ADD             R1, PC; "FES_WEA"
435C64:  B               loc_435C82
435C66:  LDR             R0, [SP,#0x78+var_60]; jumptable 00435C42 case 3
435C68:  ADR             R1, aFesGan_0; "FES_GAN"
435C6A:  B               loc_435C82
435C6C:  LDR             R0, [SP,#0x78+var_64]; jumptable 00435C42 case 4
435C6E:  ADR             R1, aFesCri_0; "FES_CRI"
435C70:  B               loc_435C82
435C72:  LDR             R0, [SP,#0x78+var_68]; jumptable 00435C42 case 5
435C74:  ADR             R1, aFesAch_0; "FES_ACH"
435C76:  B               loc_435C82
435C78:  LDR             R0, [SP,#0x78+var_6C]; jumptable 00435C42 case 6
435C7A:  ADR             R1, aFesMis_0; "FES_MIS"
435C7C:  B               loc_435C82
435C7E:  LDR             R0, [SP,#0x78+var_70]; jumptable 00435C42 case 7
435C80:  ADR             R1, aFesMsc_0; "FES_MSC"
435C82:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
435C86:  MOVS            R1, #0; unsigned __int8
435C88:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
435C8C:  MOV             R1, R5; stream
435C8E:  BLX             fputs
435C92:  LDR             R0, =(aStrongFontTdTd - 0x435C9E); jumptable 00435C42 default case
435C94:  MOVS            R1, #0x89; size
435C96:  MOVS            R2, #1; n
435C98:  MOV             R3, R5; s
435C9A:  ADD             R0, PC; "</strong></font></td> <td width=\"500\""...
435C9C:  BLX             fwrite
435CA0:  CMP             R4, #1
435CA2:  BLT             loc_435D62
435CA4:  MOV.W           R8, #0
435CA8:  MOV             R0, R8; this
435CAA:  MOV             R1, R11; int
435CAC:  BLX             j__ZN6CStats17ConstructStatLineEih; CStats::ConstructStatLine(int,uchar)
435CB0:  LDR             R0, [SP,#0x78+var_44]; unsigned __int16 *
435CB2:  MOVS            R1, #0; unsigned __int8
435CB4:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
435CB8:  MOV             R6, R0
435CBA:  LDRB            R0, [R6]
435CBC:  CBZ             R0, loc_435CCC
435CBE:  LDR             R0, =(aFontStrongDivT_0 - 0x435CCA); "</font></strong></div></td> </tr> <tr a"...
435CC0:  MOVS            R1, #0x7C ; '|'; size
435CC2:  MOVS            R2, #1; n
435CC4:  MOV             R3, R5; s
435CC6:  ADD             R0, PC; "</font></strong></div></td> </tr> <tr a"...
435CC8:  BLX             fwrite
435CCC:  LDR             R0, =(aTrAlignLeftVal_0 - 0x435CD8); "<tr align=\"left\" valign=\"top\"><td w"...
435CCE:  MOVS            R1, #0x98; size
435CD0:  MOVS            R2, #1; n
435CD2:  MOV             R3, R5; s
435CD4:  ADD             R0, PC; "<tr align=\"left\" valign=\"top\"><td w"...
435CD6:  BLX             fwrite
435CDA:  LDRB            R0, [R6]
435CDC:  CBZ             R0, loc_435CE8
435CDE:  MOV             R0, R6; s
435CE0:  MOV             R1, R5; stream
435CE2:  BLX             fputs
435CE6:  B               loc_435CF0
435CE8:  MOVS            R0, #0x20 ; ' '; c
435CEA:  MOV             R1, R5; stream
435CEC:  BLX             fputc
435CF0:  LDR             R0, =(aStrongFontTdTd_0 - 0x435CFC); "</strong></font></td> <td width=\"500\""...
435CF2:  MOVS            R1, #0x89; size
435CF4:  MOVS            R2, #1; n
435CF6:  MOV             R3, R5; s
435CF8:  ADD             R0, PC; "</strong></font></td> <td width=\"500\""...
435CFA:  BLX             fwrite
435CFE:  LDR             R0, [SP,#0x78+var_48]; unsigned __int16 *
435D00:  MOVS            R1, #0; unsigned __int8
435D02:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
435D06:  MOV             R9, R0
435D08:  LDR             R0, [SP,#0x78+var_4C]
435D0A:  LDRH            R0, [R0]
435D0C:  CBZ             R0, loc_435D3A
435D0E:  MOV             R0, R9; char *
435D10:  BLX             atoi
435D14:  VMOV            S0, R0
435D18:  LDR             R1, =(a00f - 0x435D24); "%0.0f%%"
435D1A:  MOV             R0, R9
435D1C:  VCVT.F32.S32    S0, S0
435D20:  ADD             R1, PC; "%0.0f%%"
435D22:  VDIV.F32        S0, S0, S16
435D26:  VMUL.F32        S0, S0, S18
435D2A:  VMIN.F32        D0, D0, D9
435D2E:  VCVT.F64.F32    D16, S0
435D32:  VMOV            R2, R3, D16
435D36:  BL              sub_5E6BC0
435D3A:  MOV             R0, R9
435D3C:  B               loc_435D40
435D3E:  ADDS            R0, #1
435D40:  LDRB            R1, [R0]
435D42:  CMP             R1, #0x7C ; '|'
435D44:  BEQ             loc_435D4C
435D46:  CMP             R1, #0
435D48:  BNE             loc_435D3E
435D4A:  B               loc_435D52
435D4C:  STRB.W          R10, [R0]
435D50:  B               loc_435D3E
435D52:  MOV             R0, R9; s
435D54:  MOV             R1, R5; stream
435D56:  BLX             fputs
435D5A:  ADD.W           R8, R8, #1
435D5E:  CMP             R8, R4
435D60:  BNE             loc_435CA8
435D62:  LDR             R6, [SP,#0x78+var_50]
435D64:  ADDS            R6, #1
435D66:  UXTB            R0, R6
435D68:  CMP             R0, #8
435D6A:  BCC.W           loc_435C0A
435D6E:  LDR             R0, =(aFontStrongDivT_0 - 0x435D7A); "</font></strong></div></td> </tr> <tr a"...
435D70:  MOVS            R1, #0x7C ; '|'; size
435D72:  MOVS            R2, #1; n
435D74:  MOV             R3, R5; s
435D76:  ADD             R0, PC; "</font></strong></div></td> </tr> <tr a"...
435D78:  BLX             fwrite
435D7C:  LDR             R0, =(aTableBrTableWi - 0x435D88); "</table><br><table width=\"560\" border"...
435D7E:  MOVS            R1, #0x8F; size
435D80:  MOVS            R2, #1; n
435D82:  MOV             R3, R5; s
435D84:  ADD             R0, PC; "</table><br><table width=\"560\" border"...
435D86:  BLX             fwrite
435D8A:  LDR             R0, =(aTdFontColorF00 - 0x435D96); "<td><font color=\"#F0000C\" size=\"2\" "...
435D8C:  MOVS            R1, #0xA6; size
435D8E:  MOVS            R2, #1; n
435D90:  MOV             R3, R5; s
435D92:  ADD             R0, PC; "<td><font color=\"#F0000C\" size=\"2\" "...
435D94:  BLX             fwrite
435D98:  LDR             R0, =(aTdFontColorF00_0 - 0x435DA4); "<td><font color=\"#F0000C\" size=\"2\" "...
435D9A:  MOVS            R1, #0x90; size
435D9C:  MOVS            R2, #1; n
435D9E:  MOV             R3, R5; s
435DA0:  ADD             R0, PC; "<td><font color=\"#F0000C\" size=\"2\" "...
435DA2:  BLX             fwrite
435DA6:  LDR             R0, =(aTdFontColorF00_1 - 0x435DB2); "<td><font color=\"#F0000C\" size=\"2\" "...
435DA8:  MOVS            R1, #0x9B; size
435DAA:  MOVS            R2, #1; n
435DAC:  MOV             R3, R5; s
435DAE:  ADD             R0, PC; "<td><font color=\"#F0000C\" size=\"2\" "...
435DB0:  BLX             fwrite
435DB4:  LDR             R0, =(aTableBody - 0x435DC0); "</table>\n</body>\n"
435DB6:  MOVS            R1, #0x11; size
435DB8:  MOVS            R2, #1; n
435DBA:  MOV             R3, R5; s
435DBC:  ADD             R0, PC; "</table>\n</body>\n"
435DBE:  BLX             fwrite
435DC2:  MOV             R0, R5; stream
435DC4:  BLX             fclose
435DC8:  LDR             R4, [SP,#0x78+var_74]
435DCA:  LDR             R0, =(byte_61CD7E - 0x435DD0)
435DCC:  ADD             R0, PC; byte_61CD7E ; this
435DCE:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
435DD2:  MOVW            R0, #0x1AB0
435DD6:  MOV.W           R1, #0x12C
435DDA:  STR             R1, [R4,R0]
435DDC:  MOVW            R0, #0x1ADC
435DE0:  MOVS            R1, #6
435DE2:  STR             R1, [R4,R0]
435DE4:  LDR             R0, =(__stack_chk_guard_ptr - 0x435DEC)
435DE6:  LDR             R1, [SP,#0x78+var_34]
435DE8:  ADD             R0, PC; __stack_chk_guard_ptr
435DEA:  LDR             R0, [R0]; __stack_chk_guard
435DEC:  LDR             R0, [R0]
435DEE:  SUBS            R0, R0, R1
435DF0:  ITTTT EQ
435DF2:  ADDEQ           SP, SP, #0x48 ; 'H'
435DF4:  VPOPEQ          {D8-D9}
435DF8:  ADDEQ           SP, SP, #4
435DFA:  POPEQ.W         {R8-R11}
435DFE:  IT EQ
435E00:  POPEQ           {R4-R7,PC}
435E02:  BLX             __stack_chk_fail
