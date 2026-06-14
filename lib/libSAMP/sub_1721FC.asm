; =========================================================
; Game Engine Function: sub_1721FC
; Address            : 0x1721FC - 0x17226C
; =========================================================

1721FC:  PUSH            {R4-R7,LR}
1721FE:  ADD             R7, SP, #0xC
172200:  PUSH.W          {R8,R9,R11}
172204:  MOV             R4, R0
172206:  LDR             R0, [R0,#4]
172208:  CMP             R0, R1
17220A:  BGE             loc_172266
17220C:  LDR             R0, =(dword_381B58 - 0x172214)
17220E:  MOV             R5, R1
172210:  ADD             R0, PC; dword_381B58
172212:  MOV             R8, R0
172214:  LDR             R0, [R0]
172216:  CBZ             R0, loc_172222
172218:  LDR.W           R1, [R0,#0x370]
17221C:  ADDS            R1, #1
17221E:  STR.W           R1, [R0,#0x370]
172222:  LDR             R1, =(dword_381B60 - 0x17222A)
172224:  LDR             R0, =(off_2390AC - 0x17222C)
172226:  ADD             R1, PC; dword_381B60
172228:  ADD             R0, PC; off_2390AC
17222A:  MOV             R9, R1
17222C:  LDR             R1, [R1]
17222E:  LDR             R2, [R0]; sub_171190
172230:  MOV             R0, R5
172232:  BLX             R2; sub_171190
172234:  LDR             R1, [R4,#8]; src
172236:  MOV             R6, R0
172238:  CBZ             R1, loc_172262
17223A:  LDR             R2, [R4]; n
17223C:  MOV             R0, R6; dest
17223E:  BLX             j_memcpy
172242:  LDR             R0, [R4,#8]
172244:  CBZ             R0, loc_172256
172246:  LDR.W           R1, [R8]
17224A:  CBZ             R1, loc_172256
17224C:  LDR.W           R2, [R1,#0x370]
172250:  SUBS            R2, #1
172252:  STR.W           R2, [R1,#0x370]
172256:  LDR             R2, =(off_2390B0 - 0x172260)
172258:  LDR.W           R1, [R9]
17225C:  ADD             R2, PC; off_2390B0
17225E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
172260:  BLX             R2; j_opus_decoder_destroy_0
172262:  STRD.W          R5, R6, [R4,#4]
172266:  POP.W           {R8,R9,R11}
17226A:  POP             {R4-R7,PC}
