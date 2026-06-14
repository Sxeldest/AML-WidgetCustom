; =========================================================
; Game Engine Function: _Z19HandleSlotArtilleryv
; Address            : 0x30010C - 0x3001C6
; =========================================================

30010C:  PUSH            {R7,LR}
30010E:  MOV             R7, SP
300110:  SUB             SP, SP, #0x108
300112:  LDR             R0, =(__stack_chk_guard_ptr - 0x30011A)
300114:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x30011C)
300116:  ADD             R0, PC; __stack_chk_guard_ptr
300118:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
30011A:  LDR             R0, [R0]; __stack_chk_guard
30011C:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
30011E:  LDR             R0, [R0]
300120:  STR             R0, [SP,#0x110+var_C]
300122:  LDR.W           R0, [R1,#(dword_6F39F0 - 0x6F3794)]; this
300126:  MOV             R1, SP; char *
300128:  BLX             j__ZN11CWidgetList16GetSelectedEntryEPc; CWidgetList::GetSelectedEntry(char *)
30012C:  CMP             R0, #3; switch 4 cases
30012E:  BHI             def_300130; jumptable 00300130 default case
300130:  TBB.W           [PC,R0]; switch jump
300134:  DCB 2; jump table for switch statement
300135:  DCB 0x10
300136:  DCB 0x1E
300137:  DCB 0x2C
300138:  MOVW            R0, #(elf_hash_bucket+0x6D); jumptable 00300130 case 0
30013C:  MOVS            R1, #2; int
30013E:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
300142:  MOVS            R0, #0; this
300144:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
300148:  MOV.W           R0, #0xFFFFFFFF; int
30014C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300150:  MOVS            R1, #0x25 ; '%'
300152:  B               loc_3001A6
300154:  MOV.W           R0, #(elf_hash_bucket+0x6E); jumptable 00300130 case 1
300158:  MOVS            R1, #2; int
30015A:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
30015E:  MOVS            R0, #0; this
300160:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
300164:  MOV.W           R0, #0xFFFFFFFF; int
300168:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30016C:  MOVS            R1, #0x26 ; '&'
30016E:  B               loc_3001A6
300170:  MOVW            R0, #(elf_hash_bucket+0x6B); jumptable 00300130 case 2
300174:  MOVS            R1, #2; int
300176:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
30017A:  MOVS            R0, #0; this
30017C:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
300180:  MOV.W           R0, #0xFFFFFFFF; int
300184:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300188:  MOVS            R1, #0x23 ; '#'
30018A:  B               loc_3001A6
30018C:  MOV.W           R0, #(elf_hash_bucket+0x6C); jumptable 00300130 case 3
300190:  MOVS            R1, #2; int
300192:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
300196:  MOVS            R0, #0; this
300198:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
30019C:  MOV.W           R0, #0xFFFFFFFF; int
3001A0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3001A4:  MOVS            R1, #0x24 ; '$'
3001A6:  MOV.W           R2, #0x1F4
3001AA:  MOVS            R3, #1
3001AC:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
3001B0:  LDR             R0, =(__stack_chk_guard_ptr - 0x3001B8); jumptable 00300130 default case
3001B2:  LDR             R1, [SP,#0x110+var_C]
3001B4:  ADD             R0, PC; __stack_chk_guard_ptr
3001B6:  LDR             R0, [R0]; __stack_chk_guard
3001B8:  LDR             R0, [R0]
3001BA:  SUBS            R0, R0, R1
3001BC:  ITT EQ
3001BE:  ADDEQ           SP, SP, #0x108
3001C0:  POPEQ           {R7,PC}
3001C2:  BLX             __stack_chk_fail
