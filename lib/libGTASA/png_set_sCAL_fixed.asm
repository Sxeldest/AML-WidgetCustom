; =========================================================
; Game Engine Function: png_set_sCAL_fixed
; Address            : 0x2021A0 - 0x202242
; =========================================================

2021A0:  PUSH            {R4-R7,LR}
2021A2:  ADD             R7, SP, #0xC
2021A4:  PUSH.W          {R8-R10}
2021A8:  SUB             SP, SP, #0x30
2021AA:  MOV             R4, R0
2021AC:  LDR             R0, =(__stack_chk_guard_ptr - 0x2021B6)
2021AE:  LDR             R5, [R7,#arg_0]
2021B0:  MOV             R8, R2
2021B2:  ADD             R0, PC; __stack_chk_guard_ptr
2021B4:  MOV             R6, R1
2021B6:  CMP             R3, #0
2021B8:  LDR             R0, [R0]; __stack_chk_guard
2021BA:  LDR             R0, [R0]
2021BC:  STR             R0, [SP,#0x48+var_1C]
2021BE:  BLE             loc_20220C
2021C0:  CMP             R5, #0
2021C2:  BLE             loc_202220
2021C4:  SUB.W           R9, R7, #-var_2E
2021C8:  MOV             R0, R4
2021CA:  MOVS            R2, #0x12
2021CC:  MOV             R1, R9
2021CE:  BLX             j_png_ascii_from_fixed
2021D2:  ADD.W           R10, SP, #0x48+var_40
2021D6:  MOV             R0, R4
2021D8:  MOVS            R2, #0x12
2021DA:  MOV             R3, R5
2021DC:  MOV             R1, R10
2021DE:  BLX             j_png_ascii_from_fixed
2021E2:  MOV             R0, R4
2021E4:  MOV             R1, R6
2021E6:  MOV             R2, R8
2021E8:  MOV             R3, R9
2021EA:  STR.W           R10, [SP,#0x48+var_48]
2021EE:  BLX             j_png_set_sCAL_s
2021F2:  LDR             R0, =(__stack_chk_guard_ptr - 0x2021FA)
2021F4:  LDR             R1, [SP,#0x48+var_1C]
2021F6:  ADD             R0, PC; __stack_chk_guard_ptr
2021F8:  LDR             R0, [R0]; __stack_chk_guard
2021FA:  LDR             R0, [R0]
2021FC:  SUBS            R0, R0, R1
2021FE:  ITTT EQ
202200:  ADDEQ           SP, SP, #0x30 ; '0'
202202:  POPEQ.W         {R8-R10}
202206:  POPEQ           {R4-R7,PC}
202208:  BLX             __stack_chk_fail
20220C:  LDR             R0, =(__stack_chk_guard_ptr - 0x202214)
20220E:  LDR             R1, [SP,#0x48+var_1C]
202210:  ADD             R0, PC; __stack_chk_guard_ptr
202212:  LDR             R0, [R0]; __stack_chk_guard
202214:  LDR             R0, [R0]
202216:  SUBS            R0, R0, R1
202218:  BNE             loc_202208
20221A:  LDR             R1, =(aInvalidScalWid_0 - 0x202220); "Invalid sCAL width ignored"
20221C:  ADD             R1, PC; "Invalid sCAL width ignored"
20221E:  B               loc_202232
202220:  LDR             R0, =(__stack_chk_guard_ptr - 0x202228)
202222:  LDR             R1, [SP,#0x48+var_1C]
202224:  ADD             R0, PC; __stack_chk_guard_ptr
202226:  LDR             R0, [R0]; __stack_chk_guard
202228:  LDR             R0, [R0]
20222A:  SUBS            R0, R0, R1
20222C:  BNE             loc_202208
20222E:  LDR             R1, =(aInvalidScalHei_0 - 0x202234); "Invalid sCAL height ignored"
202230:  ADD             R1, PC; "Invalid sCAL height ignored"
202232:  MOV             R0, R4
202234:  ADD             SP, SP, #0x30 ; '0'
202236:  POP.W           {R8-R10}
20223A:  POP.W           {R4-R7,LR}
20223E:  B.W             j_j_png_warning
