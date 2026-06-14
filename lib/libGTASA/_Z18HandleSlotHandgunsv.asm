; =========================================================
; Game Engine Function: _Z18HandleSlotHandgunsv
; Address            : 0x2FFD34 - 0x2FFDD0
; =========================================================

2FFD34:  PUSH            {R7,LR}
2FFD36:  MOV             R7, SP
2FFD38:  SUB             SP, SP, #0x108
2FFD3A:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FFD42)
2FFD3C:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FFD44)
2FFD3E:  ADD             R0, PC; __stack_chk_guard_ptr
2FFD40:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FFD42:  LDR             R0, [R0]; __stack_chk_guard
2FFD44:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2FFD46:  LDR             R0, [R0]
2FFD48:  STR             R0, [SP,#0x110+var_C]
2FFD4A:  LDR.W           R0, [R1,#(dword_6F39F0 - 0x6F3794)]; this
2FFD4E:  MOV             R1, SP; char *
2FFD50:  BLX             j__ZN11CWidgetList16GetSelectedEntryEPc; CWidgetList::GetSelectedEntry(char *)
2FFD54:  CMP             R0, #2
2FFD56:  BEQ             loc_2FFD7A
2FFD58:  CMP             R0, #1
2FFD5A:  BEQ             loc_2FFD96
2FFD5C:  CBNZ            R0, loc_2FFDBA
2FFD5E:  MOV.W           R0, #(elf_hash_bucket+0x5E); this
2FFD62:  MOVS            R1, #2; int
2FFD64:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFD68:  MOVS            R0, #0; this
2FFD6A:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFD6E:  MOV.W           R0, #0xFFFFFFFF; int
2FFD72:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFD76:  MOVS            R1, #0x16
2FFD78:  B               loc_2FFDB0
2FFD7A:  MOV.W           R0, #(elf_hash_bucket+0x60); this
2FFD7E:  MOVS            R1, #2; int
2FFD80:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFD84:  MOVS            R0, #0; this
2FFD86:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFD8A:  MOV.W           R0, #0xFFFFFFFF; int
2FFD8E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFD92:  MOVS            R1, #0x18
2FFD94:  B               loc_2FFDB0
2FFD96:  MOVW            R0, #(elf_hash_bucket+0x5F); this
2FFD9A:  MOVS            R1, #2; int
2FFD9C:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFDA0:  MOVS            R0, #0; this
2FFDA2:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFDA6:  MOV.W           R0, #0xFFFFFFFF; int
2FFDAA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFDAE:  MOVS            R1, #0x17
2FFDB0:  MOV.W           R2, #0x1F4
2FFDB4:  MOVS            R3, #1
2FFDB6:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FFDBA:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FFDC2)
2FFDBC:  LDR             R1, [SP,#0x110+var_C]
2FFDBE:  ADD             R0, PC; __stack_chk_guard_ptr
2FFDC0:  LDR             R0, [R0]; __stack_chk_guard
2FFDC2:  LDR             R0, [R0]
2FFDC4:  SUBS            R0, R0, R1
2FFDC6:  ITT EQ
2FFDC8:  ADDEQ           SP, SP, #0x108
2FFDCA:  POPEQ           {R7,PC}
2FFDCC:  BLX             __stack_chk_fail
