; =========================================================
; Game Engine Function: sub_1528BC
; Address            : 0x1528BC - 0x152960
; =========================================================

1528BC:  PUSH            {R4-R7,LR}
1528BE:  ADD             R7, SP, #0xC
1528C0:  PUSH.W          {R8,R9,R11}
1528C4:  SUB             SP, SP, #0x20
1528C6:  ADD.W           R4, R0, #0xC
1528CA:  SUB.W           R8, R7, #-var_2A
1528CE:  STRH.W          R1, [R7,#var_2A]
1528D2:  MOV             R9, R2
1528D4:  MOV             R0, R4
1528D6:  MOV             R1, R8
1528D8:  BL              sub_15426C
1528DC:  MOVS            R6, #0
1528DE:  CBNZ            R0, loc_152956
1528E0:  MOVS            R0, #0x70 ; 'p'; unsigned int
1528E2:  BLX             j__Znwj; operator new(uint)
1528E6:  LDR             R1, =(_ZTV19AudioChannelVehicle - 0x1528F4); `vtable for'AudioChannelVehicle ...
1528E8:  ADDS            R2, R0, #4
1528EA:  VMOV.I32        Q8, #0
1528EE:  LDR             R3, =(unk_B998D - 0x152904)
1528F0:  ADD             R1, PC; `vtable for'AudioChannelVehicle
1528F2:  MOV.W           R5, #0x3F800000
1528F6:  ADDS            R1, #8
1528F8:  STRD.W          R1, R2, [R0]
1528FC:  LDRH.W          R1, [R9]
152900:  ADD             R3, PC; unk_B998D
152902:  STRH.W          R1, [R0,#0x68]
152906:  ADD.W           R1, R0, #0xC
15290A:  VST1.32         {D16-D17}, [R1]!
15290E:  STR             R6, [R1]
152910:  ADD.W           R1, R0, #0x24 ; '$'
152914:  STR             R2, [R0,#8]
152916:  MOVS            R2, #0x14
152918:  VST1.32         {D16-D17}, [R1]!
15291C:  VST1.32         {D16-D17}, [R1],R2
152920:  STR             R5, [R0,#0x20]
152922:  STRD.W          R6, R6, [R0,#0x60]
152926:  STR             R0, [SP,#0x38+var_30]
152928:  ADD             R0, SP, #0x38+var_30
15292A:  STRH            R6, [R1]
15292C:  STR.W           R8, [SP,#0x38+var_24]
152930:  STR             R0, [SP,#0x38+var_28]
152932:  ADD             R0, SP, #0x38+var_28
152934:  ADD             R1, SP, #0x38+var_24
152936:  MOV             R2, R8
152938:  STRD.W          R1, R0, [SP,#0x38+var_38]
15293C:  ADD             R0, SP, #0x38+var_20
15293E:  MOV             R1, R4
152940:  BL              sub_153DA0
152944:  LDR             R1, [SP,#0x38+var_20]
152946:  LDR             R0, [SP,#0x38+var_30]
152948:  LDR             R6, [R1,#0xC]
15294A:  MOVS            R1, #0
15294C:  STR             R1, [SP,#0x38+var_30]
15294E:  CBZ             R0, loc_152956
152950:  LDR             R1, [R0]
152952:  LDR             R1, [R1,#4]
152954:  BLX             R1
152956:  MOV             R0, R6
152958:  ADD             SP, SP, #0x20 ; ' '
15295A:  POP.W           {R8,R9,R11}
15295E:  POP             {R4-R7,PC}
