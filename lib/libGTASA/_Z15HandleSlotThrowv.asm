; =========================================================
; Game Engine Function: _Z15HandleSlotThrowv
; Address            : 0x30003C - 0x300100
; =========================================================

30003C:  PUSH            {R7,LR}
30003E:  MOV             R7, SP
300040:  SUB             SP, SP, #0x108
300042:  LDR             R0, =(__stack_chk_guard_ptr - 0x30004A)
300044:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x30004C)
300046:  ADD             R0, PC; __stack_chk_guard_ptr
300048:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
30004A:  LDR             R0, [R0]; __stack_chk_guard
30004C:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
30004E:  LDR             R0, [R0]
300050:  STR             R0, [SP,#0x110+var_C]
300052:  LDR.W           R0, [R1,#(dword_6F39F0 - 0x6F3794)]; this
300056:  MOV             R1, SP; char *
300058:  BLX             j__ZN11CWidgetList16GetSelectedEntryEPc; CWidgetList::GetSelectedEntry(char *)
30005C:  CMP             R0, #3; switch 4 cases
30005E:  BHI             def_300060; jumptable 00300060 default case
300060:  TBB.W           [PC,R0]; switch jump
300064:  DCB 2; jump table for switch statement
300065:  DCB 0x10
300066:  DCB 0x1E
300067:  DCB 0x2C
300068:  MOV.W           R0, #(elf_hash_bucket+0x5C); jumptable 00300060 case 0
30006C:  MOVS            R1, #2; int
30006E:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
300072:  MOVS            R0, #0; this
300074:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
300078:  MOV.W           R0, #0xFFFFFFFF; int
30007C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300080:  MOVS            R1, #0x12
300082:  B               loc_3000E0
300084:  MOV.W           R0, #(elf_hash_bucket+0x5A); jumptable 00300060 case 1
300088:  MOVS            R1, #2; int
30008A:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
30008E:  MOVS            R0, #0; this
300090:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
300094:  MOV.W           R0, #0xFFFFFFFF; int
300098:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30009C:  MOVS            R1, #0x10
30009E:  B               loc_3000E0
3000A0:  MOVW            R0, #(elf_hash_bucket+0x5B); jumptable 00300060 case 2
3000A4:  MOVS            R1, #2; int
3000A6:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
3000AA:  MOVS            R0, #0; this
3000AC:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
3000B0:  MOV.W           R0, #0xFFFFFFFF; int
3000B4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3000B8:  MOVS            R1, #0x11
3000BA:  B               loc_3000E0
3000BC:  MOVW            R0, #(elf_hash_bucket+0x6F); jumptable 00300060 case 3
3000C0:  MOVS            R1, #2; int
3000C2:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
3000C6:  MOV.W           R0, #(elf_hash_bucket+0x70); this
3000CA:  MOVS            R1, #2; int
3000CC:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
3000D0:  MOVS            R0, #0; this
3000D2:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
3000D6:  MOV.W           R0, #0xFFFFFFFF; int
3000DA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3000DE:  MOVS            R1, #0x27 ; '''
3000E0:  MOV.W           R2, #0x1F4
3000E4:  MOVS            R3, #1
3000E6:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
3000EA:  LDR             R0, =(__stack_chk_guard_ptr - 0x3000F2); jumptable 00300060 default case
3000EC:  LDR             R1, [SP,#0x110+var_C]
3000EE:  ADD             R0, PC; __stack_chk_guard_ptr
3000F0:  LDR             R0, [R0]; __stack_chk_guard
3000F2:  LDR             R0, [R0]
3000F4:  SUBS            R0, R0, R1
3000F6:  ITT EQ
3000F8:  ADDEQ           SP, SP, #0x108
3000FA:  POPEQ           {R7,PC}
3000FC:  BLX             __stack_chk_fail
