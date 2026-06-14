; =========================================================
; Game Engine Function: _Z15HandleSlotOtherv
; Address            : 0x3002D4 - 0x3003C8
; =========================================================

3002D4:  PUSH            {R7,LR}
3002D6:  MOV             R7, SP
3002D8:  SUB             SP, SP, #0x108
3002DA:  LDR             R0, =(__stack_chk_guard_ptr - 0x3002E2)
3002DC:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3002E4)
3002DE:  ADD             R0, PC; __stack_chk_guard_ptr
3002E0:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3002E2:  LDR             R0, [R0]; __stack_chk_guard
3002E4:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
3002E6:  LDR             R0, [R0]
3002E8:  STR             R0, [SP,#0x110+var_C]
3002EA:  LDR.W           R0, [R1,#(dword_6F39F0 - 0x6F3794)]; this
3002EE:  MOV             R1, SP; char *
3002F0:  BLX             j__ZN11CWidgetList16GetSelectedEntryEPc; CWidgetList::GetSelectedEntry(char *)
3002F4:  CMP             R0, #5; switch 6 cases
3002F6:  BHI             def_3002F8; jumptable 003002F8 default case
3002F8:  TBB.W           [PC,R0]; switch jump
3002FC:  DCB 3; jump table for switch statement
3002FD:  DCB 0x11
3002FE:  DCB 0x1F
3002FF:  DCB 0x2D
300300:  DCB 0x3B
300301:  DCB 0x49
300302:  MOV.W           R0, #(elf_hash_bucket+0x4A); jumptable 003002F8 case 0
300306:  MOVS            R1, #2; int
300308:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
30030C:  MOVS            R0, #0; this
30030E:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
300312:  MOV.W           R0, #0xFFFFFFFF; int
300316:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30031A:  MOVS            R1, #0xF
30031C:  B               loc_3003A8
30031E:  MOVW            R0, #(elf_hash_bucket+0x49); jumptable 003002F8 case 1
300322:  MOVS            R1, #2; int
300324:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
300328:  MOVS            R0, #0; this
30032A:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
30032E:  MOV.W           R0, #0xFFFFFFFF; int
300332:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300336:  MOVS            R1, #0xE
300338:  B               loc_3003A8
30033A:  MOVW            R0, #(elf_hash_bucket+0x45); jumptable 003002F8 case 2
30033E:  MOVS            R1, #2; int
300340:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
300344:  MOVS            R0, #0; this
300346:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
30034A:  MOV.W           R0, #0xFFFFFFFF; int
30034E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300352:  MOVS            R1, #0xA
300354:  B               loc_3003A8
300356:  MOV.W           R0, #(elf_hash_bucket+0x46); jumptable 003002F8 case 3
30035A:  MOVS            R1, #2; int
30035C:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
300360:  MOVS            R0, #0; this
300362:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
300366:  MOV.W           R0, #0xFFFFFFFF; int
30036A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30036E:  MOVS            R1, #0xB
300370:  B               loc_3003A8
300372:  MOVW            R0, #(elf_hash_bucket+0x47); jumptable 003002F8 case 4
300376:  MOVS            R1, #2; int
300378:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
30037C:  MOVS            R0, #0; this
30037E:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
300382:  MOV.W           R0, #0xFFFFFFFF; int
300386:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30038A:  MOVS            R1, #0xC
30038C:  B               loc_3003A8
30038E:  MOV.W           R0, #(elf_hash_bucket+0x48); jumptable 003002F8 case 5
300392:  MOVS            R1, #2; int
300394:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
300398:  MOVS            R0, #0; this
30039A:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
30039E:  MOV.W           R0, #0xFFFFFFFF; int
3003A2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3003A6:  MOVS            R1, #0xD
3003A8:  MOV.W           R2, #0x1F4
3003AC:  MOVS            R3, #1
3003AE:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
3003B2:  LDR             R0, =(__stack_chk_guard_ptr - 0x3003BA); jumptable 003002F8 default case
3003B4:  LDR             R1, [SP,#0x110+var_C]
3003B6:  ADD             R0, PC; __stack_chk_guard_ptr
3003B8:  LDR             R0, [R0]; __stack_chk_guard
3003BA:  LDR             R0, [R0]
3003BC:  SUBS            R0, R0, R1
3003BE:  ITT EQ
3003C0:  ADDEQ           SP, SP, #0x108
3003C2:  POPEQ           {R7,PC}
3003C4:  BLX             __stack_chk_fail
