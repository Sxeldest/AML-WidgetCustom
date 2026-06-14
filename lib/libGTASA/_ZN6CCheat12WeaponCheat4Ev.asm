; =========================================================
; Game Engine Function: _ZN6CCheat12WeaponCheat4Ev
; Address            : 0x2FD3F0 - 0x2FD474
; =========================================================

2FD3F0:  PUSH            {R4,R6,R7,LR}
2FD3F2:  ADD             R7, SP, #8
2FD3F4:  LDR             R4, =(byte_79688D - 0x2FD3FE)
2FD3F6:  MOVW            R0, #0x171
2FD3FA:  ADD             R4, PC; byte_79688D
2FD3FC:  LDRB            R1, [R4]
2FD3FE:  CMP             R1, #0
2FD400:  MOV.W           R1, #2; int
2FD404:  IT NE
2FD406:  MOVNE.W         R0, #(elf_hash_bucket+0x74); this
2FD40A:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FD40E:  MOV.W           R0, #(elf_hash_bucket+0x6E); this
2FD412:  MOVS            R1, #2; int
2FD414:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FD418:  MOV.W           R0, #(elf_hash_bucket+0x46); this
2FD41C:  MOVS            R1, #2; int
2FD41E:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FD422:  MOVS            R0, #0; this
2FD424:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FD428:  MOV.W           R0, #0xFFFFFFFF; int
2FD42C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD430:  LDRB            R2, [R4]
2FD432:  MOVS            R1, #0x2D ; '-'
2FD434:  MOVS            R3, #1
2FD436:  CMP             R2, #0
2FD438:  MOV.W           R2, #1
2FD43C:  IT NE
2FD43E:  MOVNE           R1, #0x2C ; ','
2FD440:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FD444:  MOV.W           R0, #0xFFFFFFFF; int
2FD448:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD44C:  MOVS            R1, #0x26 ; '&'
2FD44E:  MOV.W           R2, #0x1F4
2FD452:  MOVS            R3, #1
2FD454:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FD458:  MOV.W           R0, #0xFFFFFFFF; int
2FD45C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD460:  MOVS            R1, #0xB
2FD462:  MOVS            R2, #0
2FD464:  MOVS            R3, #1
2FD466:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FD46A:  LDRB            R0, [R4]
2FD46C:  EOR.W           R0, R0, #1
2FD470:  STRB            R0, [R4]
2FD472:  POP             {R4,R6,R7,PC}
