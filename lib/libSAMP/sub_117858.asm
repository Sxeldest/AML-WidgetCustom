; =========================================================
; Game Engine Function: sub_117858
; Address            : 0x117858 - 0x1179F2
; =========================================================

117858:  PUSH            {R4-R7,LR}
11785A:  ADD             R7, SP, #0xC
11785C:  PUSH.W          {R8-R11}
117860:  SUB             SP, SP, #0x1C
117862:  VMOV.I32        Q8, #0
117866:  MOV             R10, R0
117868:  ADD.W           R8, R10, #0x4C ; 'L'
11786C:  LDR             R0, =(_ZTV14CRedAndBlueSpd - 0x11787C); `vtable for'CRedAndBlueSpd ...
11786E:  STR.W           R8, [SP,#0x38+var_20]
117872:  MOVS            R1, #0
117874:  VST1.32         {D16-D17}, [R8]!
117878:  ADD             R0, PC; `vtable for'CRedAndBlueSpd
11787A:  MOV             R9, R10
11787C:  MOV.W           R2, #0xFFFFFFFF
117880:  MOV             R4, R8
117882:  MOV.W           R6, #0x3F800000
117886:  VST1.32         {D16-D17}, [R4]!
11788A:  ADD.W           R5, R0, #8
11788E:  MOV             R11, R10
117890:  MOVS            R3, #0
117892:  STRD.W          R5, R6, [R10]
117896:  MOV             R5, R10
117898:  STRD.W          R2, R1, [R10,#0x40]
11789C:  MOV             R6, R10
11789E:  STRD.W          R1, R1, [R10,#0x30]
1178A2:  MOVS            R2, #0
1178A4:  STRB.W          R1, [R10,#0x48]
1178A8:  MOVT            R2, #0x43E0
1178AC:  STRD.W          R1, R1, [R10,#0x24]
1178B0:  MOVT            R3, #0x4420
1178B4:  STR.W           R1, [R10,#0x1C]
1178B8:  STR.W           R1, [R10,#0x14]
1178BC:  STR             R1, [R4]
1178BE:  STR.W           R1, [R9,#0x70]!
1178C2:  ADD.W           R1, R0, #0x88
1178C6:  STR.W           R1, [R5,#0x20]!
1178CA:  ADD.W           R1, R0, #0x78 ; 'x'
1178CE:  ADDS            R0, #0x60 ; '`'
1178D0:  STR.W           R0, [R11,#0x10]!
1178D4:  ADD.W           R0, R10, #0x68 ; 'h'
1178D8:  STR             R0, [SP,#0x38+var_30]
1178DA:  ADD.W           R0, R10, #0x64 ; 'd'
1178DE:  STR             R0, [SP,#0x38+var_38]
1178E0:  ADD.W           R0, R10, #0x60 ; '`'
1178E4:  STR             R0, [SP,#0x38+var_34]
1178E6:  ADD.W           R0, R10, #0x58 ; 'X'
1178EA:  STR             R0, [SP,#0x38+var_2C]
1178EC:  ADD.W           R0, R10, #0x54 ; 'T'
1178F0:  STR             R0, [SP,#0x38+var_28]
1178F2:  ADD.W           R0, R10, #0x50 ; 'P'
1178F6:  STR.W           R1, [R6,#0x18]!
1178FA:  STRD.W          R3, R2, [R10,#8]
1178FE:  STR             R0, [SP,#0x38+var_24]
117900:  BL              sub_117AA8
117904:  MOV             R1, R0
117906:  LDR             R2, =(aArzhudSpdBg - 0x11790C); "arzhud_spd_bg" ...
117908:  ADD             R2, PC; "arzhud_spd_bg"
11790A:  ADD.W           R0, R10, #0x14
11790E:  BL              sub_163144
117912:  BL              sub_117AA8
117916:  MOV             R1, R0
117918:  LDR             R2, =(aArzhudSpdArrow - 0x11791E); "arzhud_spd_arrow" ...
11791A:  ADD             R2, PC; "arzhud_spd_arrow"
11791C:  ADD.W           R0, R10, #0x1C
117920:  BL              sub_163144
117924:  BL              sub_117AA8
117928:  MOV             R1, R0
11792A:  LDR             R2, =(aArzhudSpdDoor - 0x117930); "arzhud_spd_door" ...
11792C:  ADD             R2, PC; "arzhud_spd_door"
11792E:  LDR             R0, [SP,#0x38+var_20]
117930:  BL              sub_163144
117934:  BL              sub_117AA8
117938:  MOV             R1, R0
11793A:  LDR             R2, =(aArzhudSpdEngin - 0x117940); "arzhud_spd_engine" ...
11793C:  ADD             R2, PC; "arzhud_spd_engine"
11793E:  LDR             R0, [SP,#0x38+var_24]
117940:  BL              sub_163144
117944:  BL              sub_117AA8
117948:  MOV             R1, R0
11794A:  LDR             R2, =(aArzhudSpdLight - 0x117950); "arzhud_spd_light" ...
11794C:  ADD             R2, PC; "arzhud_spd_light"
11794E:  LDR             R0, [SP,#0x38+var_28]
117950:  BL              sub_163144
117954:  BL              sub_117AA8
117958:  MOV             R1, R0
11795A:  LDR             R2, =(aArzhudSpdPark - 0x117960); "arzhud_spd_park" ...
11795C:  ADD             R2, PC; "arzhud_spd_park"
11795E:  LDR             R0, [SP,#0x38+var_2C]
117960:  BL              sub_163144
117964:  BL              sub_117AA8
117968:  MOV             R1, R0
11796A:  LDR             R2, =(aArzhudSpdIndbg - 0x117970); "arzhud_spd_indbg" ...
11796C:  ADD             R2, PC; "arzhud_spd_indbg"
11796E:  MOV             R0, R8
117970:  BL              sub_163144
117974:  BL              sub_117AA8
117978:  MOV             R1, R0
11797A:  LDR             R2, =(aArzhudSpdSquar - 0x117980); "arzhud_spd_square" ...
11797C:  ADD             R2, PC; "arzhud_spd_square"
11797E:  LDR             R0, [SP,#0x38+var_34]
117980:  BL              sub_163144
117984:  BL              sub_117AA8
117988:  MOV             R1, R0
11798A:  LDR             R2, =(aArzhudSpdHp - 0x117990); "arzhud_spd_hp" ...
11798C:  ADD             R2, PC; "arzhud_spd_hp"
11798E:  LDR             R0, [SP,#0x38+var_38]
117990:  BL              sub_163144
117994:  BL              sub_117AA8
117998:  MOV             R1, R0
11799A:  LDR             R2, =(aArzhudSpdGas - 0x1179A0); "arzhud_spd_gas" ...
11799C:  ADD             R2, PC; "arzhud_spd_gas"
11799E:  LDR             R0, [SP,#0x38+var_30]
1179A0:  BL              sub_163144
1179A4:  BL              sub_117AA8
1179A8:  MOV             R1, R0
1179AA:  LDR             R2, =(aArzhudSpdMenuB - 0x1179B0); "arzhud_spd_menu_bg" ...
1179AC:  ADD             R2, PC; "arzhud_spd_menu_bg"
1179AE:  ADD.W           R0, R10, #0x24 ; '$'
1179B2:  BL              sub_163144
1179B6:  BL              sub_117AA8
1179BA:  MOV             R1, R0
1179BC:  LDR             R2, =(aArzhudSpdMenuS - 0x1179C2); "arzhud_spd_menu_select" ...
1179BE:  ADD             R2, PC; "arzhud_spd_menu_select"
1179C0:  ADD.W           R0, R10, #0x28 ; '('
1179C4:  BL              sub_163144
1179C8:  BL              sub_117AA8
1179CC:  MOV             R1, R0
1179CE:  LDR             R2, =(aArzhudSpdRadio - 0x1179D4); "arzhud_spd_radio" ...
1179D0:  ADD             R2, PC; "arzhud_spd_radio"
1179D2:  MOV             R0, R4
1179D4:  BL              sub_163144
1179D8:  BL              sub_117AA8
1179DC:  MOV             R1, R0
1179DE:  LDR             R2, =(aArzhudSpdMenu - 0x1179E4); "arzhud_spd_menu" ...
1179E0:  ADD             R2, PC; "arzhud_spd_menu"
1179E2:  MOV             R0, R9
1179E4:  BL              sub_163144
1179E8:  MOV             R0, R10
1179EA:  ADD             SP, SP, #0x1C
1179EC:  POP.W           {R8-R11}
1179F0:  POP             {R4-R7,PC}
