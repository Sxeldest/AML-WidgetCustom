; =========================================================
; Game Engine Function: _Z20HandleSlotLongRiflesv
; Address            : 0x2FFFB4 - 0x300030
; =========================================================

2FFFB4:  PUSH            {R7,LR}
2FFFB6:  MOV             R7, SP
2FFFB8:  SUB             SP, SP, #0x108
2FFFBA:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FFFC2)
2FFFBC:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FFFC4)
2FFFBE:  ADD             R0, PC; __stack_chk_guard_ptr
2FFFC0:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FFFC2:  LDR             R0, [R0]; __stack_chk_guard
2FFFC4:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2FFFC6:  LDR             R0, [R0]
2FFFC8:  STR             R0, [SP,#0x110+var_C]
2FFFCA:  LDR.W           R0, [R1,#(dword_6F39F0 - 0x6F3794)]; this
2FFFCE:  MOV             R1, SP; char *
2FFFD0:  BLX             j__ZN11CWidgetList16GetSelectedEntryEPc; CWidgetList::GetSelectedEntry(char *)
2FFFD4:  CMP             R0, #1
2FFFD6:  BEQ             loc_2FFFF6
2FFFD8:  CBNZ            R0, loc_30001A
2FFFDA:  MOVW            R0, #(elf_hash_bucket+0x69); this
2FFFDE:  MOVS            R1, #2; int
2FFFE0:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFFE4:  MOVS            R0, #0; this
2FFFE6:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFFEA:  MOV.W           R0, #0xFFFFFFFF; int
2FFFEE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFFF2:  MOVS            R1, #0x21 ; '!'
2FFFF4:  B               loc_300010
2FFFF6:  MOV.W           R0, #(elf_hash_bucket+0x6A); this
2FFFFA:  MOVS            R1, #2; int
2FFFFC:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
300000:  MOVS            R0, #0; this
300002:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
300006:  MOV.W           R0, #0xFFFFFFFF; int
30000A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30000E:  MOVS            R1, #0x22 ; '"'
300010:  MOV.W           R2, #0x1F4
300014:  MOVS            R3, #1
300016:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
30001A:  LDR             R0, =(__stack_chk_guard_ptr - 0x300022)
30001C:  LDR             R1, [SP,#0x110+var_C]
30001E:  ADD             R0, PC; __stack_chk_guard_ptr
300020:  LDR             R0, [R0]; __stack_chk_guard
300022:  LDR             R0, [R0]
300024:  SUBS            R0, R0, R1
300026:  ITT EQ
300028:  ADDEQ           SP, SP, #0x108
30002A:  POPEQ           {R7,PC}
30002C:  BLX             __stack_chk_fail
