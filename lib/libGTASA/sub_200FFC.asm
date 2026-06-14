; =========================================================
; Game Engine Function: sub_200FFC
; Address            : 0x200FFC - 0x201104
; =========================================================

200FFC:  PUSH            {R4-R7,LR}
200FFE:  ADD             R7, SP, #0xC
201000:  PUSH.W          {R8-R11}
201004:  SUB.W           SP, SP, #0x400
201008:  SUB             SP, SP, #4
20100A:  MOV             R4, R0
20100C:  LDR             R0, =(__stack_chk_guard_ptr - 0x201014)
20100E:  MOV             R8, R3
201010:  ADD             R0, PC; __stack_chk_guard_ptr
201012:  LDR             R0, [R0]; __stack_chk_guard
201014:  LDR             R0, [R0]
201016:  STR.W           R0, [R7,#var_20]
20101A:  LDR.W           R0, [R4,#0x140]
20101E:  CMP             R0, R1
201020:  BNE             loc_201050
201022:  LDRD.W          R10, R0, [R7,#arg_0]
201026:  ADD.W           R6, R4, #0x144
20102A:  LDR.W           R1, [R8]
20102E:  MOVS            R3, #0
201030:  LDR             R0, [R0]
201032:  CMP.W           R10, #0
201036:  STR.W           R3, [R4,#0x154]
20103A:  STRD.W          R2, R3, [R4,#0x144]
20103E:  BEQ             loc_20105E
201040:  STR.W           R10, [R4,#0x150]
201044:  MOV             R11, SP
201046:  STR.W           R1, [R4,#0x148]
20104A:  MOV.W           R1, #0xFFFFFFFF
20104E:  B               loc_201072
201050:  LDR             R0, =(aZstreamUnclaim - 0x20105A); "zstream unclaimed"
201052:  MOV             R5, #0xFFFFFFFE
201056:  ADD             R0, PC; "zstream unclaimed"
201058:  STR.W           R0, [R4,#0x15C]
20105C:  B               loc_2010E0
20105E:  MOV             R11, SP
201060:  STR.W           R11, [R4,#0x150]
201064:  STR.W           R1, [R4,#0x148]
201068:  MOV.W           R1, #0x400
20106C:  B               loc_201072
20106E:  MOV.W           R1, #0xFFFFFFFF
201072:  CMP             R0, R1
201074:  IT CC
201076:  MOVCC           R1, R0
201078:  SUBS.W          R9, R0, R1
20107C:  STR.W           R1, [R4,#0x154]
201080:  MOV.W           R1, #0
201084:  MOV             R0, R6
201086:  IT EQ
201088:  MOVEQ           R1, #4
20108A:  BLX             j_inflate
20108E:  MOV             R5, R0
201090:  CBNZ            R5, loc_2010A4
201092:  LDR.W           R0, [R4,#0x154]
201096:  CMP.W           R10, #0
20109A:  ADD             R0, R9
20109C:  BNE             loc_20106E
20109E:  STR.W           R11, [R4,#0x150]
2010A2:  B               loc_201068
2010A4:  CMP.W           R10, #0
2010A8:  ITT EQ
2010AA:  MOVEQ           R0, #0
2010AC:  STREQ.W         R0, [R4,#0x150]
2010B0:  LDR.W           R1, [R4,#0x154]
2010B4:  LDR.W           R0, [R4,#0x148]
2010B8:  ADDS.W          R1, R1, R9
2010BC:  ITTTT NE
2010BE:  LDRNE           R2, [R7,#arg_4]
2010C0:  MOVNE           R3, R2
2010C2:  LDRNE           R2, [R3]
2010C4:  SUBNE           R1, R2, R1
2010C6:  IT NE
2010C8:  STRNE           R1, [R3]
2010CA:  CMP             R0, #0
2010CC:  ITTT NE
2010CE:  LDRNE.W         R1, [R8]
2010D2:  SUBNE           R0, R1, R0
2010D4:  STRNE.W         R0, [R8]
2010D8:  MOV             R0, R4
2010DA:  MOV             R1, R5
2010DC:  BLX             j_png_zstream_error
2010E0:  LDR             R0, =(__stack_chk_guard_ptr - 0x2010EA)
2010E2:  LDR.W           R1, [R7,#var_20]
2010E6:  ADD             R0, PC; __stack_chk_guard_ptr
2010E8:  LDR             R0, [R0]; __stack_chk_guard
2010EA:  LDR             R0, [R0]
2010EC:  SUBS            R0, R0, R1
2010EE:  ITTTT EQ
2010F0:  MOVEQ           R0, R5
2010F2:  ADDEQ.W         SP, SP, #0x400
2010F6:  ADDEQ           SP, SP, #4
2010F8:  POPEQ.W         {R8-R11}
2010FC:  IT EQ
2010FE:  POPEQ           {R4-R7,PC}
201100:  BLX             __stack_chk_fail
