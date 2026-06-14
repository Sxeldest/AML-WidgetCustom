; =========================================================
; Game Engine Function: _Z23HandleSlotAssaultRiflesv
; Address            : 0x2FFF2C - 0x2FFFA8
; =========================================================

2FFF2C:  PUSH            {R7,LR}
2FFF2E:  MOV             R7, SP
2FFF30:  SUB             SP, SP, #0x108
2FFF32:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FFF3A)
2FFF34:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FFF3C)
2FFF36:  ADD             R0, PC; __stack_chk_guard_ptr
2FFF38:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FFF3A:  LDR             R0, [R0]; __stack_chk_guard
2FFF3C:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2FFF3E:  LDR             R0, [R0]
2FFF40:  STR             R0, [SP,#0x110+var_C]
2FFF42:  LDR.W           R0, [R1,#(dword_6F39F0 - 0x6F3794)]; this
2FFF46:  MOV             R1, SP; char *
2FFF48:  BLX             j__ZN11CWidgetList16GetSelectedEntryEPc; CWidgetList::GetSelectedEntry(char *)
2FFF4C:  CMP             R0, #1
2FFF4E:  BEQ             loc_2FFF6E
2FFF50:  CBNZ            R0, loc_2FFF92
2FFF52:  MOV.W           R0, #(elf_hash_bucket+0x68); this
2FFF56:  MOVS            R1, #2; int
2FFF58:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFF5C:  MOVS            R0, #0; this
2FFF5E:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFF62:  MOV.W           R0, #0xFFFFFFFF; int
2FFF66:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFF6A:  MOVS            R1, #0x1F
2FFF6C:  B               loc_2FFF88
2FFF6E:  MOVW            R0, #(elf_hash_bucket+0x67); this
2FFF72:  MOVS            R1, #2; int
2FFF74:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFF78:  MOVS            R0, #0; this
2FFF7A:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFF7E:  MOV.W           R0, #0xFFFFFFFF; int
2FFF82:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFF86:  MOVS            R1, #0x1E
2FFF88:  MOV.W           R2, #0x1F4
2FFF8C:  MOVS            R3, #1
2FFF8E:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FFF92:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FFF9A)
2FFF94:  LDR             R1, [SP,#0x110+var_C]
2FFF96:  ADD             R0, PC; __stack_chk_guard_ptr
2FFF98:  LDR             R0, [R0]; __stack_chk_guard
2FFF9A:  LDR             R0, [R0]
2FFF9C:  SUBS            R0, R0, R1
2FFF9E:  ITT EQ
2FFFA0:  ADDEQ           SP, SP, #0x108
2FFFA2:  POPEQ           {R7,PC}
2FFFA4:  BLX             __stack_chk_fail
