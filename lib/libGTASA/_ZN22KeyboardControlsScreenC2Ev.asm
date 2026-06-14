; =========================================================
; Game Engine Function: _ZN22KeyboardControlsScreenC2Ev
; Address            : 0x29F850 - 0x29F938
; =========================================================

29F850:  PUSH            {R4-R7,LR}
29F852:  ADD             R7, SP, #0xC
29F854:  PUSH.W          {R8}
29F858:  LDR             R1, =(_ZTV10MenuScreen_ptr - 0x29F866)
29F85A:  MOV             R4, R0
29F85C:  LDR             R0, =(aMenuSelector - 0x29F86C); "menu_selector"
29F85E:  MOV.W           R8, #1
29F862:  ADD             R1, PC; _ZTV10MenuScreen_ptr
29F864:  STRB.W          R8, [R4,#0xC]
29F868:  ADD             R0, PC; "menu_selector"
29F86A:  LDR             R1, [R1]; `vtable for'MenuScreen ...
29F86C:  ADDS            R1, #8; char *
29F86E:  STR             R1, [R4]
29F870:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29F874:  VMOV.I32        Q9, #0
29F878:  LDR             R5, [R0,#0x54]
29F87A:  ADD.W           R6, R4, #0x21 ; '!'
29F87E:  LDR             R1, =(_ZTV22KeyboardControlsScreen_ptr - 0x29F890)
29F880:  ADDS            R5, #1
29F882:  STR             R5, [R0,#0x54]
29F884:  VST1.8          {D18-D19}, [R6]
29F888:  ADD.W           R6, R4, #0x14
29F88C:  ADD             R1, PC; _ZTV22KeyboardControlsScreen_ptr
29F88E:  ADR             R2, dword_29F940
29F890:  VLD1.64         {D16-D17}, [R2@128]
29F894:  VST1.32         {D18-D19}, [R6]
29F898:  ADD.W           R6, R4, #0x48 ; 'H'
29F89C:  LDR             R1, [R1]; `vtable for'KeyboardControlsScreen ...
29F89E:  LDR             R2, =(byte_61CD7E - 0x29F8AE)
29F8A0:  VST1.32         {D16-D17}, [R6]
29F8A4:  ADD.W           R6, R4, #0x68 ; 'h'
29F8A8:  ADDS            R1, #8
29F8AA:  ADD             R2, PC; byte_61CD7E
29F8AC:  LDR             R3, =(byte_6E01A8 - 0x29F8B6)
29F8AE:  VST1.32         {D16-D17}, [R6]
29F8B2:  ADD             R3, PC; byte_6E01A8
29F8B4:  STR             R2, [R4,#0x10]
29F8B6:  MOVS            R2, #0
29F8B8:  STRD.W          R1, R0, [R4]
29F8BC:  MOVW            R0, #0x2400
29F8C0:  MOVW            R1, #0x2400
29F8C4:  MOVT            R0, #0x4974
29F8C8:  MOVT            R1, #0xC974
29F8CC:  STR             R2, [R4,#8]
29F8CE:  STRD.W          R0, R1, [R4,#0x58]
29F8D2:  STRD.W          R1, R0, [R4,#0x60]
29F8D6:  MOV.W           R0, #0xFFFFFFFF
29F8DA:  STRB            R2, [R3]
29F8DC:  STRD.W          R2, R2, [R4,#0x34]
29F8E0:  STRD.W          R2, R2, [R4,#0x3C]
29F8E4:  STR             R2, [R4,#0x44]
29F8E6:  STR.W           R0, [R4,#0x80]
29F8EA:  MOV.W           R0, #0xFFFFFFFF; int
29F8EE:  STRB.W          R2, [R4,#0x78]
29F8F2:  STRB.W          R2, [R4,#0x191]
29F8F6:  STR.W           R2, [R4,#0x8E]
29F8FA:  STR.W           R2, [R4,#0x8A]
29F8FE:  STRD.W          R2, R2, [R4,#0x84]
29F902:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
29F906:  CMP             R0, #0
29F908:  BEQ             loc_29F926
29F90A:  MOV.W           R0, #0xFFFFFFFF; int
29F90E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
29F912:  LDR.W           R0, [R0,#0x44C]
29F916:  CMP             R0, #0x32 ; '2'
29F918:  BNE             loc_29F926
29F91A:  MOVS            R0, #2
29F91C:  STR             R0, [R4,#0x7C]
29F91E:  MOV             R0, R4; this
29F920:  BLX             j__ZN22KeyboardControlsScreen17DoVehicleMappingsEv; KeyboardControlsScreen::DoVehicleMappings(void)
29F924:  B               loc_29F930
29F926:  MOV             R0, R4; this
29F928:  STR.W           R8, [R4,#0x7C]
29F92C:  BLX             j__ZN22KeyboardControlsScreen16DoOnFootMappingsEv; KeyboardControlsScreen::DoOnFootMappings(void)
29F930:  MOV             R0, R4
29F932:  POP.W           {R8}
29F936:  POP             {R4-R7,PC}
