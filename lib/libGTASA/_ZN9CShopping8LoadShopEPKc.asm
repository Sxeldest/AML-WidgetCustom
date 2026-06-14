; =========================================================
; Game Engine Function: _ZN9CShopping8LoadShopEPKc
; Address            : 0x360088 - 0x360288
; =========================================================

360088:  PUSH            {R4-R7,LR}
36008A:  ADD             R7, SP, #0xC
36008C:  PUSH.W          {R8-R11}
360090:  SUB             SP, SP, #0x34
360092:  MOV             R5, R0
360094:  LDR             R0, =(__stack_chk_guard_ptr - 0x36009C)
360096:  LDR             R1, =(_ZN9CShopping13ms_shopLoadedE_ptr - 0x36009E)
360098:  ADD             R0, PC; __stack_chk_guard_ptr
36009A:  ADD             R1, PC; _ZN9CShopping13ms_shopLoadedE_ptr
36009C:  LDR             R0, [R0]; __stack_chk_guard
36009E:  LDR             R1, [R1]; char *
3600A0:  LDR             R0, [R0]
3600A2:  STR             R0, [SP,#0x50+var_20]
3600A4:  MOV             R0, R5; char *
3600A6:  BLX             strcasecmp
3600AA:  CMP             R0, #0
3600AC:  BEQ.W           loc_36026E
3600B0:  LDR             R0, =(_ZN9CShopping13ms_shopLoadedE_ptr - 0x3600B8)
3600B2:  MOV             R1, R5; char *
3600B4:  ADD             R0, PC; _ZN9CShopping13ms_shopLoadedE_ptr
3600B6:  LDR             R0, [R0]; char *
3600B8:  BLX             strcpy
3600BC:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
3600C0:  LDR             R0, =(_ZN9CShopping17ms_numItemsInShopE_ptr - 0x3600C8)
3600C2:  MOVS            R1, #0
3600C4:  ADD             R0, PC; _ZN9CShopping17ms_numItemsInShopE_ptr
3600C6:  LDR             R0, [R0]; CShopping::ms_numItemsInShop ...
3600C8:  STR             R1, [R0]; CShopping::ms_numItemsInShop
3600CA:  ADR             R0, aBought; "bought"
3600CC:  MOV             R1, R5; char *
3600CE:  BLX             strcasecmp
3600D2:  CMP             R0, #0
3600D4:  BEQ.W           loc_3601F8
3600D8:  LDR             R0, =(aDataShoppingDa - 0x3600E0); "data\\shopping.dat"
3600DA:  ADR             R1, dword_3602A4; char *
3600DC:  ADD             R0, PC; "data\\shopping.dat"
3600DE:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
3600E2:  ADR             R1, aShops; "shops"
3600E4:  MOV             R4, R0
3600E6:  BLX             j__ZN9CShopping11FindSectionEjPKc; CShopping::FindSection(uint,char const*)
3600EA:  CMP             R0, #1
3600EC:  BNE             loc_3600F6
3600EE:  MOV             R0, R4; this
3600F0:  MOV             R1, R5; unsigned int
3600F2:  BLX             j__ZN9CShopping11FindSectionEjPKc; CShopping::FindSection(uint,char const*)
3600F6:  MOV             R0, R4; this
3600F8:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
3600FC:  CMP             R0, #0
3600FE:  BEQ             loc_3601EC
360100:  LDR             R1, =(_ZN9CShopping21ms_priceSectionLoadedE_ptr - 0x36010E)
360102:  ADR             R5, asc_3602B0; " \t"
360104:  LDR             R2, =(_ZN9CShopping15ms_shopContentsE_ptr - 0x360114)
360106:  ADR.W           R11, aType; "type"
36010A:  ADD             R1, PC; _ZN9CShopping21ms_priceSectionLoadedE_ptr
36010C:  ADD.W           R8, SP, #0x50+var_40
360110:  ADD             R2, PC; _ZN9CShopping15ms_shopContentsE_ptr
360112:  ADR.W           R9, aItem; "item"
360116:  LDR             R1, [R1]; CShopping::ms_priceSectionLoaded ...
360118:  STR             R1, [SP,#0x50+var_48]
36011A:  LDR             R1, =(_ZN9CShopping21ms_priceSectionLoadedE_ptr - 0x360120)
36011C:  ADD             R1, PC; _ZN9CShopping21ms_priceSectionLoadedE_ptr
36011E:  LDR             R1, [R1]; CShopping::ms_priceSectionLoaded ...
360120:  STR             R1, [SP,#0x50+var_4C]
360122:  LDR             R1, =(_ZN9CShopping17ms_numItemsInShopE_ptr - 0x360128)
360124:  ADD             R1, PC; _ZN9CShopping17ms_numItemsInShopE_ptr
360126:  LDR.W           R10, [R1]; CShopping::ms_numItemsInShop ...
36012A:  LDR             R1, [R2]; CShopping::ms_shopContents ...
36012C:  STR             R1, [SP,#0x50+var_50]
36012E:  LDRB            R1, [R0]
360130:  CMP             R1, #0
360132:  IT NE
360134:  CMPNE           R1, #0x23 ; '#'
360136:  BEQ             loc_3601E2
360138:  CMP             R1, #0x65 ; 'e'
36013A:  ITT EQ
36013C:  LDRBEQ          R1, [R0,#1]
36013E:  CMPEQ           R1, #0x6E ; 'n'
360140:  BNE             loc_360148
360142:  LDRB            R1, [R0,#2]
360144:  CMP             R1, #0x64 ; 'd'
360146:  BEQ             loc_3601EC
360148:  MOV             R1, R5; char *
36014A:  BLX             strtok
36014E:  MOV             R6, R0
360150:  MOV             R0, R11; char *
360152:  MOV             R1, R6; char *
360154:  BLX             strcmp
360158:  CBZ             R0, loc_36017C
36015A:  MOV             R0, R9; char *
36015C:  MOV             R1, R6; char *
36015E:  BLX             strcmp
360162:  CBNZ            R0, loc_3601E2
360164:  MOVS            R0, #0; char *
360166:  MOV             R1, R5; char *
360168:  BLX             strtok
36016C:  LDR             R1, [SP,#0x50+var_48]
36016E:  LDR             R1, [R1]; char *
360170:  SUBS            R2, R1, #4; int *
360172:  CMP             R2, #3
360174:  BCS             loc_360194
360176:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
36017A:  B               loc_3601A2
36017C:  MOVS            R0, #0; char *
36017E:  MOV             R1, R5; char *
360180:  BLX             strtok
360184:  MOV             R1, R0; char *
360186:  MOV             R0, R8; char *
360188:  BLX             strcpy
36018C:  MOV             R0, R8; this
36018E:  BLX             j__ZN9CShopping10LoadPricesEPKc; CShopping::LoadPrices(char const*)
360192:  B               loc_3601E2
360194:  CMP             R1, #9
360196:  BEQ             loc_36019E
360198:  CMP             R1, #2
36019A:  BNE             loc_3601A8
36019C:  B               loc_3601D2
36019E:  BLX             j__ZN11CWeaponInfo14FindWeaponTypeEPKc; CWeaponInfo::FindWeaponType(char const*)
3601A2:  MOV             R6, R0
3601A4:  STR             R6, [SP,#0x50+var_44]
3601A6:  B               loc_3601B6
3601A8:  MOV.W           R1, #0xFFFFFFFF
3601AC:  STR             R1, [SP,#0x50+var_44]
3601AE:  ADD             R1, SP, #0x50+var_44; char *
3601B0:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
3601B4:  LDR             R6, [SP,#0x50+var_44]
3601B6:  LDR             R0, [SP,#0x50+var_4C]
3601B8:  LDR             R0, [R0]
3601BA:  CMP             R0, #1
3601BC:  BNE             loc_3601D2
3601BE:  MOV.W           R0, #0xFFFFFFFF; int
3601C2:  MOVS            R1, #0; bool
3601C4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3601C8:  MOV             R1, R0; CVehicle *
3601CA:  MOV             R0, R6; unsigned int
3601CC:  BLX             j__Z20IsValidModForVehiclejP8CVehicle; IsValidModForVehicle(uint,CVehicle *)
3601D0:  CBZ             R0, loc_3601E2
3601D2:  LDR.W           R0, [R10]; CShopping::ms_numItemsInShop
3601D6:  LDR             R1, [SP,#0x50+var_50]; unsigned int
3601D8:  STR.W           R6, [R1,R0,LSL#2]
3601DC:  ADDS            R0, #1
3601DE:  STR.W           R0, [R10]; CShopping::ms_numItemsInShop
3601E2:  MOV             R0, R4; this
3601E4:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
3601E8:  CMP             R0, #0
3601EA:  BNE             loc_36012E
3601EC:  MOV             R0, R4; this
3601EE:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
3601F2:  BLX             j__ZN6CTimer6ResumeEv; CTimer::Resume(void)
3601F6:  B               loc_36026E
3601F8:  LDR             R0, =(_ZN9CShopping12ms_numPricesE_ptr - 0x3601FE)
3601FA:  ADD             R0, PC; _ZN9CShopping12ms_numPricesE_ptr
3601FC:  LDR             R0, [R0]; CShopping::ms_numPrices ...
3601FE:  LDR.W           R8, [R0]; CShopping::ms_numPrices
360202:  CMP.W           R8, #1
360206:  BLT             loc_36026E
360208:  LDR             R0, =(_ZN9CShopping9ms_pricesE_ptr - 0x360216)
36020A:  MOVS            R1, #0
36020C:  LDR             R2, =(_ZN9CShopping15ms_shopContentsE_ptr - 0x36021A)
36020E:  MOVW            R5, #0x22F
360212:  ADD             R0, PC; _ZN9CShopping9ms_pricesE_ptr
360214:  MOVS            R4, #0
360216:  ADD             R2, PC; _ZN9CShopping15ms_shopContentsE_ptr
360218:  LDR.W           R9, [R0]; CShopping::ms_prices ...
36021C:  LDR             R0, =(_ZN9CShopping7ms_keysE_ptr - 0x360226)
36021E:  LDR.W           LR, [R2]; CShopping::ms_shopContents ...
360222:  ADD             R0, PC; _ZN9CShopping7ms_keysE_ptr
360224:  LDR             R3, [R0]; CShopping::ms_keys ...
360226:  LDR             R0, =(_ZN9CShopping13ms_bHasBoughtE_ptr - 0x36022C)
360228:  ADD             R0, PC; _ZN9CShopping13ms_bHasBoughtE_ptr
36022A:  LDR.W           R10, [R0]; CShopping::ms_bHasBought ...
36022E:  LDR             R0, =(_ZN9CShopping17ms_numItemsInShopE_ptr - 0x360234)
360230:  ADD             R0, PC; _ZN9CShopping17ms_numItemsInShopE_ptr
360232:  LDR.W           R12, [R0]; CShopping::ms_numItemsInShop ...
360236:  ADD.W           R0, R4, R4,LSL#1
36023A:  MOVS            R2, #0
36023C:  LDR.W           R0, [R9,R0,LSL#3]
360240:  LDR.W           R6, [R3,R2,LSL#2]
360244:  CMP             R6, R0
360246:  BEQ             loc_360254
360248:  ADDS            R6, R2, #1
36024A:  CMP             R2, R5
36024C:  MOV             R2, R6
36024E:  BLT             loc_360240
360250:  MOV.W           R2, #0xFFFFFFFF
360254:  LDRB.W          R2, [R10,R2]
360258:  ADDS            R4, #1
36025A:  CMP             R2, #0
36025C:  ITTTT NE
36025E:  ADDNE           R2, R1, #1
360260:  STRNE.W         R2, [R12]; CShopping::ms_numItemsInShop
360264:  STRNE.W         R0, [LR,R1,LSL#2]
360268:  MOVNE           R1, R2
36026A:  CMP             R4, R8
36026C:  BLT             loc_360236
36026E:  LDR             R0, =(__stack_chk_guard_ptr - 0x360276)
360270:  LDR             R1, [SP,#0x50+var_20]
360272:  ADD             R0, PC; __stack_chk_guard_ptr
360274:  LDR             R0, [R0]; __stack_chk_guard
360276:  LDR             R0, [R0]
360278:  SUBS            R0, R0, R1
36027A:  ITTT EQ
36027C:  ADDEQ           SP, SP, #0x34 ; '4'
36027E:  POPEQ.W         {R8-R11}
360282:  POPEQ           {R4-R7,PC}
360284:  BLX             __stack_chk_fail
