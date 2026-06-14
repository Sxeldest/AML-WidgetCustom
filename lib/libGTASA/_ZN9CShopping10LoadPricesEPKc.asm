; =========================================================
; Game Engine Function: _ZN9CShopping10LoadPricesEPKc
; Address            : 0x35FC7C - 0x35FFA6
; =========================================================

35FC7C:  PUSH            {R4-R7,LR}
35FC7E:  ADD             R7, SP, #0xC
35FC80:  PUSH.W          {R8-R11}
35FC84:  SUB             SP, SP, #0x4C
35FC86:  MOV             R5, R0
35FC88:  BLX             j__ZN9CShopping23GetPriceSectionFromNameEPKc; CShopping::GetPriceSectionFromName(char const*)
35FC8C:  MOV             R4, R0
35FC8E:  LDR             R0, =(_ZN9CShopping21ms_priceSectionLoadedE_ptr - 0x35FC94)
35FC90:  ADD             R0, PC; _ZN9CShopping21ms_priceSectionLoadedE_ptr
35FC92:  LDR             R0, [R0]; CShopping::ms_priceSectionLoaded ...
35FC94:  LDR             R0, [R0]; CShopping::ms_priceSectionLoaded
35FC96:  CMP             R4, R0
35FC98:  BEQ.W           loc_35FF9E
35FC9C:  CBZ             R0, loc_35FCC4
35FC9E:  LDR             R1, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35FCA4)
35FCA0:  ADD             R1, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35FCA2:  LDR             R1, [R1]; char *
35FCA4:  LDR.W           R0, [R1,R0,LSL#2]; this
35FCA8:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
35FCAC:  ADDS            R1, R0, #1
35FCAE:  ITTT NE
35FCB0:  MOVWNE          R1, #0x63E7; int
35FCB4:  ADDNE           R0, R1; this
35FCB6:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
35FCBA:  LDR             R0, =(_ZN9CShopping21ms_priceSectionLoadedE_ptr - 0x35FCC2)
35FCBC:  MOVS            R1, #0
35FCBE:  ADD             R0, PC; _ZN9CShopping21ms_priceSectionLoadedE_ptr
35FCC0:  LDR             R0, [R0]; CShopping::ms_priceSectionLoaded ...
35FCC2:  STR             R1, [R0]; CShopping::ms_priceSectionLoaded
35FCC4:  LDR             R0, =(_ZN9CShopping12ms_numPricesE_ptr - 0x35FCD0)
35FCC6:  MOVS            R3, #0
35FCC8:  LDR             R1, =(_ZN9CShopping21ms_priceSectionLoadedE_ptr - 0x35FCD2)
35FCCA:  LDR             R2, =(_ZN9CShopping17ms_numItemsInShopE_ptr - 0x35FCD4)
35FCCC:  ADD             R0, PC; _ZN9CShopping12ms_numPricesE_ptr
35FCCE:  ADD             R1, PC; _ZN9CShopping21ms_priceSectionLoadedE_ptr
35FCD0:  ADD             R2, PC; _ZN9CShopping17ms_numItemsInShopE_ptr
35FCD2:  LDR             R0, [R0]; this
35FCD4:  LDR             R1, [R1]; CShopping::ms_priceSectionLoaded ...
35FCD6:  LDR             R2, [R2]; CShopping::ms_numItemsInShop ...
35FCD8:  STR             R3, [R0]; CShopping::ms_numPrices
35FCDA:  STR             R4, [R1]; CShopping::ms_priceSectionLoaded
35FCDC:  STR             R3, [R2]; CShopping::ms_numItemsInShop
35FCDE:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
35FCE2:  LDR             R0, =(aDataShoppingDa - 0x35FCEA); "data\\shopping.dat"
35FCE4:  ADR             R1, dword_35FFC4; char *
35FCE6:  ADD             R0, PC; "data\\shopping.dat"
35FCE8:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
35FCEC:  LDR             R1, =(aPrices - 0x35FCF4); "prices"
35FCEE:  MOV             R9, R0
35FCF0:  ADD             R1, PC; "prices"
35FCF2:  BLX             j__ZN9CShopping11FindSectionEjPKc; CShopping::FindSection(uint,char const*)
35FCF6:  CMP             R0, #1
35FCF8:  BNE             loc_35FD02
35FCFA:  MOV             R0, R9; this
35FCFC:  MOV             R1, R5; unsigned int
35FCFE:  BLX             j__ZN9CShopping11FindSectionEjPKc; CShopping::FindSection(uint,char const*)
35FD02:  MOV             R0, R9; this
35FD04:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
35FD08:  CMP             R0, #0
35FD0A:  BEQ.W           loc_35FF68
35FD0E:  LDR             R1, =(_ZN9CShopping21ms_priceSectionLoadedE_ptr - 0x35FD18)
35FD10:  ADR             R5, dword_35FFCC
35FD12:  LDR             R2, =(_ZN9CShopping9ms_pricesE_ptr - 0x35FD1A)
35FD14:  ADD             R1, PC; _ZN9CShopping21ms_priceSectionLoadedE_ptr
35FD16:  ADD             R2, PC; _ZN9CShopping9ms_pricesE_ptr
35FD18:  LDR             R1, [R1]; CShopping::ms_priceSectionLoaded ...
35FD1A:  STR             R1, [SP,#0x68+var_24]
35FD1C:  LDR             R1, =(_ZN9CShopping12ms_numPricesE_ptr - 0x35FD22)
35FD1E:  ADD             R1, PC; _ZN9CShopping12ms_numPricesE_ptr
35FD20:  LDR             R1, [R1]; CShopping::ms_numPrices ...
35FD22:  STR             R1, [SP,#0x68+var_28]
35FD24:  LDR             R1, =(_ZN9CShopping9ms_pricesE_ptr - 0x35FD2A)
35FD26:  ADD             R1, PC; _ZN9CShopping9ms_pricesE_ptr
35FD28:  LDR.W           R8, [R1]; CShopping::ms_prices ...
35FD2C:  LDR             R1, =(_ZN9CShopping21ms_priceSectionLoadedE_ptr - 0x35FD36)
35FD2E:  STR.W           R8, [SP,#0x68+var_5C]
35FD32:  ADD             R1, PC; _ZN9CShopping21ms_priceSectionLoadedE_ptr
35FD34:  LDR             R1, [R1]; CShopping::ms_priceSectionLoaded ...
35FD36:  STR             R1, [SP,#0x68+var_2C]
35FD38:  LDR             R1, =(_ZN9CShopping12ms_numPricesE_ptr - 0x35FD3E)
35FD3A:  ADD             R1, PC; _ZN9CShopping12ms_numPricesE_ptr
35FD3C:  LDR             R1, [R1]; CShopping::ms_numPrices ...
35FD3E:  STR             R1, [SP,#0x68+var_48]
35FD40:  LDR             R1, =(_ZN9CShopping9ms_pricesE_ptr - 0x35FD46)
35FD42:  ADD             R1, PC; _ZN9CShopping9ms_pricesE_ptr
35FD44:  LDR             R1, [R1]; CShopping::ms_prices ...
35FD46:  STR             R1, [SP,#0x68+var_4C]
35FD48:  LDR             R1, =(_ZN9CShopping12ms_numPricesE_ptr - 0x35FD4E)
35FD4A:  ADD             R1, PC; _ZN9CShopping12ms_numPricesE_ptr
35FD4C:  LDR             R1, [R1]; CShopping::ms_numPrices ...
35FD4E:  STR             R1, [SP,#0x68+var_30]
35FD50:  LDR             R1, =(_ZN9CShopping20ms_numPriceModifiersE_ptr - 0x35FD56)
35FD52:  ADD             R1, PC; _ZN9CShopping20ms_numPriceModifiersE_ptr
35FD54:  LDR             R1, [R1]; CShopping::ms_numPriceModifiers ...
35FD56:  STR             R1, [SP,#0x68+var_34]
35FD58:  LDR             R1, [R2]; CShopping::ms_prices ...
35FD5A:  STR             R1, [SP,#0x68+var_38]
35FD5C:  LDR             R1, =(_ZN9CShopping9ms_pricesE_ptr - 0x35FD64)
35FD5E:  LDR             R2, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x35FD66)
35FD60:  ADD             R1, PC; _ZN9CShopping9ms_pricesE_ptr
35FD62:  ADD             R2, PC; _ZN9CShopping17ms_priceModifiersE_ptr
35FD64:  LDR             R1, [R1]; CShopping::ms_prices ...
35FD66:  STR             R1, [SP,#0x68+var_40]
35FD68:  LDR             R1, [R2]; CShopping::ms_priceModifiers ...
35FD6A:  STR             R1, [SP,#0x68+var_44]
35FD6C:  LDR             R1, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x35FD72)
35FD6E:  ADD             R1, PC; _ZN9CShopping17ms_priceModifiersE_ptr
35FD70:  LDR             R1, [R1]; CShopping::ms_priceModifiers ...
35FD72:  STR             R1, [SP,#0x68+var_50]
35FD74:  LDR             R1, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x35FD7A)
35FD76:  ADD             R1, PC; _ZN9CShopping17ms_priceModifiersE_ptr
35FD78:  LDR.W           R10, [R1]; CShopping::ms_priceModifiers ...
35FD7C:  LDR             R1, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x35FD82)
35FD7E:  ADD             R1, PC; _ZN9CShopping17ms_priceModifiersE_ptr
35FD80:  LDR.W           R11, [R1]; CShopping::ms_priceModifiers ...
35FD84:  LDR             R1, =(_ZN9CShopping12ms_numPricesE_ptr - 0x35FD8A)
35FD86:  ADD             R1, PC; _ZN9CShopping12ms_numPricesE_ptr
35FD88:  LDR             R1, [R1]; CShopping::ms_numPrices ...
35FD8A:  STR             R1, [SP,#0x68+var_3C]
35FD8C:  LDR             R1, =(_ZN9CShopping12ms_numPricesE_ptr - 0x35FD92)
35FD8E:  ADD             R1, PC; _ZN9CShopping12ms_numPricesE_ptr
35FD90:  LDR             R1, [R1]; CShopping::ms_numPrices ...
35FD92:  STR             R1, [SP,#0x68+var_54]
35FD94:  LDR             R1, =(_ZN9CShopping9ms_pricesE_ptr - 0x35FD9A)
35FD96:  ADD             R1, PC; _ZN9CShopping9ms_pricesE_ptr
35FD98:  LDR             R1, [R1]; CShopping::ms_prices ...
35FD9A:  STR             R1, [SP,#0x68+var_58]
35FD9C:  LDR             R1, =(_ZN9CShopping12ms_numPricesE_ptr - 0x35FDA2)
35FD9E:  ADD             R1, PC; _ZN9CShopping12ms_numPricesE_ptr
35FDA0:  LDR             R1, [R1]; CShopping::ms_numPrices ...
35FDA2:  STR             R1, [SP,#0x68+var_60]
35FDA4:  LDR             R1, =(_ZN9CShopping9ms_pricesE_ptr - 0x35FDAA)
35FDA6:  ADD             R1, PC; _ZN9CShopping9ms_pricesE_ptr
35FDA8:  LDR             R1, [R1]; CShopping::ms_prices ...
35FDAA:  STR             R1, [SP,#0x68+var_64]
35FDAC:  LDRB            R1, [R0]
35FDAE:  CMP             R1, #0
35FDB0:  IT NE
35FDB2:  CMPNE           R1, #0x23 ; '#'
35FDB4:  BEQ.W           loc_35FF5C
35FDB8:  CMP             R1, #0x65 ; 'e'
35FDBA:  ITT EQ
35FDBC:  LDRBEQ          R1, [R0,#1]
35FDBE:  CMPEQ           R1, #0x6E ; 'n'
35FDC0:  BNE             loc_35FDCA
35FDC2:  LDRB            R1, [R0,#2]
35FDC4:  CMP             R1, #0x64 ; 'd'
35FDC6:  BEQ.W           loc_35FF68
35FDCA:  MOV             R1, R5; char *
35FDCC:  BLX             strtok
35FDD0:  LDR             R1, [SP,#0x68+var_24]
35FDD2:  LDR             R2, [R1]; int *
35FDD4:  SUBS            R1, R2, #4; char *
35FDD6:  CMP             R1, #3
35FDD8:  BCS             loc_35FDE0
35FDDA:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
35FDDE:  B               loc_35FDEC
35FDE0:  CMP             R2, #2
35FDE2:  BEQ             loc_35FDF0
35FDE4:  CMP             R2, #9
35FDE6:  BNE             loc_35FE9C
35FDE8:  BLX             j__ZN11CWeaponInfo14FindWeaponTypeEPKc; CWeaponInfo::FindWeaponType(char const*)
35FDEC:  MOV             R1, R0
35FDEE:  STR             R1, [SP,#0x68+var_20]
35FDF0:  LDR             R4, [SP,#0x68+var_28]
35FDF2:  LDR             R0, [R4]
35FDF4:  ADD.W           R0, R0, R0,LSL#1
35FDF8:  STR.W           R1, [R8,R0,LSL#3]
35FDFC:  MOVS            R0, #0; char *
35FDFE:  MOV             R1, R5; char *
35FE00:  BLX             strtok
35FE04:  MOV             R1, R0; char *
35FE06:  LDR             R0, [R4]
35FE08:  MOVS            R2, #8; size_t
35FE0A:  ADD.W           R0, R0, R0,LSL#1
35FE0E:  ADD.W           R0, R8, R0,LSL#3
35FE12:  ADDS            R0, #0x10; char *
35FE14:  BLX             strncpy
35FE18:  LDR             R0, [SP,#0x68+var_2C]
35FE1A:  LDR             R0, [R0]
35FE1C:  SUBS            R1, R0, #4
35FE1E:  CMP             R1, #2
35FE20:  BCC             loc_35FE48
35FE22:  CMP             R0, #6
35FE24:  BEQ             loc_35FE7C
35FE26:  CMP             R0, #9
35FE28:  BNE             loc_35FEDA
35FE2A:  MOVS            R0, #0; char *
35FE2C:  MOV             R1, R5; char *
35FE2E:  BLX             strtok
35FE32:  BLX             atoi
35FE36:  LDR             R1, [SP,#0x68+var_60]
35FE38:  LDR             R2, [SP,#0x68+var_64]
35FE3A:  LDR             R1, [R1]
35FE3C:  ADD.W           R1, R1, R1,LSL#1
35FE40:  ADD.W           R1, R2, R1,LSL#3
35FE44:  STR             R0, [R1,#8]
35FE46:  B               loc_35FEDA
35FE48:  MOVS            R0, #0; char *
35FE4A:  MOV             R1, R5; char *
35FE4C:  BLX             strtok
35FE50:  MOV             R4, R0
35FE52:  MOVS            R0, #0; char *
35FE54:  MOV             R1, R5; char *
35FE56:  BLX             strtok
35FE5A:  MOV             R6, R0
35FE5C:  MOV             R0, R4; this
35FE5E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
35FE62:  LDR             R1, [SP,#0x68+var_48]
35FE64:  LDR             R2, [SP,#0x68+var_4C]
35FE66:  LDR             R1, [R1]
35FE68:  ADD.W           R1, R1, R1,LSL#1
35FE6C:  ADD.W           R4, R2, R1,LSL#3
35FE70:  STR             R0, [R4,#8]
35FE72:  MOV             R0, R6; char *
35FE74:  BLX             atoi
35FE78:  STR             R0, [R4,#0xC]
35FE7A:  B               loc_35FEDA
35FE7C:  MOVS            R0, #0; char *
35FE7E:  MOV             R1, R5; char *
35FE80:  BLX             strtok
35FE84:  MOV             R4, R0
35FE86:  MOVS            R0, #0; char *
35FE88:  MOV             R1, R5; char *
35FE8A:  BLX             strtok
35FE8E:  MOV             R6, R0
35FE90:  LDRB            R0, [R4]
35FE92:  CMP             R0, #0x2D ; '-'
35FE94:  BNE             loc_35FEAC
35FE96:  MOV.W           R0, #0xFFFFFFFF
35FE9A:  B               loc_35FEB2
35FE9C:  MOV.W           R1, #0xFFFFFFFF
35FEA0:  STR             R1, [SP,#0x68+var_20]
35FEA2:  ADD             R1, SP, #0x68+var_20; char *
35FEA4:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
35FEA8:  LDR             R1, [SP,#0x68+var_20]
35FEAA:  B               loc_35FDF0
35FEAC:  MOV             R0, R4; char *
35FEAE:  BLX             atoi
35FEB2:  LDR             R4, [SP,#0x68+var_54]
35FEB4:  LDR.W           R8, [SP,#0x68+var_58]
35FEB8:  LDR             R1, [R4]
35FEBA:  ADD.W           R1, R1, R1,LSL#1
35FEBE:  ADD.W           R1, R8, R1,LSL#3; char *
35FEC2:  STR             R0, [R1,#8]
35FEC4:  MOV             R0, R6; this
35FEC6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
35FECA:  LDR             R1, [R4]
35FECC:  ADD.W           R1, R1, R1,LSL#1
35FED0:  ADD.W           R1, R8, R1,LSL#3
35FED4:  LDR.W           R8, [SP,#0x68+var_5C]
35FED8:  STR             R0, [R1,#0xC]
35FEDA:  MOVS            R0, #0; char *
35FEDC:  MOV             R1, R5; char *
35FEDE:  BLX             strtok
35FEE2:  MOVS            R0, #0; char *
35FEE4:  MOV             R1, R5; char *
35FEE6:  BLX             strtok
35FEEA:  MOVS            R0, #0; char *
35FEEC:  MOV             R1, R5; char *
35FEEE:  BLX             strtok
35FEF2:  MOVS            R0, #0; char *
35FEF4:  MOV             R1, R5; char *
35FEF6:  BLX             strtok
35FEFA:  MOVS            R0, #0; char *
35FEFC:  MOV             R1, R5; char *
35FEFE:  BLX             strtok
35FF02:  BLX             atoi
35FF06:  LDR             R1, [SP,#0x68+var_30]
35FF08:  LDR             R2, [SP,#0x68+var_38]
35FF0A:  LDR             R1, [R1]
35FF0C:  ADD.W           R3, R1, R1,LSL#1
35FF10:  ADD.W           R2, R2, R3,LSL#3
35FF14:  STR.W           R0, [R2,#4]!
35FF18:  LDR             R0, [SP,#0x68+var_34]
35FF1A:  LDR             R0, [R0]
35FF1C:  CMP             R0, #1
35FF1E:  BLT             loc_35FF56
35FF20:  LDR             R6, [SP,#0x68+var_40]
35FF22:  LDR.W           R3, [R6,R3,LSL#3]
35FF26:  LDR             R6, [SP,#0x68+var_44]
35FF28:  LDR             R6, [R6]
35FF2A:  CMP             R3, R6
35FF2C:  ITTT EQ
35FF2E:  LDREQ           R6, [SP,#0x68+var_50]
35FF30:  LDREQ           R6, [R6,#4]
35FF32:  STREQ           R6, [R2]
35FF34:  CMP             R0, #2
35FF36:  BLT             loc_35FF56
35FF38:  MOVS            R6, #0
35FF3A:  ADD.W           R4, R10, R6,LSL#3
35FF3E:  LDR             R4, [R4,#8]
35FF40:  CMP             R3, R4
35FF42:  ITTT EQ
35FF44:  ADDEQ.W         R4, R11, R6,LSL#3
35FF48:  LDREQ           R4, [R4,#0xC]
35FF4A:  STREQ           R4, [R2]
35FF4C:  ADDS            R4, R6, #1
35FF4E:  ADDS            R6, #2
35FF50:  CMP             R6, R0
35FF52:  MOV             R6, R4
35FF54:  BLT             loc_35FF3A
35FF56:  ADDS            R0, R1, #1
35FF58:  LDR             R1, [SP,#0x68+var_3C]; unsigned int
35FF5A:  STR             R0, [R1]
35FF5C:  MOV             R0, R9; this
35FF5E:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
35FF62:  CMP             R0, #0
35FF64:  BNE.W           loc_35FDAC
35FF68:  MOV             R0, R9; this
35FF6A:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
35FF6E:  LDR             R0, =(_ZN9CShopping21ms_priceSectionLoadedE_ptr - 0x35FF76)
35FF70:  LDR             R1, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35FF78)
35FF72:  ADD             R0, PC; _ZN9CShopping21ms_priceSectionLoadedE_ptr
35FF74:  ADD             R1, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35FF76:  LDR             R0, [R0]; CShopping::ms_priceSectionLoaded ...
35FF78:  LDR             R1, [R1]; char *
35FF7A:  LDR             R0, [R0]; CShopping::ms_priceSectionLoaded
35FF7C:  LDR.W           R0, [R1,R0,LSL#2]; this
35FF80:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
35FF84:  ADDS            R1, R0, #1
35FF86:  BEQ             loc_35FF9A
35FF88:  MOVW            R1, #0x63E7
35FF8C:  ADD             R0, R1; this
35FF8E:  MOVS            R1, #0x1A; int
35FF90:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
35FF94:  MOVS            R0, #(stderr+1); this
35FF96:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
35FF9A:  BLX             j__ZN6CTimer6ResumeEv; CTimer::Resume(void)
35FF9E:  ADD             SP, SP, #0x4C ; 'L'
35FFA0:  POP.W           {R8-R11}
35FFA4:  POP             {R4-R7,PC}
