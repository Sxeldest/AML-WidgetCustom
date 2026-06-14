; =========================================================
; Game Engine Function: sub_23BBD8
; Address            : 0x23BBD8 - 0x23BCEE
; =========================================================

23BBD8:  PUSH            {R4-R7,LR}
23BBDA:  ADD             R7, SP, #0xC
23BBDC:  PUSH.W          {R8}
23BBE0:  SUB.W           SP, SP, #0x408
23BBE4:  MOV             R4, R0
23BBE6:  LDR             R0, =(__stack_chk_guard_ptr - 0x23BBEE)
23BBE8:  MOV             R5, R1
23BBEA:  ADD             R0, PC; __stack_chk_guard_ptr
23BBEC:  LDR             R0, [R0]; __stack_chk_guard
23BBEE:  LDR             R0, [R0]
23BBF0:  STR.W           R0, [R7,#var_14]
23BBF4:  MOVW            R0, #0xB2F4
23BBF8:  LDR             R0, [R4,R0]
23BBFA:  TST.W           R0, #4
23BBFE:  BNE             loc_23BC3C
23BC00:  CMP             R5, #0
23BC02:  BLT             loc_23BC86
23BC04:  MOVW            R0, #0xB2E0
23BC08:  ADDS            R6, R4, R0
23BC0A:  ADD.W           R8, SP, #0x418+var_414
23BC0E:  CMP             R5, #1
23BC10:  BLT             loc_23BC32
23BC12:  LDR             R0, [R6]
23BC14:  CMP.W           R5, #0x400
23BC18:  MOV             R2, R5
23BC1A:  MOV             R1, R8
23BC1C:  LDR             R3, [R0,#8]
23BC1E:  IT GE
23BC20:  MOVGE.W         R2, #0x400
23BC24:  MOV             R0, R4
23BC26:  BLX             R3
23BC28:  CMP             R0, #0
23BC2A:  BLT             loc_23BCA2
23BC2C:  SUB.W           R5, R5, R0
23BC30:  BNE             loc_23BC0E
23BC32:  LDR             R0, [R6]
23BC34:  LDR             R1, [R0,#0x24]
23BC36:  MOV             R0, R4
23BC38:  BLX             R1
23BC3A:  B               loc_23BCA2
23BC3C:  LSLS            R0, R0, #0x19
23BC3E:  BMI             loc_23BC4E
23BC40:  MOVW            R0, #0xB2EC
23BC44:  MOVW            R1, #0xB318
23BC48:  LDR             R0, [R4,R0]
23BC4A:  LDR             R3, [R4,R1]
23BC4C:  B               loc_23BC5C
23BC4E:  MOVW            R0, #0xB30C
23BC52:  LDR             R3, [R4,R0]
23BC54:  CBZ             R3, loc_23BC6E
23BC56:  MOVW            R0, #0xB2F0
23BC5A:  LDR             R0, [R4,R0]
23BC5C:  MOV             R1, R5
23BC5E:  MOVS            R2, #1
23BC60:  BLX             R3
23BC62:  CMP             R0, #0
23BC64:  BLT             loc_23BC6E
23BC66:  MOVW            R1, #0xB2E8
23BC6A:  STR             R0, [R4,R1]
23BC6C:  B               loc_23BC7A
23BC6E:  MOVW            R0, #0xB468
23BC72:  MOVS            R1, #0x28 ; '('
23BC74:  STR             R1, [R4,R0]
23BC76:  MOV.W           R0, #0xFFFFFFFF
23BC7A:  CMP.W           R0, #0xFFFFFFFF
23BC7E:  IT LE
23BC80:  MOVLE.W         R0, #0xFFFFFFFF
23BC84:  B               loc_23BCA2
23BC86:  LSLS            R0, R0, #0x1C
23BC88:  BPL             loc_23BC96
23BC8A:  MOVW            R1, #0xB32C
23BC8E:  NEGS            R2, R5
23BC90:  LDR             R0, [R4,R1]
23BC92:  CMP             R0, R2
23BC94:  BGE             loc_23BCC0
23BC96:  MOVW            R0, #0xB468
23BC9A:  MOVS            R1, #0x17
23BC9C:  STR             R1, [R4,R0]
23BC9E:  MOV.W           R0, #0xFFFFFFFF
23BCA2:  LDR             R1, =(__stack_chk_guard_ptr - 0x23BCAC)
23BCA4:  LDR.W           R2, [R7,#var_14]
23BCA8:  ADD             R1, PC; __stack_chk_guard_ptr
23BCAA:  LDR             R1, [R1]; __stack_chk_guard
23BCAC:  LDR             R1, [R1]
23BCAE:  SUBS            R1, R1, R2
23BCB0:  ITTT EQ
23BCB2:  ADDEQ.W         SP, SP, #0x408
23BCB6:  POPEQ.W         {R8}
23BCBA:  POPEQ           {R4-R7,PC}
23BCBC:  BLX             __stack_chk_fail
23BCC0:  ADD             R1, R4
23BCC2:  ADD             R0, R5
23BCC4:  STR             R0, [R1]
23BCC6:  MOVW            R0, #0xB2E0
23BCCA:  LDR             R0, [R4,R0]
23BCCC:  LDR             R1, [R0,#0x24]
23BCCE:  LDR             R0, =(__stack_chk_guard_ptr - 0x23BCD8)
23BCD0:  LDR.W           R2, [R7,#var_14]
23BCD4:  ADD             R0, PC; __stack_chk_guard_ptr
23BCD6:  LDR             R0, [R0]; __stack_chk_guard
23BCD8:  LDR             R0, [R0]
23BCDA:  SUBS            R0, R0, R2
23BCDC:  BNE             loc_23BCBC
23BCDE:  MOV             R0, R4
23BCE0:  ADD.W           SP, SP, #0x408
23BCE4:  POP.W           {R8}
23BCE8:  POP.W           {R4-R7,LR}
23BCEC:  BX              R1
