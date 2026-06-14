; =========================================================
; Game Engine Function: _ZN11CWeaponInfo10InitialiseEv
; Address            : 0x474648 - 0x4746CC
; =========================================================

474648:  PUSH            {R4-R7,LR}
47464A:  ADD             R7, SP, #0xC
47464C:  PUSH.W          {R11}
474650:  LDR             R1, =(aWeaponInfo_ptr - 0x474660)
474652:  VMOV.I32        Q8, #0
474656:  MOVS            R0, #0
474658:  MOV.W           R2, #0xFFFFFFFF
47465C:  ADD             R1, PC; aWeaponInfo_ptr
47465E:  MOV.W           R12, #1
474662:  MOV.W           R3, #0x3F800000
474666:  MOV.W           LR, #0x104
47466A:  LDR             R1, [R1]; aWeaponInfo
47466C:  MOVS            R4, #0
47466E:  ADDS            R5, R1, R4
474670:  STR             R0, [R1,R4]
474672:  ADD.W           R6, R5, #0x1C
474676:  STRD.W          R0, R0, [R5,#4]
47467A:  ADDS            R4, #0x70 ; 'p'
47467C:  STRD.W          R2, R2, [R5,#0xC]
474680:  CMP.W           R4, #0x2300
474684:  STRD.W          R2, R0, [R5,#0x14]
474688:  STRD.W          R0, R12, [R5,#0x2C]
47468C:  STRD.W          R0, R3, [R5,#0x34]
474690:  STR             R3, [R5,#0x3C]
474692:  STRH.W          LR, [R5,#0x6E]
474696:  VST1.32         {D16-D17}, [R6]
47469A:  ADD.W           R6, R5, #0x5E ; '^'
47469E:  VST1.16         {D16-D17}, [R6]
4746A2:  ADD.W           R6, R5, #0x50 ; 'P'
4746A6:  ADD.W           R5, R5, #0x40 ; '@'
4746AA:  VST1.32         {D16-D17}, [R6]
4746AE:  VST1.32         {D16-D17}, [R5]
4746B2:  BNE             loc_47466E
4746B4:  LDR             R0, =(_ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr - 0x4746BE)
4746B6:  MOV.W           R1, #0x1F8
4746BA:  ADD             R0, PC; _ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr
4746BC:  LDR             R0, [R0]; CWeaponInfo::ms_aWeaponAimOffsets ...
4746BE:  BLX             j___aeabi_memclr8_0
4746C2:  POP.W           {R11}
4746C6:  POP.W           {R4-R7,LR}
4746CA:  B               _ZN11CWeaponInfo14LoadWeaponDataEv; CWeaponInfo::LoadWeaponData(void)
