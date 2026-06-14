; =========================================================
; Game Engine Function: deflateEnd
; Address            : 0x20AC94 - 0x20AD08
; =========================================================

20AC94:  PUSH            {R4,R5,R7,LR}
20AC96:  ADD             R7, SP, #8
20AC98:  MOV             R4, R0
20AC9A:  CMP             R4, #0
20AC9C:  ITT NE
20AC9E:  LDRNE           R1, [R4,#0x1C]
20ACA0:  CMPNE           R1, #0
20ACA2:  BEQ             loc_20AD02
20ACA4:  LDR             R5, [R1,#4]
20ACA6:  CMP             R5, #0x2A ; '*'
20ACA8:  ITT NE
20ACAA:  MOVWNE          R0, #0x29A
20ACAE:  CMPNE           R5, R0
20ACB0:  BEQ             loc_20ACB6
20ACB2:  CMP             R5, #0x71 ; 'q'
20ACB4:  BNE             loc_20AD02
20ACB6:  LDR             R2, [R1,#8]
20ACB8:  CBZ             R2, loc_20ACC4
20ACBA:  LDRD.W          R3, R0, [R4,#0x24]
20ACBE:  MOV             R1, R2
20ACC0:  BLX             R3
20ACC2:  LDR             R1, [R4,#0x1C]
20ACC4:  LDR             R2, [R1,#0x3C]
20ACC6:  CBZ             R2, loc_20ACD2
20ACC8:  LDRD.W          R3, R0, [R4,#0x24]
20ACCC:  MOV             R1, R2
20ACCE:  BLX             R3
20ACD0:  LDR             R1, [R4,#0x1C]
20ACD2:  LDR             R2, [R1,#0x38]
20ACD4:  CBZ             R2, loc_20ACE0
20ACD6:  LDRD.W          R3, R0, [R4,#0x24]
20ACDA:  MOV             R1, R2
20ACDC:  BLX             R3
20ACDE:  LDR             R1, [R4,#0x1C]
20ACE0:  LDR             R2, [R1,#0x30]
20ACE2:  CBZ             R2, loc_20ACEE
20ACE4:  LDRD.W          R3, R0, [R4,#0x24]
20ACE8:  MOV             R1, R2
20ACEA:  BLX             R3
20ACEC:  LDR             R1, [R4,#0x1C]
20ACEE:  LDRD.W          R2, R0, [R4,#0x24]
20ACF2:  BLX             R2
20ACF4:  MOVS            R0, #0
20ACF6:  CMP             R5, #0x71 ; 'q'
20ACF8:  STR             R0, [R4,#0x1C]
20ACFA:  IT EQ
20ACFC:  MOVEQ           R0, #0xFFFFFFFD
20AD00:  POP             {R4,R5,R7,PC}
20AD02:  MOV             R0, #0xFFFFFFFE
20AD06:  POP             {R4,R5,R7,PC}
