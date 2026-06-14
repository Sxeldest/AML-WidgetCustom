; =========================================================
; Game Engine Function: _Z19HandleSlotEquipmentv
; Address            : 0x3001D4 - 0x3002C8
; =========================================================

3001D4:  PUSH            {R7,LR}
3001D6:  MOV             R7, SP
3001D8:  SUB             SP, SP, #0x108
3001DA:  LDR             R0, =(__stack_chk_guard_ptr - 0x3001E2)
3001DC:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3001E4)
3001DE:  ADD             R0, PC; __stack_chk_guard_ptr
3001E0:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3001E2:  LDR             R0, [R0]; __stack_chk_guard
3001E4:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
3001E6:  LDR             R0, [R0]
3001E8:  STR             R0, [SP,#0x110+var_C]
3001EA:  LDR.W           R0, [R1,#(dword_6F39F0 - 0x6F3794)]; this
3001EE:  MOV             R1, SP; char *
3001F0:  BLX             j__ZN11CWidgetList16GetSelectedEntryEPc; CWidgetList::GetSelectedEntry(char *)
3001F4:  CMP             R0, #5; switch 6 cases
3001F6:  BHI             def_3001F8; jumptable 003001F8 default case
3001F8:  TBB.W           [PC,R0]; switch jump
3001FC:  DCB 3; jump table for switch statement
3001FD:  DCB 0x11
3001FE:  DCB 0x1F
3001FF:  DCB 0x2D
300200:  DCB 0x3B
300201:  DCB 0x49
300202:  MOVW            R0, #(elf_hash_bucket+0x71); jumptable 003001F8 case 0
300206:  MOVS            R1, #2; int
300208:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
30020C:  MOVS            R0, #0; this
30020E:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
300212:  MOV.W           R0, #0xFFFFFFFF; int
300216:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30021A:  MOVS            R1, #0x29 ; ')'
30021C:  B               loc_3002A8
30021E:  MOVW            R0, #(elf_hash_bucket+0x73); jumptable 003001F8 case 1
300222:  MOVS            R1, #2; int
300224:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
300228:  MOVS            R0, #0; this
30022A:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
30022E:  MOV.W           R0, #0xFFFFFFFF; int
300232:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300236:  MOVS            R1, #0x2B ; '+'
300238:  B               loc_3002A8
30023A:  MOV.W           R0, #(elf_hash_bucket+0x72); jumptable 003001F8 case 2
30023E:  MOVS            R1, #2; int
300240:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
300244:  MOVS            R0, #0; this
300246:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
30024A:  MOV.W           R0, #0xFFFFFFFF; int
30024E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300252:  MOVS            R1, #0x2A ; '*'
300254:  B               loc_3002A8
300256:  MOVW            R0, #(elf_hash_bucket+0x77); jumptable 003001F8 case 3
30025A:  MOVS            R1, #2; int
30025C:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
300260:  MOVS            R0, #0; this
300262:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
300266:  MOV.W           R0, #0xFFFFFFFF; int
30026A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30026E:  MOVS            R1, #0x2E ; '.'
300270:  B               loc_3002A8
300272:  MOVW            R0, #(elf_hash_bucket+0x75); jumptable 003001F8 case 4
300276:  MOVS            R1, #2; int
300278:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
30027C:  MOVS            R0, #0; this
30027E:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
300282:  MOV.W           R0, #0xFFFFFFFF; int
300286:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30028A:  MOVS            R1, #0x2D ; '-'
30028C:  B               loc_3002A8
30028E:  MOV.W           R0, #(elf_hash_bucket+0x74); jumptable 003001F8 case 5
300292:  MOVS            R1, #2; int
300294:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
300298:  MOVS            R0, #0; this
30029A:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
30029E:  MOV.W           R0, #0xFFFFFFFF; int
3002A2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3002A6:  MOVS            R1, #0x2C ; ','
3002A8:  MOV.W           R2, #0x1F4
3002AC:  MOVS            R3, #1
3002AE:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
3002B2:  LDR             R0, =(__stack_chk_guard_ptr - 0x3002BA); jumptable 003001F8 default case
3002B4:  LDR             R1, [SP,#0x110+var_C]
3002B6:  ADD             R0, PC; __stack_chk_guard_ptr
3002B8:  LDR             R0, [R0]; __stack_chk_guard
3002BA:  LDR             R0, [R0]
3002BC:  SUBS            R0, R0, R1
3002BE:  ITT EQ
3002C0:  ADDEQ           SP, SP, #0x108
3002C2:  POPEQ           {R7,PC}
3002C4:  BLX             __stack_chk_fail
