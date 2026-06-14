; =========================================================
; Game Engine Function: _Z14RpClumpDestroyP7RpClump
; Address            : 0x21460C - 0x214742
; =========================================================

21460C:  PUSH            {R4-R7,LR}
21460E:  ADD             R7, SP, #0xC
214610:  PUSH.W          {R8-R11}
214614:  SUB             SP, SP, #4
214616:  MOV             R4, R0
214618:  LDR             R0, =(dword_683B60 - 0x214620)
21461A:  MOV             R1, R4
21461C:  ADD             R0, PC; dword_683B60
21461E:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
214622:  STR             R4, [SP,#0x20+var_20]
214624:  MOV             R10, R4
214626:  LDR.W           R9, [R10,#8]!
21462A:  CMP             R9, R10
21462C:  BEQ             loc_21469E
21462E:  LDR             R0, =(RwEngineInstance_ptr - 0x214638)
214630:  LDR.W           R11, =(dword_6BD598 - 0x21463A)
214634:  ADD             R0, PC; RwEngineInstance_ptr
214636:  ADD             R11, PC; dword_6BD598
214638:  LDR.W           R8, [R0]; RwEngineInstance
21463C:  LDR             R0, =(dword_683B48 - 0x21464C)
21463E:  MOV             R5, R9
214640:  SUB.W           R6, R5, #0x40 ; '@'
214644:  LDR.W           R9, [R5]
214648:  ADD             R0, PC; dword_683B48
21464A:  MOV             R1, R6
21464C:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
214650:  LDR.W           R0, [R5,#-0x2C]
214654:  CMP             R0, #0
214656:  IT NE
214658:  BLXNE           j__Z23RwResourcesFreeResEntryP10RwResEntry; RwResourcesFreeResEntry(RwResEntry *)
21465C:  LDR.W           R0, [R5,#-0x28]
214660:  CBZ             R0, loc_214682
214662:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
214666:  LDR.W           R4, [R5,#-0x3C]
21466A:  MOVS            R0, #0
21466C:  STR.W           R0, [R5,#-0x28]
214670:  CBZ             R4, loc_214682
214672:  MOV             R0, R6
214674:  BLX             j__Z16RpAtomicGetWorldPK8RpAtomic; RpAtomicGetWorld(RpAtomic const*)
214678:  CMP             R0, #0
21467A:  ITT NE
21467C:  MOVNE           R0, R4
21467E:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
214682:  MOV             R0, R6; void *
214684:  BLX             j__Z29_rwObjectHasFrameReleaseFramePv; _rwObjectHasFrameReleaseFrame(void *)
214688:  LDR.W           R1, [R8]
21468C:  LDR.W           R0, [R11]
214690:  LDR.W           R2, [R1,#0x140]
214694:  LDR             R0, [R1,R0]
214696:  MOV             R1, R6
214698:  BLX             R2
21469A:  CMP             R9, R10
21469C:  BNE             loc_21463C
21469E:  LDR.W           R10, [SP,#0x20+var_20]
2146A2:  MOVS            R6, #0
2146A4:  LDR.W           R8, =(dword_6BD594 - 0x2146AE)
2146A8:  MOV             R9, R10
2146AA:  ADD             R8, PC; dword_6BD594
2146AC:  LDR.W           R0, [R9,#0x10]!
2146B0:  CMP             R0, R9
2146B2:  BEQ             loc_2146DA
2146B4:  LDRD.W          R5, R1, [R0]
2146B8:  LDR.W           R2, [R8]
2146BC:  STR             R5, [R1]
2146BE:  LDRD.W          R1, R3, [R0]
2146C2:  STR             R3, [R1,#4]
2146C4:  STRD.W          R6, R6, [R0]
2146C8:  STR.W           R6, [R0,#-4]!
2146CC:  SUBS            R4, R0, R2
2146CE:  MOV             R0, R4
2146D0:  BLX             j__Z14RpLightDestroyP7RpLight; RpLightDestroy(RpLight *)
2146D4:  CMP             R4, #0
2146D6:  MOV             R0, R5
2146D8:  BNE             loc_2146B0
2146DA:  MOV             R9, R10
2146DC:  LDR.W           R8, =(dword_6BD590 - 0x2146EA)
2146E0:  LDR.W           R0, [R9,#0x18]!
2146E4:  MOVS            R6, #0
2146E6:  ADD             R8, PC; dword_6BD590
2146E8:  CMP             R0, R9
2146EA:  BEQ             loc_214712
2146EC:  LDRD.W          R5, R1, [R0]
2146F0:  LDR.W           R2, [R8]
2146F4:  STR             R5, [R1]
2146F6:  LDRD.W          R1, R3, [R0]
2146FA:  STR             R3, [R1,#4]
2146FC:  STRD.W          R6, R6, [R0]
214700:  STR.W           R6, [R0,#-4]!
214704:  SUBS            R4, R0, R2
214706:  MOV             R0, R4
214708:  BLX             j__Z15RwCameraDestroyP8RwCamera; RwCameraDestroy(RwCamera *)
21470C:  CMP             R4, #0
21470E:  MOV             R0, R5
214710:  BNE             loc_2146E8
214712:  LDR.W           R0, [R10,#4]
214716:  CMP             R0, #0
214718:  IT NE
21471A:  BLXNE           j__Z23RwFrameDestroyHierarchyP7RwFrame; RwFrameDestroyHierarchy(RwFrame *)
21471E:  LDR             R0, =(RwEngineInstance_ptr - 0x214726)
214720:  LDR             R1, =(dword_6BD598 - 0x214728)
214722:  ADD             R0, PC; RwEngineInstance_ptr
214724:  ADD             R1, PC; dword_6BD598
214726:  LDR             R0, [R0]; RwEngineInstance
214728:  LDR             R1, [R1]
21472A:  LDR             R0, [R0]
21472C:  LDR.W           R2, [R0,#0x140]
214730:  ADD             R0, R1
214732:  MOV             R1, R10
214734:  LDR             R0, [R0,#4]
214736:  BLX             R2
214738:  MOVS            R0, #1
21473A:  ADD             SP, SP, #4
21473C:  POP.W           {R8-R11}
214740:  POP             {R4-R7,PC}
