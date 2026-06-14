; =========================================================
; Game Engine Function: sub_11866C
; Address            : 0x11866C - 0x11880C
; =========================================================

11866C:  PUSH            {R4-R7,LR}
11866E:  ADD             R7, SP, #0xC
118670:  PUSH.W          {R8-R11}
118674:  SUB             SP, SP, #0x24
118676:  MOV             R8, R0
118678:  ADD.W           R5, R8, #0x4C ; 'L'
11867C:  VMOV.I32        Q8, #0
118680:  LDR             R0, =(_ZTV15CTransparentSpd - 0x11869C); `vtable for'CTransparentSpd ...
118682:  MOVS            R1, #0
118684:  MOV             R4, R5
118686:  MOV.W           R2, #0xFFFFFFFF
11868A:  ADD.W           R10, R8, #0x68 ; 'h'
11868E:  STRD.W          R2, R1, [R8,#0x40]
118692:  MOVS            R2, #0
118694:  VST1.32         {D16-D17}, [R4]!
118698:  ADD             R0, PC; `vtable for'CTransparentSpd
11869A:  MOVT            R2, #0x4420
11869E:  MOV.W           R3, #0x3F800000
1186A2:  STRD.W          R1, R1, [R8,#0x30]
1186A6:  ADD.W           R6, R0, #8
1186AA:  STRB.W          R1, [R8,#0x48]
1186AE:  MOV             R9, R10
1186B0:  STRD.W          R1, R1, [R8,#0x24]
1186B4:  MOV             R11, R4
1186B6:  STR.W           R1, [R8,#0x1C]
1186BA:  STR.W           R1, [R8,#0x14]
1186BE:  MOVS            R1, #0x43E00000
1186C4:  STRD.W          R6, R3, [R8]
1186C8:  STRD.W          R2, R1, [R8,#8]
1186CC:  MOVS            R1, #4
1186CE:  VST1.32         {D16-D17}, [R9],R1
1186D2:  MOV             R6, R8
1186D4:  MOV             R2, R8
1186D6:  VST1.32         {D16-D17}, [R11],R1
1186DA:  ADD.W           R1, R0, #0x88
1186DE:  STR.W           R1, [R6,#0x20]!
1186E2:  ADD.W           R1, R0, #0x78 ; 'x'
1186E6:  STR.W           R1, [R2,#0x18]!
1186EA:  ADDS            R0, #0x60 ; '`'
1186EC:  MOV             R1, R8
1186EE:  STR             R2, [SP,#0x40+var_3C]
1186F0:  STR.W           R0, [R1,#0x10]!
1186F4:  ADD.W           R0, R8, #0x74 ; 't'
1186F8:  STR             R0, [SP,#0x40+var_20]
1186FA:  ADD.W           R0, R8, #0x70 ; 'p'
1186FE:  STR             R0, [SP,#0x40+var_30]
118700:  ADD.W           R0, R8, #0x64 ; 'd'
118704:  STR             R0, [SP,#0x40+var_34]
118706:  ADD.W           R0, R8, #0x58 ; 'X'
11870A:  STR             R0, [SP,#0x40+var_2C]
11870C:  ADD.W           R0, R8, #0x54 ; 'T'
118710:  STR             R0, [SP,#0x40+var_28]
118712:  ADD.W           R0, R8, #0x50 ; 'P'
118716:  STR             R1, [SP,#0x40+var_38]
118718:  STR             R0, [SP,#0x40+var_24]
11871A:  BL              sub_117AA8
11871E:  MOV             R1, R0
118720:  LDR             R2, =(aArzhudSpdBg2 - 0x118726); "arzhud_spd_bg2" ...
118722:  ADD             R2, PC; "arzhud_spd_bg2"
118724:  ADD.W           R0, R8, #0x14
118728:  BL              sub_163144
11872C:  BL              sub_117AA8
118730:  MOV             R1, R0
118732:  LDR             R2, =(aArzhudSpdArrow - 0x118738); "arzhud_spd_arrow" ...
118734:  ADD             R2, PC; "arzhud_spd_arrow"
118736:  ADD.W           R0, R8, #0x1C
11873A:  BL              sub_163144
11873E:  BL              sub_117AA8
118742:  MOV             R1, R0
118744:  LDR             R2, =(aArzhudSpdDoor - 0x11874A); "arzhud_spd_door" ...
118746:  ADD             R2, PC; "arzhud_spd_door"
118748:  MOV             R0, R5
11874A:  BL              sub_163144
11874E:  BL              sub_117AA8
118752:  MOV             R1, R0
118754:  LDR             R2, =(aArzhudSpdEngin - 0x11875A); "arzhud_spd_engine" ...
118756:  ADD             R2, PC; "arzhud_spd_engine"
118758:  LDR             R0, [SP,#0x40+var_24]
11875A:  BL              sub_163144
11875E:  BL              sub_117AA8
118762:  MOV             R1, R0
118764:  LDR             R2, =(aArzhudSpdLight - 0x11876A); "arzhud_spd_light" ...
118766:  ADD             R2, PC; "arzhud_spd_light"
118768:  LDR             R0, [SP,#0x40+var_28]
11876A:  BL              sub_163144
11876E:  BL              sub_117AA8
118772:  MOV             R1, R0
118774:  LDR             R2, =(aArzhudSpdPark - 0x11877A); "arzhud_spd_park" ...
118776:  ADD             R2, PC; "arzhud_spd_park"
118778:  LDR             R0, [SP,#0x40+var_2C]
11877A:  BL              sub_163144
11877E:  BL              sub_117AA8
118782:  MOV             R1, R0
118784:  LDR             R2, =(aArzhudSpdTurn - 0x11878A); "arzhud_spd_turn" ...
118786:  ADD             R2, PC; "arzhud_spd_turn"
118788:  MOV             R0, R4
11878A:  BL              sub_163144
11878E:  BL              sub_117AA8
118792:  MOV             R1, R0
118794:  LDR             R2, =(aArzhudSpdRect - 0x11879A); "arzhud_spd_rect" ...
118796:  ADD             R2, PC; "arzhud_spd_rect"
118798:  LDR             R0, [SP,#0x40+var_34]
11879A:  BL              sub_163144
11879E:  BL              sub_117AA8
1187A2:  MOV             R1, R0
1187A4:  LDR             R2, =(aArzhudSpdHp - 0x1187AA); "arzhud_spd_hp" ...
1187A6:  ADD             R2, PC; "arzhud_spd_hp"
1187A8:  MOV             R0, R10
1187AA:  BL              sub_163144
1187AE:  BL              sub_117AA8
1187B2:  MOV             R1, R0
1187B4:  LDR             R2, =(aArzhudSpdGas - 0x1187BA); "arzhud_spd_gas" ...
1187B6:  ADD             R2, PC; "arzhud_spd_gas"
1187B8:  MOV             R0, R9
1187BA:  BL              sub_163144
1187BE:  BL              sub_117AA8
1187C2:  MOV             R1, R0
1187C4:  LDR             R2, =(aArzhudSpdMenuB_0 - 0x1187CA); "arzhud_spd_menu_bg2" ...
1187C6:  ADD             R2, PC; "arzhud_spd_menu_bg2"
1187C8:  ADD.W           R0, R8, #0x24 ; '$'
1187CC:  BL              sub_163144
1187D0:  BL              sub_117AA8
1187D4:  MOV             R1, R0
1187D6:  LDR             R2, =(aArzhudSpdMenuS - 0x1187DC); "arzhud_spd_menu_select" ...
1187D8:  ADD             R2, PC; "arzhud_spd_menu_select"
1187DA:  ADD.W           R0, R8, #0x28 ; '('
1187DE:  BL              sub_163144
1187E2:  BL              sub_117AA8
1187E6:  MOV             R1, R0
1187E8:  LDR             R2, =(aArzhudSpdRadio - 0x1187EE); "arzhud_spd_radio" ...
1187EA:  ADD             R2, PC; "arzhud_spd_radio"
1187EC:  LDR             R0, [SP,#0x40+var_30]
1187EE:  BL              sub_163144
1187F2:  BL              sub_117AA8
1187F6:  MOV             R1, R0
1187F8:  LDR             R2, =(aArzhudSpdMenu - 0x1187FE); "arzhud_spd_menu" ...
1187FA:  ADD             R2, PC; "arzhud_spd_menu"
1187FC:  LDR             R0, [SP,#0x40+var_20]
1187FE:  BL              sub_163144
118802:  MOV             R0, R8
118804:  ADD             SP, SP, #0x24 ; '$'
118806:  POP.W           {R8-R11}
11880A:  POP             {R4-R7,PC}
