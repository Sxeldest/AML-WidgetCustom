; =========================================================
; Game Engine Function: _ZN6CCheat12WeaponCheat1Ev
; Address            : 0x2FCE54 - 0x2FD06C
; =========================================================

2FCE54:  PUSH            {R7,LR}
2FCE56:  MOV             R7, SP
2FCE58:  MOVW            R0, #(elf_hash_bucket+0x4F); this
2FCE5C:  MOVS            R1, #2; int
2FCE5E:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FCE62:  MOV.W           R0, #(elf_hash_bucket+0x54); this
2FCE66:  MOVS            R1, #2; int
2FCE68:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FCE6C:  MOV.W           R0, #(elf_hash_bucket+0x5C); this
2FCE70:  MOVS            R1, #2; int
2FCE72:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FCE76:  MOV.W           R0, #(elf_hash_bucket+0x5E); this
2FCE7A:  MOVS            R1, #2; int
2FCE7C:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FCE80:  MOVW            R0, #(elf_hash_bucket+0x61); this
2FCE84:  MOVS            R1, #2; int
2FCE86:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FCE8A:  MOV.W           R0, #(elf_hash_bucket+0x64); this
2FCE8E:  MOVS            R1, #2; int
2FCE90:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FCE94:  MOVW            R0, #(elf_hash_bucket+0x67); this
2FCE98:  MOVS            R1, #2; int
2FCE9A:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FCE9E:  MOVW            R0, #(elf_hash_bucket+0x69); this
2FCEA2:  MOVS            R1, #2; int
2FCEA4:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FCEA8:  MOVW            R0, #(elf_hash_bucket+0x6B); this
2FCEAC:  MOVS            R1, #2; int
2FCEAE:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FCEB2:  MOVW            R0, #(elf_hash_bucket+0x71); this
2FCEB6:  MOVS            R1, #2; int
2FCEB8:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FCEBC:  MOVS            R0, #0; this
2FCEBE:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FCEC2:  MOV.W           R0, #0xFFFFFFFF; int
2FCEC6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCECA:  MOVS            R1, #1
2FCECC:  MOVS            R2, #1
2FCECE:  MOVS            R3, #1
2FCED0:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCED4:  MOV.W           R0, #0xFFFFFFFF; int
2FCED8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCEDC:  MOVS            R1, #5
2FCEDE:  MOVS            R2, #1
2FCEE0:  MOVS            R3, #1
2FCEE2:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCEE6:  MOV.W           R0, #0xFFFFFFFF; int
2FCEEA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCEEE:  MOVS            R1, #0x12
2FCEF0:  MOVS            R2, #0xA
2FCEF2:  MOVS            R3, #1
2FCEF4:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCEF8:  MOV.W           R0, #0xFFFFFFFF; int
2FCEFC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCF00:  MOVS            R1, #0x16
2FCF02:  MOVS            R2, #0x64 ; 'd'
2FCF04:  MOVS            R3, #1
2FCF06:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCF0A:  MOV.W           R0, #0xFFFFFFFF; int
2FCF0E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCF12:  MOVS            R1, #0x19
2FCF14:  MOVS            R2, #0x32 ; '2'
2FCF16:  MOVS            R3, #1
2FCF18:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCF1C:  MOV.W           R0, #0xFFFFFFFF; int
2FCF20:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCF24:  MOVS            R1, #0x1C
2FCF26:  MOVS            R2, #0x96
2FCF28:  MOVS            R3, #1
2FCF2A:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCF2E:  MOV.W           R0, #0xFFFFFFFF; int
2FCF32:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCF36:  MOVS            R1, #0x1E
2FCF38:  MOVS            R2, #0x78 ; 'x'
2FCF3A:  MOVS            R3, #1
2FCF3C:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCF40:  MOV.W           R0, #0xFFFFFFFF; int
2FCF44:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCF48:  MOVS            R1, #0x21 ; '!'
2FCF4A:  MOVS            R2, #0x19
2FCF4C:  MOVS            R3, #1
2FCF4E:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCF52:  MOV.W           R0, #0xFFFFFFFF; int
2FCF56:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCF5A:  MOVS            R1, #0x23 ; '#'
2FCF5C:  MOVS            R2, #0xC8
2FCF5E:  MOVS            R3, #1
2FCF60:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCF64:  MOV.W           R0, #0xFFFFFFFF; int
2FCF68:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCF6C:  MOVS            R1, #0x29 ; ')'
2FCF6E:  MOVS            R2, #0xC8
2FCF70:  MOVS            R3, #1
2FCF72:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCF76:  MOVS            R0, #1; int
2FCF78:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCF7C:  CMP             R0, #0
2FCF7E:  BEQ             loc_2FD020
2FCF80:  MOVS            R0, #1; int
2FCF82:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCF86:  MOVS            R1, #1
2FCF88:  MOVS            R2, #1
2FCF8A:  MOVS            R3, #1
2FCF8C:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCF90:  MOVS            R0, #1; int
2FCF92:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCF96:  MOVS            R1, #5
2FCF98:  MOVS            R2, #1
2FCF9A:  MOVS            R3, #1
2FCF9C:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCFA0:  MOVS            R0, #1; int
2FCFA2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCFA6:  MOVS            R1, #0x12
2FCFA8:  MOVS            R2, #0xA
2FCFAA:  MOVS            R3, #1
2FCFAC:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCFB0:  MOVS            R0, #1; int
2FCFB2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCFB6:  MOVS            R1, #0x16
2FCFB8:  MOVS            R2, #0x64 ; 'd'
2FCFBA:  MOVS            R3, #1
2FCFBC:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCFC0:  MOVS            R0, #1; int
2FCFC2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCFC6:  MOVS            R1, #0x19
2FCFC8:  MOVS            R2, #0x32 ; '2'
2FCFCA:  MOVS            R3, #1
2FCFCC:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCFD0:  MOVS            R0, #1; int
2FCFD2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCFD6:  MOVS            R1, #0x1C
2FCFD8:  MOVS            R2, #0x96
2FCFDA:  MOVS            R3, #1
2FCFDC:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCFE0:  MOVS            R0, #1; int
2FCFE2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCFE6:  MOVS            R1, #0x1E
2FCFE8:  MOVS            R2, #0x78 ; 'x'
2FCFEA:  MOVS            R3, #1
2FCFEC:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FCFF0:  MOVS            R0, #1; int
2FCFF2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FCFF6:  MOVS            R1, #0x21 ; '!'
2FCFF8:  MOVS            R2, #0x19
2FCFFA:  MOVS            R3, #1
2FCFFC:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FD000:  MOVS            R0, #1; int
2FD002:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD006:  MOVS            R1, #0x23 ; '#'
2FD008:  MOVS            R2, #0xC8
2FD00A:  MOVS            R3, #1
2FD00C:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FD010:  MOVS            R0, #1; int
2FD012:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD016:  MOVS            R1, #0x29 ; ')'
2FD018:  MOVS            R2, #0xC8
2FD01A:  MOVS            R3, #1
2FD01C:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FD020:  MOVW            R0, #(elf_hash_bucket+0x4F); this
2FD024:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
2FD028:  MOV.W           R0, #(elf_hash_bucket+0x64); this
2FD02C:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
2FD030:  MOV.W           R0, #(elf_hash_bucket+0x54); this
2FD034:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
2FD038:  MOV.W           R0, #(elf_hash_bucket+0x5C); this
2FD03C:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
2FD040:  MOVW            R0, #(elf_hash_bucket+0x61); this
2FD044:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
2FD048:  MOVW            R0, #(elf_hash_bucket+0x67); this
2FD04C:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
2FD050:  MOVW            R0, #(elf_hash_bucket+0x69); this
2FD054:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
2FD058:  MOVW            R0, #(elf_hash_bucket+0x6B); this
2FD05C:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
2FD060:  MOVW            R0, #(elf_hash_bucket+0x71); this
2FD064:  POP.W           {R7,LR}
2FD068:  B.W             j_j__ZN10CStreaming19SetModelIsDeletableEi; j_CStreaming::SetModelIsDeletable(int)
