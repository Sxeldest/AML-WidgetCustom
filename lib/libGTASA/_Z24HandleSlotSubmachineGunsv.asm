; =========================================================
; Game Engine Function: _Z24HandleSlotSubmachineGunsv
; Address            : 0x2FFDDC - 0x2FFE78
; =========================================================

2FFDDC:  PUSH            {R7,LR}
2FFDDE:  MOV             R7, SP
2FFDE0:  SUB             SP, SP, #0x108
2FFDE2:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FFDEA)
2FFDE4:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FFDEC)
2FFDE6:  ADD             R0, PC; __stack_chk_guard_ptr
2FFDE8:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FFDEA:  LDR             R0, [R0]; __stack_chk_guard
2FFDEC:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2FFDEE:  LDR             R0, [R0]
2FFDF0:  STR             R0, [SP,#0x110+var_C]
2FFDF2:  LDR.W           R0, [R1,#(dword_6F39F0 - 0x6F3794)]; this
2FFDF6:  MOV             R1, SP; char *
2FFDF8:  BLX             j__ZN11CWidgetList16GetSelectedEntryEPc; CWidgetList::GetSelectedEntry(char *)
2FFDFC:  CMP             R0, #2
2FFDFE:  BEQ             loc_2FFE22
2FFE00:  CMP             R0, #1
2FFE02:  BEQ             loc_2FFE3E
2FFE04:  CBNZ            R0, loc_2FFE62
2FFE06:  MOV.W           R0, #(elf_hash_bucket+0x78); this
2FFE0A:  MOVS            R1, #2; int
2FFE0C:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFE10:  MOVS            R0, #0; this
2FFE12:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFE16:  MOV.W           R0, #0xFFFFFFFF; int
2FFE1A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFE1E:  MOVS            R1, #0x20 ; ' '
2FFE20:  B               loc_2FFE58
2FFE22:  MOVW            R0, #(elf_hash_bucket+0x65); this
2FFE26:  MOVS            R1, #2; int
2FFE28:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFE2C:  MOVS            R0, #0; this
2FFE2E:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFE32:  MOV.W           R0, #0xFFFFFFFF; int
2FFE36:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFE3A:  MOVS            R1, #0x1D
2FFE3C:  B               loc_2FFE58
2FFE3E:  MOV.W           R0, #(elf_hash_bucket+0x64); this
2FFE42:  MOVS            R1, #2; int
2FFE44:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFE48:  MOVS            R0, #0; this
2FFE4A:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFE4E:  MOV.W           R0, #0xFFFFFFFF; int
2FFE52:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFE56:  MOVS            R1, #0x1C
2FFE58:  MOV.W           R2, #0x1F4
2FFE5C:  MOVS            R3, #1
2FFE5E:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FFE62:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FFE6A)
2FFE64:  LDR             R1, [SP,#0x110+var_C]
2FFE66:  ADD             R0, PC; __stack_chk_guard_ptr
2FFE68:  LDR             R0, [R0]; __stack_chk_guard
2FFE6A:  LDR             R0, [R0]
2FFE6C:  SUBS            R0, R0, R1
2FFE6E:  ITT EQ
2FFE70:  ADDEQ           SP, SP, #0x108
2FFE72:  POPEQ           {R7,PC}
2FFE74:  BLX             __stack_chk_fail
