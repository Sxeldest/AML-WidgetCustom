; =========================================================
; Game Engine Function: _Z15HandleSlotMeleev
; Address            : 0x2FFBDC - 0x2FFD28
; =========================================================

2FFBDC:  PUSH            {R7,LR}
2FFBDE:  MOV             R7, SP
2FFBE0:  SUB             SP, SP, #0x108
2FFBE2:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FFBEA)
2FFBE4:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FFBEC)
2FFBE6:  ADD             R0, PC; __stack_chk_guard_ptr
2FFBE8:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FFBEA:  LDR             R0, [R0]; __stack_chk_guard
2FFBEC:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2FFBEE:  LDR             R0, [R0]
2FFBF0:  STR             R0, [SP,#0x110+var_C]
2FFBF2:  LDR.W           R0, [R1,#(dword_6F39F0 - 0x6F3794)]; this
2FFBF6:  MOV             R1, SP; char *
2FFBF8:  BLX             j__ZN11CWidgetList16GetSelectedEntryEPc; CWidgetList::GetSelectedEntry(char *)
2FFBFC:  CMP             R0, #8; switch 9 cases
2FFBFE:  BHI.W           def_2FFC02; jumptable 002FFC02 default case
2FFC02:  TBB.W           [PC,R0]; switch jump
2FFC06:  DCB 5; jump table for switch statement
2FFC07:  DCB 0x13
2FFC08:  DCB 0x21
2FFC09:  DCB 0x2F
2FFC0A:  DCB 0x3D
2FFC0B:  DCB 0x4B
2FFC0C:  DCB 0x59
2FFC0D:  DCB 0x67
2FFC0E:  DCB 0x75
2FFC0F:  ALIGN 2
2FFC10:  MOVW            R0, #(elf_hash_bucket+0x4F); jumptable 002FFC02 case 0
2FFC14:  MOVS            R1, #2; int
2FFC16:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFC1A:  MOVS            R0, #0; this
2FFC1C:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFC20:  MOV.W           R0, #0xFFFFFFFF; int
2FFC24:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFC28:  MOVS            R1, #1
2FFC2A:  B               loc_2FFD0A
2FFC2C:  MOV.W           R0, #(elf_hash_bucket+0x54); jumptable 002FFC02 case 1
2FFC30:  MOVS            R1, #2; int
2FFC32:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFC36:  MOVS            R0, #0; this
2FFC38:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFC3C:  MOV.W           R0, #0xFFFFFFFF; int
2FFC40:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFC44:  MOVS            R1, #5
2FFC46:  B               loc_2FFD0A
2FFC48:  MOV.W           R0, #(elf_hash_bucket+0x52); jumptable 002FFC02 case 2
2FFC4C:  MOVS            R1, #2; int
2FFC4E:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFC52:  MOVS            R0, #0; this
2FFC54:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFC58:  MOV.W           R0, #0xFFFFFFFF; int
2FFC5C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFC60:  MOVS            R1, #3
2FFC62:  B               loc_2FFD0A
2FFC64:  MOV.W           R0, #(elf_hash_bucket+0x56); jumptable 002FFC02 case 3
2FFC68:  MOVS            R1, #2; int
2FFC6A:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFC6E:  MOVS            R0, #0; this
2FFC70:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFC74:  MOV.W           R0, #0xFFFFFFFF; int
2FFC78:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFC7C:  MOVS            R1, #7
2FFC7E:  B               loc_2FFD0A
2FFC80:  MOVW            R0, #(elf_hash_bucket+0x51); jumptable 002FFC02 case 4
2FFC84:  MOVS            R1, #2; int
2FFC86:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFC8A:  MOVS            R0, #0; this
2FFC8C:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFC90:  MOV.W           R0, #0xFFFFFFFF; int
2FFC94:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFC98:  MOVS            R1, #2
2FFC9A:  B               loc_2FFD0A
2FFC9C:  MOVW            R0, #(elf_hash_bucket+0x55); jumptable 002FFC02 case 5
2FFCA0:  MOVS            R1, #2; int
2FFCA2:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFCA6:  MOVS            R0, #0; this
2FFCA8:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFCAC:  MOV.W           R0, #0xFFFFFFFF; int
2FFCB0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFCB4:  MOVS            R1, #6
2FFCB6:  B               loc_2FFD0A
2FFCB8:  MOVW            R0, #(elf_hash_bucket+0x53); jumptable 002FFC02 case 6
2FFCBC:  MOVS            R1, #2; int
2FFCBE:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFCC2:  MOVS            R0, #0; this
2FFCC4:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFCC8:  MOV.W           R0, #0xFFFFFFFF; int
2FFCCC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFCD0:  MOVS            R1, #4
2FFCD2:  B               loc_2FFD0A
2FFCD4:  MOVW            R0, #(elf_hash_bucket+0x57); jumptable 002FFC02 case 7
2FFCD8:  MOVS            R1, #2; int
2FFCDA:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFCDE:  MOVS            R0, #0; this
2FFCE0:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFCE4:  MOV.W           R0, #0xFFFFFFFF; int
2FFCE8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFCEC:  MOVS            R1, #8
2FFCEE:  B               loc_2FFD0A
2FFCF0:  MOVW            R0, #(elf_hash_bucket+0x59); jumptable 002FFC02 case 8
2FFCF4:  MOVS            R1, #2; int
2FFCF6:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FFCFA:  MOVS            R0, #0; this
2FFCFC:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FFD00:  MOV.W           R0, #0xFFFFFFFF; int
2FFD04:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFD08:  MOVS            R1, #9
2FFD0A:  MOVS            R2, #1
2FFD0C:  MOVS            R3, #1
2FFD0E:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FFD12:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FFD1A); jumptable 002FFC02 default case
2FFD14:  LDR             R1, [SP,#0x110+var_C]
2FFD16:  ADD             R0, PC; __stack_chk_guard_ptr
2FFD18:  LDR             R0, [R0]; __stack_chk_guard
2FFD1A:  LDR             R0, [R0]
2FFD1C:  SUBS            R0, R0, R1
2FFD1E:  ITT EQ
2FFD20:  ADDEQ           SP, SP, #0x108
2FFD22:  POPEQ           {R7,PC}
2FFD24:  BLX             __stack_chk_fail
