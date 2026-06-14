; =========================================================
; Game Engine Function: _Z18HandleSlotShotgunsv
; Address            : 0x2FFE84 - 0x2FFF20
; =========================================================

2FFE84:  PUSH            {R7,LR}
2FFE86:  MOV             R7, SP
2FFE88:  SUB             SP, SP, #0x108
2FFE8A:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FFE92)
2FFE8C:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FFE94)
2FFE8E:  ADD             R0, PC; __stack_chk_guard_ptr
2FFE90:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FFE92:  LDR             R0, [R0]; __stack_chk_guard
2FFE94:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2FFE96:  LDR             R0, [R0]
2FFE98:  STR             R0, [SP,#0x110+var_C]
2FFE9A:  LDR.W           R0, [R1,#(dword_6F39F0 - 0x6F3794)]; this
2FFE9E:  MOV             R1, SP; char *
2FFEA0:  BLX             j__ZN11CWidgetList16GetSelectedEntryEPc; CWidgetList::GetSelectedEntry(char *)
2FFEA4:  CMP             R0, #2
2FFEA6:  BEQ             loc_2FFECA
2FFEA8:  CMP             R0, #1
2FFEAA:  BEQ             loc_2FFEE6
2FFEAC:  CBNZ            R0, loc_2FFF0A
2FFEAE:  MOVW            R0, #(elf_hash_bucket+0x61); this
2FFEB2:  MOVS            R1, #2; int
2FFEB4:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFEB8:  MOVS            R0, #0; this
2FFEBA:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFEBE:  MOV.W           R0, #0xFFFFFFFF; int
2FFEC2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFEC6:  MOVS            R1, #0x19
2FFEC8:  B               loc_2FFF00
2FFECA:  MOVW            R0, #(elf_hash_bucket+0x63); this
2FFECE:  MOVS            R1, #2; int
2FFED0:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFED4:  MOVS            R0, #0; this
2FFED6:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFEDA:  MOV.W           R0, #0xFFFFFFFF; int
2FFEDE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFEE2:  MOVS            R1, #0x1B
2FFEE4:  B               loc_2FFF00
2FFEE6:  MOV.W           R0, #(elf_hash_bucket+0x62); this
2FFEEA:  MOVS            R1, #2; int
2FFEEC:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFEF0:  MOVS            R0, #0; this
2FFEF2:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFEF6:  MOV.W           R0, #0xFFFFFFFF; int
2FFEFA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFEFE:  MOVS            R1, #0x1A
2FFF00:  MOV.W           R2, #0x1F4
2FFF04:  MOVS            R3, #1
2FFF06:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FFF0A:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FFF12)
2FFF0C:  LDR             R1, [SP,#0x110+var_C]
2FFF0E:  ADD             R0, PC; __stack_chk_guard_ptr
2FFF10:  LDR             R0, [R0]; __stack_chk_guard
2FFF12:  LDR             R0, [R0]
2FFF14:  SUBS            R0, R0, R1
2FFF16:  ITT EQ
2FFF18:  ADDEQ           SP, SP, #0x108
2FFF1A:  POPEQ           {R7,PC}
2FFF1C:  BLX             __stack_chk_fail
